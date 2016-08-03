import pytest
import py
import json, sys, difflib
import pexpect
import traceback

import quarkc.test.qtest as qtest

output = py.path.local(__file__).new(basename="output")
output.remove(rec=1, ignore_errors=True)
output.ensure_dir()

def has_main(path):
    return "main" in path.read()

def pytest_collect_file(path, parent):
    if path.ext == ".q" and has_main(path):
        return QuarkFile(path, parent)

class QuarkFile(qtest.QuarkFile):
    def makeQuarkItem(self, lang):
        return QuarkItem(self, lang)

class QuarkItem(qtest.QuarkItem):
    output = output
    
    def compile_quark(self):
        self.check_xfail()
        self.language.compile_quark(self)

    def run_quark(self):
        child = pexpect.spawn(
            "quark", ["run", "--%s" % self.language,
                      self.parent.fspath.strpath])
        child.logfile = sys.stdout
        child.expect(pexpect.EOF, timeout=300)
        child.close()
        actual = child.before.replace("\r\n","\n")
        return actual

    def run_quark_quick(self):
        return self.language.run_quark(self)

    def runtest(self):
        self.compile_quark()
        actual = self.run_quark_quick()
        out = self.parent.fspath.new(ext="out")
        cmp = out.new(ext="out.cmp")
        if out.check(file=1):
            expected = out.read()
            if actual != expected:
                cmp.write(actual)
                raise DiffException(actual, cmp, expected, out)
            else:
                if cmp.check():
                    cmp.remove()
        else:
            cmp.write(actual)
            raise MissingExpectedException(actual, cmp, out)

    def repr_failure(self, excinfo):
        if isinstance(excinfo.value, DiffException):
            ex = excinfo.value
            d = difflib.Differ()
            delta = list(d.compare(ex.expected.splitlines(True),
                                   ex.actual.splitlines(True)))
            return "".join(delta)
        if isinstance(excinfo.value, MissingExpectedException):
            ex = excinfo.value
            ret = "missing %s, maybe initialize from %s" % (ex.out, ex.cmp)
            return ret
        return self._repr_failure_py(excinfo, style="short")

    def reportinfo(self):
        return self.fspath, 0, "lang: %s" % self.language

class DiffException(Exception):
    def __init__(self, actual, cmp, expected, out):
        super(DiffException,self).__init__("Actual and expected output differ")
        self.actual = actual
        self.cmp = cmp
        self.expected = expected
        self.out = out

class MissingExpectedException(Exception):
    def __init__(self, actual, cmp, out):
        super(MissingExpectedException,self).__init__("Cannot find expected output")
        self.actual = actual
        self.cmp = cmp
        self.out = out
