import pytest
import json, sys
import pexpect
import subprocess
import os
import py.path
from collections import defaultdict
from itertools import chain
from quarkc.compiler import Compiler, compile
from quarkc import backend
from quarkc.helpers import namever

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
        self.compiler = Compiler()

    def compile(self):
        compile(self.compiler, self.item.parent.fspath.strpath, self.item.output.strpath, self.language.backend)

    def get_dist(self):
        file = self.compiler.urlparse(self.item.parent.fspath.strpath, recurse=False)
        name, ver = namever(file)
        return name

    def get_dist_name(self):
        return self.language.backend.gen.name(self.get_dist())

    def has_no_dependencies(self):
        return len(self.compiler.roots.sorted()) <= 2

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

    def run_quark(self, item):
        raise Exception("Abstract")

class Python(Language):
    keyword = "python"
    language = "python"
    backend = backend.Python

    def run_quark(self, item):
        base = item.output / self.backend.ext
        name = item.compilation.get_dist_name()
        dir = base / item.parent.fspath.purebasename
        pypath = dir
        env = {"PYTHONPATH":pypath.strpath}
        env.update(os.environ)
        try:
            cmd = ["python", base.bestrelpath(dir / name) + ".py"]
            return subprocess.check_output(cmd, cwd=base.strpath, env=env, stderr=subprocess.STDOUT)
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
            subprocess.check_output(cmd, cwd=dir.strpath, stderr=subprocess.STDOUT)
        except subprocess.CalledProcessError as e:
            raise JavaCompileError(e)

    def run_quark(self, item):
        base = item.output / self.backend.ext
        name = item.compilation.get_dist_name()
        dir = base / item.parent.fspath.purebasename
        env = {}
        env.update(os.environ)
        self.compile_java(item, dir)
        try:
            cmd = ["java", "-cp", self.classpath_of(dir),
                   "%s.Main" % name]
            return subprocess.check_output(cmd, cwd=dir.strpath, env=env, stderr=subprocess.STDOUT)
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

    def run_quark(self, item):
        base = item.output / self.backend.ext
        name = item.compilation.get_dist_name()
        dir = base / item.parent.fspath.purebasename
        lib = dir / "lib"
        env = {}
        env.update(os.environ)
        try:
            cmd = ["ruby", base.bestrelpath(lib / name) + ".rb"]
            return subprocess.check_output(cmd, cwd=base.strpath, env=env, stderr=subprocess.STDOUT)
        except subprocess.CalledProcessError as e:
            return e.output

class Javascript(Language):
    keyword = "javascript"
    language = "javascript"
    backend = backend.JavaScript

    def run_quark(self, item):
        base = item.output / self.backend.ext
        name = item.compilation.get_dist_name()
        dir = base / item.parent.fspath.purebasename
        env = {"NODE_PATH": base.strpath}
        env.update(os.environ)
        try:
            cmd = ["node", base.bestrelpath(dir / name) + ".js"]
            return subprocess.check_output(cmd, cwd=base.strpath, env=env, stderr=subprocess.STDOUT)
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
        child = pexpect.spawn("quark", ["install",
                                        # "-v",
        ] +
                              ["--%s" % self.language,
                               self.parent.fspath.strpath])
        child.logfile = sys.stdout
        child.expect(pexpect.EOF, timeout=300)
        assert child.before.splitlines()[-1].strip() == "Done"
        child.close()

    def check_xfail(self):
        src = self.parent.fspath.read()
        if "xfail" in src and not "xfail:" in src:
            pytest.xfail("marked as xfail")
        if ("xfail:%s" % self.language.backend.ext) in src:
            pytest.xfail("marked as xfail:%s" % self.language.backend.ext)
