import pytest
import json, sys
import pexpect

def pytest_collect_file(path, parent):
    if path.ext == ".q" and path.basename.endswith("_test.q"):
        return QuarkFile(path, parent)

class QuarkFile(pytest.File):
    def collect(self):
        for lang in ["python", "java", "javascript", "ruby"]:
            yield QuarkItem(self, lang)

class QuarkItem(pytest.Item):
    def __init__(self, parent, lang):
        super(QuarkItem, self).__init__("%s:%s" % (lang, parent.fspath.basename), parent)
        self.lang = lang

    def runtest(self):
        child = pexpect.spawn("quark", ["install", "-v"] +
                              ["--%s" % self.lang,
                               self.parent.fspath.strpath])
        child.logfile = sys.stdout
        child.expect(pexpect.EOF, timeout=300)
        assert child.before.splitlines()[-1].strip() == "Done"

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

    def reportinfo(self):
        return self.fspath, 0, "lang: %s" % self.lang

class QuarkException(Exception):
    def __init__(self, report):
        super(QuarkException,self).__init__("Quark harness failure")
        self.report = report
