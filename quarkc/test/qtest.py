import pytest
import json, sys
import pexpect
import subprocess
import os
import py.path
from collections import defaultdict
from itertools import chain
from quarkc import compiler
from quarkc import backend
from quarkc.helpers import namever
try:  # py3
    from shlex import quote
except ImportError:  # py2
    from pipes import quote

def ensure_output(path):
    output = py.path.local(path).new(basename="output")
    if output.check():
        output.remove(rec=1, ignore_errors=True)
    output.ensure_dir()
    return output

class QuarkRuntime:
    master = False

    @classmethod
    def prime_quark_install(cls, ids):
        if not cls.master:
            return
        new = defaultdict(list)
        for id in ids:
            id = id.split("::")
            ## XXX: assume all quark items have quark filename as the first part and the language as the last part of the nodeid
            if len(id) > 1 and id[0].endswith(".q"):
                quark = id[0]
                lang = id[-1]
                new[lang].append(quark)

        missing = []
        for language in QuarkFile.languages:
            name = language.keyword
            if name in new:
                new.pop(name)
                if not language.used:
                    language.used = True
                    missing.append(language)
    
        unknown = set(new)
        assert not unknown, "Malformed quark test ids %s" % ", ".join(chain(*[new[l] for l in unknown]))
        if not missing: return
        sys.stderr.write("\ninstall quark runtime for %s\n" % missing)
        cmd = ["quark", "install"]
        env={}
        env.update(os.environ)
        for language in missing:
            language.prime_quark_install(cmd, env)
        subprocess.check_call(cmd, env=env)


class QuarkCompilation(object):
    def __init__(self, item, language):
        self.item = item
        self.language = language
        self.compiler = compiler.Compiler()

    def compile(self):
        # XXX: emit of quark package races with itself in os.makedirs()
        self.item.output.join(self.language.backend.ext, "quark").ensure_dir()
        url = self.item.parent.fspath.strpath
        target = self.item.output.strpath
        compiler.compile(self.compiler, url, target, self.language.backend)
        if not self.has_no_dependencies():
            compiler.install(self.compiler, url, True, self.language.backend)

    def get_dist(self):
        file = self.compiler.urlparse(self.item.parent.fspath.strpath, recurse=False)
        name, ver = namever(file)
        return name

    def get_dist_name(self):
        return self.language.backend.gen.name(self.get_dist())

    def has_no_dependencies(self):
        return len(self.compiler.roots.sorted()) <= 2

class Pexpect(object):
    cwd = None

    @classmethod
    def output(cls, cmd, **kwargs):
        kwargs.pop("stderr", None)
        cmd = map(str, cmd)
        cls.debug(cmd, kwargs)
        child = pexpect.spawn(cmd[0], cmd[1:], **kwargs)
        child.logfile = sys.stdout
        child.expect(pexpect.EOF, timeout=kwargs.get('timeout', 30))
        child.close()
        actual = child.before.replace("\r\n","\n")
        if child.exitstatus != 0:
            raise subprocess.CalledProcessError(child.exitstatus, cmd, actual)
        return actual

    @classmethod
    def debug(cls, cmd, kwargs):
        cwd = py.path.local(kwargs.get("cwd"))
        env = kwargs.get("env", os.environ)
        delta = " ".join("%s=%s" % (k,quote(v)) for k,v in env.iteritems() if os.environ.get(k) != v)
        cmd = " ".join(map(quote, cmd))
        print
        if cls.cwd != cwd:
            print "## cd ", quote(str(cwd))
            cls.cwd = cwd
        print "## env", delta, cmd

def pexpect_output(cmd, **kwargs):
    return Pexpect.output(cmd, **kwargs)

class Language(object):
    keyword = None
    language = None
    used = False
    backend = None
    def __str__(self):
        return self.keyword

    def __repr__(self):
        return self.keyword

    def prime_quark_install(self, cmd, env):
        cmd.append("--%s" % self.language)

    def compile_quark(self, item):
        item.compilation=QuarkCompilation(item, self)
        item.compilation.compile()

    def run_quark(self, item, args=[], timeout=300):
        raise Exception("Abstract")

class Python(Language):
    keyword = "python"
    language = "python"
    backend = backend.Python

    def run_quark(self, item, args=[], timeout=300):
        base = item.output / self.backend.ext
        name = item.compilation.get_dist_name()
        dir = base / item.parent.fspath.purebasename
        pypath = dir
        env = {"PYTHONPATH":pypath.strpath}
        env.update(os.environ)
        try:
            cmd = ["python", base.bestrelpath(dir / name) + ".py", name] + list(args)
            return pexpect_output(cmd, cwd=base.strpath, env=env, stderr=subprocess.STDOUT)
        except subprocess.CalledProcessError as e:
            return e.output

class Java(Language):
    keyword = "java7"
    language = "java"
    backend = backend.Java

    classpath = py.path.local(__file__).new(basename=".classpath")

    def prime_quark_install(self, cmd, env):
        super(Java,self).prime_quark_install(cmd, env)
        if self.classpath.check():
            self.classpath.remove()

    def compile_java_maven(self, dir):
        mvn = ["mvn", "-q", "install",
               "dependency:build-classpath", "-Dmdep.outputFile=classpath"]
        self.run_java_compile(dir, mvn)
        dir.join("classpath").move(self.classpath)

    def target_classes_of(self, dir):
        return dir / "target" / "classes"

    def classpath_of(self, dir):
        return "%s:%s" % (self.target_classes_of(dir), self.classpath.read().strip())

    def compile_java_javac(self, dir):
        t_c = self.target_classes_of(dir)
        t_c.ensure_dir()
        srcpath = dir / "src/main/java"
        javac = ["javac", "-d", t_c, "-classpath", self.classpath_of(dir), "-sourcepath", srcpath, "-g", "-target", "1.7", "-source", "1.7", "-nowarn"]
        javac.extend(srcpath.visit(fil = "*.java"))
        self.run_java_compile(dir, map(str, javac))

    def compile_java(self, item, dir):
        if item.compilation.has_no_dependencies() and self.classpath.check():
            self.compile_java_javac(dir)
        else:
            self.compile_java_maven(dir)

    def run_java_compile(self, dir, cmd):
        try:
            print cmd
            pexpect_output(cmd, cwd=dir.strpath, stderr=subprocess.STDOUT)
        except subprocess.CalledProcessError as e:
            raise JavaCompileError(e)

    def run_quark(self, item, args=[], timeout=300):
        base = item.output / self.backend.ext
        name = item.compilation.get_dist_name()
        dir = base / item.parent.fspath.purebasename
        env = {}
        env.update(os.environ)
        self.compile_java(item, dir)
        try:
            cmd = ["java", "-cp", self.classpath_of(dir),
                   "%s.Main" % name, name] + list(args)
            return pexpect_output(cmd, cwd=dir.strpath, env=env, stderr=subprocess.STDOUT)
        except subprocess.CalledProcessError as e:
            return e.output


class JavaCompileError(Exception):
    def __init__(self, err):
        super(JavaCompileError,self).__init__(
            "Running %s failed with %s:\n---\n%s\n---" % (
                err.cmd, err.returncode, err.output))

class Ruby(Language):
    keyword = "ruby"
    language = "ruby"
    backend = backend.Ruby

    def run_quark(self, item, args=[], timeout=300):
        base = item.output / self.backend.ext
        name = item.compilation.get_dist_name()
        dir = base / item.parent.fspath.purebasename
        lib = dir / "lib"
        env = {}
        env.update(os.environ)
        try:
            cmd = ["ruby", base.bestrelpath(lib / name) + ".rb", name] + list(args)
            return pexpect_output(cmd, cwd=base.strpath, env=env, stderr=subprocess.STDOUT)
        except subprocess.CalledProcessError as e:
            return e.output

class Javascript(Language):
    keyword = "javascript"
    language = "javascript"
    backend = backend.JavaScript

    def run_quark(self, item, args=[], timeout=300):
        base = item.output / self.backend.ext
        name = item.compilation.get_dist_name()
        dir = base / item.parent.fspath.purebasename
        env = {"NODE_PATH": dir.strpath}
        env.update(os.environ)
        try:
            cmd = ["node", "-e", 'require("./index.js").%s.call_main()' % (name), name] + list(args)
            return pexpect_output(cmd, cwd=dir.strpath, env=env, stderr=subprocess.STDOUT)
        except subprocess.CalledProcessError as e:
            return e.output

class QuarkFile(pytest.File):
    languages = [Python(), Java(), Javascript(), Ruby()]

    def makeQuarkItem(self, lang):
        raise Exception("abstract")

    def collect(self):
        for lang in self.languages:
            yield self.makeQuarkItem(lang)

class QuarkItem(pytest.Item):
    def __init__(self, parent, lang):
        super(QuarkItem, self).__init__("%s" % (lang), parent)
        self.language = lang
        self.quark_file = parent.fspath.basename

    def install_quark(self):
        self.check_xfail()
        actual = pexpect_output([
            "quark", "install",
            # "-v",
            "--%s" % self.language.language,
            self.parent.fspath.strpath])
        assert actual.splitlines()[-1].strip() == "Done", actual

    def run_quark(self, args=[], timeout=300):
        cmd = ["quark", "run", "--%s" % self.language.language, self.parent.fspath.strpath]
        if args:
            cmd.append("--")
            cmd.extend(args)
        return pexpect_output(cmd)

    def compile_quark(self):
        self.check_xfail()
        self.language.compile_quark(self)

    def run_quark_quick(self, args=[], timeout=300):
        return self.language.run_quark(self, args, timeout)

    def check_xfail(self):
        src = self.parent.fspath.read()
        if "xfail" in src and not "xfail:" in src:
            pytest.xfail("marked as xfail")
        if ("xfail:%s" % self.language.backend.ext) in src:
            pytest.xfail("marked as xfail:%s" % self.language.backend.ext)

    def reportinfo(self):
        return self.fspath, 0, "lang: %s" % self.language
