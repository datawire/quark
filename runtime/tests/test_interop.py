import pytest
import py
import os
import subprocess
import time
import threading
import textwrap
import contextlib

def command(*cmd, **kwargs):
    cwd = kwargs.pop('cwd', py.path.local())
    assert not kwargs
    print "command in ", cwd or ".", cmd
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
        with open(path) as f:
            self.version = f.read()\
              .split("@version(",1)[1]\
              .split(")",1)[0]\
              .strip("'")\
              .strip('"')
        self.compiled = False

    def compile(self):
        if self.compiled:
            return
        print "Need to compile", self.path, " in ", self.tmpdir
        command("quark", "package", "--skip-doc",
                "--output", self.outdir,
                self.path,
                cwd = self.tmpdir
                )
        self.compiled = True

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

class IntegrationMeta(type):
    def __init__(cls, name, bases, dct):
        if not hasattr(cls, 'registry'):
            cls.registry = []
        else:
            cls.registry.append(cls)
            cls.name = name
        super(IntegrationMeta, cls).__init__(name, bases, dct)

class BackgroundProcess(object):
    def __init__(self, cwd, cmd):
        self.cwd = cwd
        self.cmd = cmd

    def start(self):
        print "background process", self.cwd, self.cmd
        with self.cwd.as_cwd():
            self.p = subprocess.Popen(self.cmd,
                                stdout=subprocess.PIPE,
                                stderr=subprocess.PIPE)
        def comm():
            self.stdout, self.stderr = self.p.communicate()

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
        print "out", self.stdout
        print "err", self.stderr
        return ret

    @contextlib.contextmanager
    def wait(self, timeout=0.1):
        self.start()
        yield
        self.stop(timeout)


class Integration(object):
    __metaclass__ = IntegrationMeta
    def __init__(self, tmpdir, compile):
        self.tmpdir = tmpdir
        self.compile = compile
        self.built = False

    def __str__(self):
        return self.name + "@" + str(id(self))

    def check_build(self):
        if self.built:
            return
        self.build()
        self.built = True

    @property
    def rundir(self):
        return self.tmpdir / "run" / self.name

    @property
    def client(self):
        self.check_build()
        return BackgroundProcess(cwd=self.rundir,
                                 cmd=self.invoke_client)

    @property
    def server(self):
        self.check_build()
        return BackgroundProcess(cwd=self.rundir,
                                 cmd=self.invoke_server)

    @property
    def runtimes(self):
        return py.path.local(__file__).dirpath("..")

    def build(self):
        pytest.fail("Need to implement build")

    @property
    def invoke_server(self):
        pytest.fail("Need to implement invoke_server")

    @property
    def invoke_client(self):
        pytest.fail("Need to implement invoke_client")

class Node(Integration):
    def __init__(self, **kwargs):
        super(Node, self).__init__(**kwargs)

    def build(self):
        self.rundir.ensure(dir=1)
        self.npm_install(self.js_core_package)
        self.npm_install(self.compile.js_package)
        self.npm_install(self.js_node_package)
        self.rundir.join("run-client.js").write(textwrap.dedent("""\
            "use strict";
            var runtime = require("datawire-quark-node");
            var runtime_core = require("datawire-quark-core");
            var interop = require("interop");
            new interop.Entrypoint().server(runtime, 9876);
        """))
        self.rundir.join("run-server.js").write(textwrap.dedent("""\
            "use strict";
            var runtime = require("datawire-quark-node");
            var runtime_core = require("datawire-quark-core");
            var interop = require("interop");
            new interop.Entrypoint().client(runtime, 9876);
        """))

    def npm_install(self, package):
        command("npm", "install", package.strpath, cwd=self.rundir)

    @property
    def js_core_package(self):
        return self.runtimes / "js-core"

    @property
    def js_node_package(self):
        return self.runtimes / "js-node"

    @property
    def invoke_server(self):
        return ["node", "run-server.js"]

    @property
    def invoke_client(self):
        return ["node", "run-client.js"]

class Twisted(Integration):
    def __init__(self, **kwargs):
        super(Twisted, self).__init__(**kwargs)

    def invoke(self, name):
        print self, name

    def build(self):
        print "TODO, build twisted"

class Netty(Integration):
    def __init__(self, **kwargs):
        super(Netty, self).__init__(**kwargs)

    def invoke(self, name):
        print self, name

    def build(self):
        print "TODO, build java"

directory = os.path.join(os.path.dirname(__file__), "interop")

files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]

@pytest.fixture(params=paths)
def path(request):
    return request.param

@pytest.fixture
def compile(tmpdir, path):
    return QuarkCompile(tmpdir, path)

@pytest.fixture
def integration_cache(tmpdir, compile):
    return dict((clz, clz(tmpdir=tmpdir, compile=compile))
                 for clz in Integration.registry)

@pytest.fixture(params=Integration.registry)
def client(request, integration_cache):
    return integration_cache[request.param].client

@pytest.fixture(params=Integration.registry)
def server(request, integration_cache):
    return integration_cache[request.param].server

def test_interop(client, server):
    with server.wait(0), client.wait(1):
        pass
    assert "FAIL" not in client.stdout
    assert client.stderr == ""
    assert server.stderr == ""
