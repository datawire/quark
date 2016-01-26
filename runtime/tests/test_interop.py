import pytest
import py
import os
import subprocess
import time
import threading
import textwrap
import contextlib
import socket
import errno
import itertools

try:  # py3
    from shlex import quote
except ImportError:  # py2
    from pipes import quote

def report(what, out, ok):
    print "\n".join("    %s:  %s" % (what, l) for l in out.split("\n"))
def command(*cmd, **kwargs):
    cwd = kwargs.pop('cwd', py.path.local())
    env = kwargs.pop('env', {})
    assert not kwargs
    def str_env():
            return env and " ".join(
                ['env'] + ["%s=%s"%(k,quote(v)) for k,v in sorted(env.items())]
                ) or ""
    def expand_env():
        return dict(itertools.chain(os.environ.iteritems(), env.iteritems()))
    print "command :   cd", cwd or ".", "&&", str_env(), " ".join(map(quote,cmd))
    with cwd.as_cwd():
        p = subprocess.Popen(cmd, env=expand_env(),
                             stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = p.communicate()
    ok = not p.wait()
    report("out", stdout, ok)
    report("err", stderr, ok)
    if not ok:
        pytest.fail("Command failed %s" % " ".join(cmd))

class QuarkCompile(object):
    def __init__(self, tmpdir, path):
        self.outdir = "generated-sources"
        self.tmpdir = tmpdir
        self.path = path
        with path.open() as f:
            self.version = f.read()\
              .split("@version(",1)[1]\
              .split(")",1)[0]\
              .strip("'")\
              .strip('"')
        self.compiled = False
        self.integrations = dict((i, i(compile=self)) for i in Integration.registry)

    def compile(self):
        if self.compiled:
            return
        self.process_includes()
        print "Need to compile", self.processed
        self.quark("install", "--skip-doc",
                "--output", self.outdir,
                self.processed.strpath)
        self.compiled = True

    def quark(self, *args):
        command(*self.quark_command(args),
                cwd = self.tmpdir,
                env = self.tool_env
                )

    def quark_command(self, args):
        return ["quark"] + list(args)

    @property
    def tool_env(self):
        env = dict()
        for integration in self.integrations.values():
            for tool, override in integration.get_tool_overrides():
                if isinstance(override, (list, tuple)):
                    override = " ".join(override)
                env["QUARK_%s_COMMAND" % tool.upper()] = override
        env["TMPDIR"] = self.tmpdir.ensure("quark-tmp", dir=True).strpath
        return env

    def process_includes(self):
        loop = []
        def include_expander(path, action, prefix=""):
            if path in loop:
                pytest.fail("include loop" + " -> ".join(map(str,loop)));
            else:
                print "%s%s: %s" % (prefix, action, path)
                loop.append(path)
            for line, row in enumerate(path.readlines(),1):
                if row.startswith("////include "):
                    row = row.split()
                    if len(row) != 2:
                        pytest.fail("%s:%s expected just filename after include"%(path, line))
                    include_path = path.new(basename=row[1])
                    assert include_path.check()
                    include = include_expander(include_path,
                                                "including",
                                                prefix + "  ")
                    yield "//begin included %s\n" % include_path
                    for included in include:
                        yield included
                    yield "//end included %s\n" % include_path
                else:
                    yield row
        processed = self.path.new(dirname=self.tmpdir)
        processed.write("".join(include_expander(self.path, "processing")))
        self.processed = processed.new(basename="interop.q")
        self.processed.mksymlinkto(processed)

    def __repr__(self):
        return "%scompiled %s in %s" % (
            (self.compiled and "Already " or "Un-"),
            self.path, self.tmpdir)

class IntegrationMeta(type):
    def __init__(cls, name, bases, dct):
        if not hasattr(cls, 'registry'):
            cls.registry = []
        elif name.startswith("Abstract"):
            pass
        elif getattr(cls, 'DISABLED', False):
            print "Integration", name, "is disabled."
            pass
        else:
            cls.registry.append(cls)
            cls.name = name
        super(IntegrationMeta, cls).__init__(name, bases, dct)

class BackgroundProcess(object):
    def __init__(self, cwd, cmd):
        self.cwd = cwd
        self.cmd = cmd
        self.stdout = None
        self.stderr = None
        self.p = None
        self.w = None
        self.failed = False

    def start(self):
        print "background process:  cd ", self.cwd, "&&", " ".join(map(quote,self.cmd))
        with self.cwd.as_cwd():
            self.p = subprocess.Popen(self.cmd,
                                stdout=subprocess.PIPE,
                                stderr=subprocess.PIPE)
        def comm():
            o, e = self.p.communicate()
            self.stdout, self.stderr = o, e
            self.failed = (self.p.returncode != 0)

        self.w = threading.Thread(target=comm)
        self.w.daemon = True
        self.w.start()

    def stop(self, timeout=0.1):
        while timeout > 0 and self.p.poll() is None:
            time.sleep(0.1)
            timeout -= 0.1
        if self.p.poll() is None:
            self.p.terminate()
            time.sleep(0.1)
        if self.p.poll() is None:
            self.p.kill()
            time.sleep(0.1)
        ret = self.p.wait()
        self.w.join()
        print "--- output of", self.cmd, ""
        print self.stdout
        print "--- stderr of", self.cmd
        print self.stderr, "\n--- ----"
        return ret

    @contextlib.contextmanager
    def wait(self, timeout=0.1):
        self.start()
        yield
        self.stop(timeout)


class Integration(object):
    __metaclass__ = IntegrationMeta
    def __init__(self, compile):
        self.tmpdir = compile.tmpdir
        self.compile = compile
        self.isolated = False
        self.built = False

    def __str__(self):
        return self.name + "@" + str(id(self))

    def check_build(self):
        if self.built:
            return
        self.check_isolate()
        self.compile.compile()
        print "need to build integration", self
        self.build()
        self.built = True

    def check_isolate(self):
        if self.isolated:
            return
        self.rundir.ensure(dir=1)
        self.isolate()

    def get_tool_overrides(self):
        self.check_isolate()
        return self.tool_overrides

    def __repr__(self):
        return "%s %s integration of %s" % ((self.built and "Built" or "Unbuilt"),
                                            self.name, self.compile)

    @property
    def rundir(self):
        return self.tmpdir / "run" / self.name

    def client(self, port):
        self.check_build()
        return BackgroundProcess(cwd=self.rundir,
                                 cmd=self.invoke_client(port))

    def server(self, port):
        self.check_build()
        return BackgroundProcess(cwd=self.rundir,
                                 cmd=self.invoke_server(port))

    @property
    def runtimes(self):
        return py.path.local(__file__).dirpath("..")

    def isolate(self):
        pytest.fail("Need to implement isolate")

    def build(self):
        pytest.fail("Need to implement build")

    def invoke_server(self, port):
        pytest.fail("Need to implement invoke_server")

    def invoke_client(self, port):
        pytest.fail("Need to implement invoke_client")

    @property
    def tool_overrides(self):
        pytest.fail("Need to implement tool_overrides")

class Node(Integration):
    def __init__(self, **kwargs):
        super(Node, self).__init__(**kwargs)

    def isolate(self):
        self.npm_prefix.ensure("node_modules", dir=True)
        self.npm_install(self.js_core_package)
        self.npm_install(self.js_node_package)

    def build(self):
        self.rundir.join("package.json").write(textwrap.dedent("""\
        {
          "name" : "interop-harness"
        }
        """))
        self.rundir.join("run-client.js").write(textwrap.dedent("""\
            "use strict";
            var interop = require("interop").interop;
            var process = require("process");
            console.log("Node client harness is started")
            new interop.Entrypoint().client(process.argv[2]);
        """))
        self.rundir.join("run-server.js").write(textwrap.dedent("""\
            "use strict";
            var interop = require("interop").interop;
            var process = require("process");
            console.log("Node server harness is started")
            new interop.Entrypoint().server(process.argv[2]);
        """))

    def npm_install(self, package):
        command(*self.npm_command("install", package.strpath))

    def npm_command(self, *args):
        return ["npm", "--prefix", self.npm_prefix.strpath] + list(args)

    @property
    def npm_prefix(self):
        return self.compile.tmpdir

    @property
    def js_core_package(self):
        return self.runtimes / "js-core"

    @property
    def js_node_package(self):
        return self.runtimes / "js-node"

    @property
    def tool_overrides(self):
        return [("npm", self.npm_command())]

    @property
    def js_node_package_name(self):
        import json
        package = json.loads(self.js_node_package.join("package.json").read())
        return package["name"]

    def invoke_server(self, port):
        return ["node", "run-server.js", str(port)]

    def invoke_client(self, port):
        return ["node", "run-client.js", str(port)]

class AbstractPython(Integration):
    def __init__(self, **kwargs):
        super(AbstractPython, self).__init__(**kwargs)

    def isolate(self):
        command("virtualenv", "x", cwd=self.rundir)
        self.pip_install(self.py_core_package)

    @property
    def pip(self):
        return self.rundir / "x" / "bin" / "pip"

    @property
    def python(self):
        return self.rundir / "x" / "bin" / "python"

    @property
    def tool_overrides(self):
        return [("python", self.python.strpath),
                ("pip", self.pip.strpath)]

    def pip_install(self, package):
        assert package.check()
        command(self.pip.strpath, "install", package.strpath, cwd=self.rundir)

    @property
    def py_core_package(self):
        return self.runtimes / "python-core"

    def invoke_server(self, port):
        return [self.python.strpath, "run-server.py", str(port)]

    def invoke_client(self, port):
        return [self.python.strpath, "run-client.py", str(port)]

class TwistedPython(AbstractPython):
    DISABLED = True
    def __init__(self, **kwargs):
        super(TwistedPython, self).__init__(**kwargs)

    def isolate(self):
        super(TwistedPython,self).isolate()
        self.pip_install(self.py_twisted_package)

    def build(self):
        self.rundir.join("run-client.py").write(textwrap.dedent("""\
            import interop
            import sys
            import twisted
            print "Twisted client harness is started"
            interop.Entrypoint().client(int(sys.argv[1]))
            twisted.reactor.run()
        """))
        self.rundir.join("run-server.py").write(textwrap.dedent("""\
            import interop
            import sys
            import twisted
            print "Twisted server harness is started"
            interop.Entrypoint().server(int(sys.argv[1]))
            twisted.reactor.run()
        """))

    @property
    def py_twisted_package(self):
        return self.runtimes / "twisted"

class ThreadedPython(AbstractPython):
    def __init__(self, **kwargs):
        super(ThreadedPython, self).__init__(**kwargs)

    def isolate(self):
        super(ThreadedPython,self).isolate()
        self.pip_install(self.py_threaded_package)

    def build(self):
        self.rundir.join("run-client.py").write(textwrap.dedent("""\
            import interop
            import sys
            print "Threaded client harness is started"
            interop.Entrypoint().client(int(sys.argv[1]))
        """))
        self.rundir.join("run-server.py").write(textwrap.dedent("""\
            import interop
            import sys
            print "Threaded server harness is started"
            interop.Entrypoint().server(int(sys.argv[1]))
        """))

    @property
    def py_threaded_package(self):
        return self.runtimes / "python-threaded"

class Netty(Integration):
    def __init__(self, **kwargs):
        super(Netty, self).__init__(**kwargs)

    @property
    def pom_context(self):
        return dict(
            quark_netty_version = self.quark_netty_version,
            quark_netty_artifact = self.quark_netty_artifact,
            m2_repo = self.m2_repo.strpath,
            compile_version = self.compile.version,
            )

    def isolate(self):
        self.m2_repo.ensure(dir=1)
        self.settings_xml.write(textwrap.dedent("""
            <settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                                  http://maven.apache.org/xsd/settings-1.0.0.xsd">
              <localRepository>%(m2_repo)s</localRepository>
              <profiles>
                <profile>
                  <id>integration_test</id>
                  <activation>
                    <activeByDefault>true</activeByDefault>
                  </activation>
                  <repositories>
                    <repository>
                      <id>user local repo</id>
                      <url>file://${user.home}/.m2/repository</url>
                    </repository>
                  </repositories>
                  <pluginRepositories>
                    <pluginRepository>
                      <id>user local repo</id>
                      <url>file://${user.home}/.m2/repository</url>
                    </pluginRepository>
                  </pluginRepositories>
                </profile>
              </profiles>
            </settings>
        """ % self.pom_context)
        )

    def build(self):
        self.rundir.join("pom.xml").write(textwrap.dedent("""\
            <?xml version="1.0" encoding="UTF-8"?>
            <project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
              <modelVersion>4.0.0</modelVersion>
              <groupId>io.datawire.quark.interop-test</groupId>
              <artifactId>interop-harness</artifactId>
              <version>0.0.1-SNAPSHOT</version>
              <name>interop harness</name>
              <build>
                <plugins>
                  <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-compiler-plugin</artifactId>
                    <version>3.3</version>
                    <configuration>
                      <source>1.7</source>
                      <target>1.7</target>
                    </configuration>
                  </plugin>
                </plugins>
              </build>
              <dependencies>
                <dependency>
                  <groupId>io.datawire.quark</groupId>
                  <artifactId>%(quark_netty_artifact)s</artifactId>
                  <version>%(quark_netty_version)s</version>
                  <scope>compile</scope>
                </dependency>
                <dependency>
                  <groupId>interop</groupId>
                  <artifactId>interop</artifactId>
                  <version>%(compile_version)s</version>
                </dependency>
              </dependencies>
            </project>
        """ % self.pom_context)
        )
        harness = self.rundir / "src" / "main" / "java" / "interop"/ "harness"
        harness.ensure(dir=1)
        harness.join("Client.java").write(textwrap.dedent("""\
            package interop.harness;
            public class Client {
                public static void main(String[] args) {
                    System.out.println("Netty client harness is started");
                    new interop.Entrypoint().client(Integer.parseInt(args[0]));
                }
            }
        """)
        )
        harness.join("Server.java").write(textwrap.dedent("""\
            package interop.harness;
            public class Server {
                public static void main(String[] args) {
                    System.out.println("Netty server harness is started");
                    new interop.Entrypoint().server(Integer.parseInt(args[0]));
                }
            }
        """)
        )
        harness.join("Warmup.java").write(textwrap.dedent("""\
            package interop.harness;
            public class Warmup {
                public static void main(String[] args) {
                    System.out.println("Netty warmup");
                    System.exit(0);
                }
            }
        """)
        )
        self.mvn("compile")
        self.mvn("exec:java",
                "-Dexec.mainClass=interop.harness.Warmup")

    def mvn(self, *args):
        command(*self.mvn_command(*args), cwd=self.rundir)

    def mvn_command(self, *args):
        return ["mvn", "--settings", self.settings_xml.strpath] + list(args)

    @property
    def tool_overrides(self):
        return [("mvn", self.mvn_command())]

    @property
    def settings_xml(self):
        return self.rundir / "settings.xml"

    @property
    def quark_netty_version(self):
        pom = self.quark_netty_package.join("pom.xml").read()
        version = pom.split("<version>",1)[1].split("</version>",1)[0]
        return version

    @property
    def quark_netty_artifact(self):
        pom = self.quark_netty_package.join("pom.xml").read()
        artifactId = pom.split("<artifactId>",1)[1].split("</artifactId>",1)[0]
        return artifactId

    @property
    def quark_netty_package(self):
        return self.runtimes / "netty"

    @property
    def m2_repo(self):
        return self.rundir / "m2repo"

    def invoke_client(self, port):
        return self.mvn_command("exec:java",
                "-Dexec.mainClass=interop.harness.Client",
                "-Dexec.args=%s" % port,
                "-q",
                )

    def invoke_server(self, port):
        return self.mvn_command("exec:java",
                "-Dexec.mainClass=interop.harness.Server",
                "-Dexec.args=%s" % port,
                "-q",
                )


class CompileCache(object):
    def __init__(self):
        self.compiles = {}

    def get(self, path, tmpdir):
        if path not in self.compiles:
            self.compiles[path] = QuarkCompile(tmpdir, path)
        return self.compiles[path]

class IntegrationCache(object):
    def __init__(self): pass

    def get(self, cls, compile):
        return compile.integrations[cls]

class PortGenerator(object):
    def __init__(self):
        self.port = 9876

    def next(self):
        while not self.is_port_empty(self.port):
            self.port += 1
        return Port(self.port)

    @staticmethod
    def is_port_empty(port):
        with contextlib.closing(socket.socket()) as s:
            try:
                s.connect(("127.0.0.1", port))
            except socket.error, e:
                if e.errno == errno.ECONNREFUSED:
                    return True
        return False

class Port(object):
    def __init__(self, port):
        self.port = port

    def wait_server_start(self, server, timeout=10, interval=0.05):
        start = time.time()
        for a in range(int(timeout/interval)):
            if server.failed:
                break
            with contextlib.closing(socket.socket()) as s:
                try:
                    s.connect(("127.0.0.1", self.port))
                    print "server started up in %dmsec" % (
                        1000 * (time.time() - start))
                    return
                except socket.error, e:
                    if e.errno == errno.ECONNREFUSED:
                        time.sleep(interval)
                        continue
                    raise
        if server.failed:
            pytest.fail("server process failed on port %s after %.2fs" %
                        (self.port, (time.time() - start)))
        else:
            pytest.fail("server did not start up on port %s after %.2fs" %
                        (self.port, (time.time() - start)))

    def __str__(self):
        return str(self.port)


@pytest.fixture(scope='module')
def port_generator():
    return PortGenerator()

@pytest.fixture
def port(port_generator):
    return port_generator.next()

paths = list(py.path.local(__file__)
            .new(basename="interop")
            .listdir(fil=lambda f: f.ext == '.q'))
@pytest.fixture(params=paths, ids=[p.basename for p in paths])
def path(request):
    return request.param

@pytest.fixture(scope='module')
def compile_cache():
    return CompileCache()

@pytest.fixture
def compile(path, tmpdir, compile_cache):
    return compile_cache.get(path, tmpdir)

@pytest.fixture(scope='module')
def integration_cache():
    return IntegrationCache()

def integration_kwargs(tag):
    return dict(params=Integration.registry,
                ids=["%s-%s" % (tag, i.__name__) for i in Integration.registry],
                )

@pytest.fixture(**integration_kwargs("c"))
def client_integration(request, compile):
    return compile.integrations.get(request.param)

@pytest.fixture(**integration_kwargs("s"))
def server_integration(request, compile):
    return compile.integrations.get(request.param)

def test_interop(client_integration, server_integration, port):
    client = client_integration.client(port)
    server = server_integration.server(port)
    with server.wait(0.2):
        port.wait_server_start(server)
        with client.wait(1):
            print "server and client started"
            time.sleep(1)
    print "server and client stopped"
    c = client.stdout
    assert "FAIL" not in c
    # assert "onHTTPInit" in c
    # assert "onHTTPFinal" in c
    # assert "onHTTPError" not in c
    s = server.stdout
    # assert "Hello Registered on" in s
    # assert "Hello Trouble" not in s
