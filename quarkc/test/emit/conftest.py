import pytest
import py
import json, sys, difflib
import pexpect
import traceback

import quarkc.test.qtest as qtest

def has_main(path):
    return "main" in path.read()

def pytest_collect_file(path, parent):
    if path.ext == ".q" and has_main(path):
        return QuarkFile(path, parent)

class QuarkFile(qtest.QuarkFile):
    def makeQuarkItem(self, lang):
        return QuarkItem(self, lang)

class QuarkItem(qtest.QuarkItem):
    output = qtest.ensure_output(__file__)
    
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
