import pytest
import json, sys
import pexpect
import subprocess
import os
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
            name = language.language
            if name in new:
                new.pop(name)
                if not language.used:
                    language.used = True
                    missing.append(name)
    
        unknown = set(new)
        assert not unknown, "Malformed quark test ids %s" % ", ".join(chain(*[new[l] for l in unknown]))
        if not missing: return
        sys.stderr.write("\ninstall quark runtime for %s\n" % missing)
        subprocess.check_call(["quark", "install"] + ["--%s" % l for l in missing])


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
    
class Language:
    language = None
    used = False
    backend = None
    def __str__(self):
        return self.language

    def compile_quark(self, item):
        item.compilation=QuarkCompilation(item, self)
        item.compilation.compile()

    def run_quark(self, item):
        raise Exception("Abstract")

class Python(Language):
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
    language = "java"
    backend = backend.Java

class Ruby(Language):
    language = "ruby"
    backend = backend.Ruby

    def run_quark(self, item):
        base = item.output / self.backend.ext
        name = item.compilation.get_dist_name()
        dir = base / item.parent.fspath.purebasename / "lib"
        env = {}
        env.update(os.environ)
        try:
            cmd = ["ruby", base.bestrelpath(dir / name) + ".rb"]
            return subprocess.check_output(cmd, cwd=base.strpath, env=env, stderr=subprocess.STDOUT)
        except subprocess.CalledProcessError as e:
            return e.output

class Javascript(Language):
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
