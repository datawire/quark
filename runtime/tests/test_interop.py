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
try:  # py3
    from shlex import quote
except ImportError:  # py2
    from pipes import quote

def command(*cmd, **kwargs):
    cwd = kwargs.pop('cwd', py.path.local())
    assert not kwargs
    print "command :   cd", cwd or ".", "&&", " ".join(map(quote,cmd))
    with cwd.as_cwd():
        p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = p.communicate()
    if p.wait():
        print "out", stdout
        print "err", stderr
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

    def compile(self):
        if self.compiled:
            return
        self.process_includes()
        print "Need to compile", self.processed
        command("quark", "package", "--skip-doc",
                "--output", self.outdir,
                self.processed.strpath,
                cwd = self.tmpdir
                )
        self.compiled = True

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
        self.processed = self.path.new(dirname=self.tmpdir)
        self.processed.write("".join(include_expander(self.path, "processing")))

    @property
    def py_package(self):
        self.compile()
        return self.tmpdir / self.outdir / "py" / "dist" / (
            "interop-%s-py2-none-any.whl" % self.version)

    @property
    def js_package(self):
        self.compile()
        return self.tmpdir / self.outdir / "js" / "interop.tgz"

    @property
    def java_package(self):
        self.compile()
        return self.tmpdir / self.outdir / "java" / "target" / (
            "interop-%s.jar" % self.version)

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

    def start(self):
        print "background process:  cd ", self.cwd, "&&", " ".join(map(quote,self.cmd))
        with self.cwd.as_cwd():
            self.p = subprocess.Popen(self.cmd,
                                stdout=subprocess.PIPE,
                                stderr=subprocess.PIPE)
        def comm():
            o, e = self.p.communicate()
            self.stdout, self.stderr = o, e

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
        self.built = False

    def __str__(self):
        return self.name + "@" + str(id(self))

    def check_build(self):
        if self.built:
            return
        print "need to build integration", self
        self.rundir.ensure(dir=1)
        self.build()
        self.built = True

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

    def build(self):
        pytest.fail("Need to implement build")

    def invoke_server(self, port):
        pytest.fail("Need to implement invoke_server")

    def invoke_client(self, port):
        pytest.fail("Need to implement invoke_client")

class Node(Integration):
    def __init__(self, **kwargs):
        super(Node, self).__init__(**kwargs)

    def build(self):
        self.npm_install(self.js_core_package)
        self.npm_install(self.compile.js_package)
        self.npm_install(self.js_node_package)
        self.rundir.join("run-client.js").write(textwrap.dedent("""\
            "use strict";
            var runtime = require("datawire-quark-node");
            var runtime_core = require("datawire-quark-core");
            var interop = require("interop");
            var process = require("process");
            console.log("Node client harness is started")
            new interop.Entrypoint().client(runtime, process.argv[2]);
        """))
        self.rundir.join("run-server.js").write(textwrap.dedent("""\
            "use strict";
            var runtime = require("datawire-quark-node");
            var runtime_core = require("datawire-quark-core");
            var interop = require("interop");
            var process = require("process");
            console.log("Node server harness is started")
            new interop.Entrypoint().server(runtime, process.argv[2]);
        """))

    def npm_install(self, package):
        command("npm", "install", package.strpath, cwd=self.rundir)

    @property
    def js_core_package(self):
        return self.runtimes / "js-core"

    @property
    def js_node_package(self):
        return self.runtimes / "js-node"

    def invoke_server(self, port):
        return ["node", "run-server.js", str(port)]

    def invoke_client(self, port):
        return ["node", "run-client.js", str(port)]

class AbstractPython(Integration):
    def __init__(self, **kwargs):
        super(AbstractPython, self).__init__(**kwargs)

    def build(self):
        command("virtualenv", "x", cwd=self.rundir)
        self.pip_install(self.py_core_package)
        self.pip_install(self.compile.py_package)

    @property
    def pip(self):
        return self.rundir / "x" / "bin" / "pip"

    @property
    def python(self):
        return self.rundir / "x" / "bin" / "python"

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
    def __init__(self, **kwargs):
        super(TwistedPython, self).__init__(**kwargs)

    def build(self):
        super(TwistedPython,self).build()
        self.pip_install(self.py_twisted_package)
        self.rundir.join("run-client.py").write(textwrap.dedent("""\
            import interop
            import quark_twisted_runtime
            import quark_runtime
            import sys
            print "Twisted client harness is started"
            runtime = quark_twisted_runtime.get_twisted_runtime()
            interop.Entrypoint().client(runtime, int(sys.argv[1]))
            runtime.launch()
        """))
        self.rundir.join("run-server.py").write(textwrap.dedent("""\
            import interop
            import quark_twisted_runtime
            import quark_runtime
            import sys
            print "Twisted server harness is started"
            runtime = quark_twisted_runtime.get_twisted_runtime()
            interop.Entrypoint().server(runtime, int(sys.argv[1]))
            runtime.launch()
        """))

    @property
    def py_twisted_package(self):
        return self.runtimes / "twisted"

class ThreadedPython(AbstractPython):
    def __init__(self, **kwargs):
        super(ThreadedPython, self).__init__(**kwargs)

    def build(self):
        super(ThreadedPython,self).build()
        self.pip_install(self.py_threaded_package)
        self.rundir.join("run-client.py").write(textwrap.dedent("""\
            import interop
            import quark_threaded_runtime
            import quark_runtime
            import sys
            print "Threaded client harness is started"
            runtime = quark_threaded_runtime.get_threaded_runtime()
            runtime.launch()
            interop.Entrypoint().client(runtime, int(sys.argv[1]))
        """))
        self.rundir.join("run-server.py").write(textwrap.dedent("""\
            import interop
            import quark_threaded_runtime
            import quark_runtime
            import sys
            print "Threaded server harness is started"
            runtime = quark_threaded_runtime.get_threaded_runtime()
            runtime.launch()
            interop.Entrypoint().server(runtime, int(sys.argv[1]))
        """))

    @property
    def py_threaded_package(self):
        return self.runtimes / "python-threaded"

class Netty(Integration):
    def __init__(self, **kwargs):
        super(Netty, self).__init__(**kwargs)

    def build(self):
        self.m2_repo.ensure(dir=1)
        context = dict(
            quark_netty_version = self.quark_netty_version,
            m2_repo = self.m2_repo.strpath,
            compile_version = self.compile.version,
            )
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
                </profile>
              </profiles>
            </settings>
        """ % context)
        );
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
                  <artifactId>quark-netty</artifactId>
                  <version>%(quark_netty_version)s</version>
                  <scope>compile</scope>
                </dependency>
                <dependency>
                  <groupId>io.datawire.quark.interop-test</groupId>
                  <artifactId>interop-quark</artifactId>
                  <version>%(compile_version)s</version>
                </dependency>
              </dependencies>
            </project>
        """ % context)
        )
        harness = self.rundir / "src" / "main" / "java" / "interop"/ "harness"
        harness.ensure(dir=1)
        harness.join("Client.java").write(textwrap.dedent("""\
            package interop.harness;
            import io.datawire.quark.netty.QuarkNettyRuntime;
            public class Client {
                public static void main(String[] args) {
                    System.out.println("Netty client harness is started");
                    QuarkNettyRuntime runtime = new QuarkNettyRuntime();
                    new interop.Entrypoint().client(runtime, Integer.parseInt(args[0]));
                }
            }
        """)
        )
        harness.join("Server.java").write(textwrap.dedent("""\
            package interop.harness;
            import io.datawire.quark.netty.QuarkNettyRuntime;
            public class Server {
                public static void main(String[] args) {
                    System.out.println("Netty server harness is started");
                    QuarkNettyRuntime runtime = new QuarkNettyRuntime();
                    new interop.Entrypoint().server(runtime, Integer.parseInt(args[0]));
                }
            }
        """)
        )
        self.mvn("install::install-file",
                "-Dfile=%s" % self.compile.java_package.strpath,
                "-DgroupId=io.datawire.quark.interop-test",
                "-DartifactId=interop-quark",
                "-Dversion=%s" % self.compile.version,
                "-Dpackaging=jar",
                cwd=self.rundir)
        self.mvn("compile", cwd=self.rundir)
        self.mvn("dependency:go-offline", cwd=self.rundir)

    def mvn(self, *args, **kwargs):
        command(*self.mvn_command(*args), **kwargs)

    def mvn_command(self, *args):
        return ["mvn", "--settings", self.settings_xml.strpath] + list(args)

    @property
    def settings_xml(self):
        return self.rundir / "settings.xml"

    @property
    def quark_netty_version(self):
        pom = self.quark_netty_package.join("pom.xml").read()
        version = pom.split("<version>",1)[1].split("</version>",1)[0]
        return version

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
                )

    def invoke_server(self, port):
        return self.mvn_command("exec:java",
                "-Dexec.mainClass=interop.harness.Server",
                "-Dexec.args=%s" % port,
                )


class CompileCache(object):
    def __init__(self):
        self.compiles = {}

    def get(self, path, tmpdir):
        if path not in self.compiles:
            self.compiles[path] = QuarkCompile(tmpdir, path)
        return self.compiles[path]

class IntegrationCache(object):
    def __init__(self):
        self.integrations = {}

    def get(self, cls, compile):
        key = (cls, compile)
        if key not in self.integrations:
            self.integrations[key] = cls(compile=compile)
        return self.integrations[key]

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

    def wait_server_start(self, timeout=10, interval=0.05):
        start = time.time()
        for a in range(int(timeout/interval)):
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
        pytest.fail("server did not start up on port %s after %.2fs" % (
            self.port, (time.time() - start)))

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

@pytest.fixture(params=Integration.registry)
def client_integration(request, compile, integration_cache):
    return integration_cache.get(request.param, compile)

@pytest.fixture(params=Integration.registry)
def server_integration(request, compile, integration_cache):
    return integration_cache.get(request.param, compile)

def test_interop(client_integration, server_integration, port):
    client = client_integration.client(port)
    server = server_integration.server(port)
    with server.wait(0):
        port.wait_server_start()
        with client.wait(1):
            print "server and client started"
            time.sleep(1)
    print "server and client stopped"
    c = client.stdout
    assert "FAIL" not in c
    assert "onHTTPInit" in c
    assert "onHTTPFinal" in c
    assert "onHTTPError" not in c
    s = server.stdout
    assert "Hello Registered on" in s
    assert "Hello Trouble" not in s
