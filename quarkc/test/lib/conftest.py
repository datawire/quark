import pytest
import json, sys
import pexpect

import quarkc.test.qtest as qtest

def pytest_collect_file(path, parent):
    if path.ext == ".q" and path.basename.endswith("_test.q"):
        return QuarkFile(path, parent)

class QuarkFile(qtest.QuarkFile):
    def makeQuarkItem(self, lang):
        return QuarkItem(self, lang)

class QuarkItem(qtest.QuarkItem):
    def runtest(self):
        self.install_quark()
        child = pexpect.spawn(
            "quark", ["run", "--%s" % self.lang,
                      self.parent.fspath.strpath, "--", "--json"])
        child.logfile = sys.stdout
        child.expect_exact(
            "=============================== json report ===============================",
            timeout=300
        )
        child.expect(pexpect.EOF)
        report = json.loads(child.before)
        for item in report:
            if item["failures"]:
                raise QuarkException(report)

    def repr_failure(self, excinfo):
        if isinstance(excinfo.value, QuarkException):
            ret = "\n".join([
                "%s\n%s" % (item["name"],
                            "\n".join("    %s" % i
                                      for i in item["failures"]))
                for item in excinfo.value.report
                if item["failures"]])
            return ret
        return self._repr_failure_py(excinfo, style="short")

    def reportinfo(self):
        return self.fspath, 0, "lang: %s" % self.lang

class QuarkException(Exception):
    def __init__(self, report):
        super(QuarkException,self).__init__("Quark harness failure")
        self.report = report
