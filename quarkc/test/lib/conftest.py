import pytest
import py
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
    output = qtest.ensure_output(__file__)

    def runtest(self):
        self.compile_quark()
        actual = self.run_quark_quick(["--json"])
        report = actual.split(
            "=============================== json report ==============================="
        )
        assert len(report) == 2, "missing json report in\n" + actual
        report = json.loads(report[1])
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

class QuarkException(Exception):
    def __init__(self, report):
        super(QuarkException,self).__init__("Quark harness failure")
        self.report = report
