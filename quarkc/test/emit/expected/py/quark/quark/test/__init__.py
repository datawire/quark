from quark_runtime import *

import quark.reflect
import quark_md


class TestInitializer(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def getValue(self):
        return None

    def _getClass(self):
        return u"quark.test.TestInitializer"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
TestInitializer.quark_test_TestInitializer_ref = quark_md.Root.quark_test_TestInitializer_md

def red(str):
    return ((u"\x1b[31;1m") + (str)) + (u"\x1b[0m")


def green(str):
    return ((u"\x1b[32;1m") + (str)) + (u"\x1b[0m")


def bold(str):
    return ((u"\x1b[1m") + (str)) + (u"\x1b[0m")

class Test(object):
    def _init(self):
        self.name = None
        self.checks = 0
        self.failures = _List([])

    def __init__(self, name):
        self._init()
        (self).name = name

    @staticmethod
    def current():
        return (Test.ctx).getValue()

    def match(self, filters):
        if (((filters) == (None)) or ((len(filters)) == (0))):
            return True

        idx = 0;
        while ((idx) < (len(filters))):
            filter = (filters)[idx];
            if (((self.name).find(filter)) >= (0)):
                return True

            idx = (idx) + (1)

        return False

    def start(self):
        (Test.ctx).setValue(self);

    def stop(self):
        result = (((((self.name) + (u" [")) + (str(self.checks))) + (u" checks, ")) + (str(len(self.failures)))) + (u" failures]");
        if ((len(self.failures)) > (0)):
            _println(red(result));
        else:
            _println(bold(result));

        idx = 0;
        while ((idx) < (len(self.failures))):
            _println(red((u"  ") + ((self.failures)[idx])));
            idx = (idx) + (1)

        (Test.ctx).setValue(None);

    def check(self, value, message):
        self.checks = (self.checks) + (1)
        if (not (value)):
            (self.failures).append(message);

        return value

    def fail(self, message):
        self.check(False, message);

    def run(self):
        pass

    def _getClass(self):
        return u"quark.test.Test"

    def _getField(self, name):
        if ((name) == (u"ctx")):
            return Test.ctx

        if ((name) == (u"name")):
            return (self).name

        if ((name) == (u"checks")):
            return (self).checks

        if ((name) == (u"failures")):
            return (self).failures

        return None

    def _setField(self, name, value):
        if ((name) == (u"ctx")):
            Test.ctx = value

        if ((name) == (u"name")):
            (self).name = value

        if ((name) == (u"checks")):
            (self).checks = value

        if ((name) == (u"failures")):
            (self).failures = value


Test.ctx = _TLS(TestInitializer())
Test.quark_test_Test_ref = quark_md.Root.quark_test_Test_md
class MethodTest(Test):
    def _init(self):
        Test._init(self)
        self.klass = None
        self.method = None

    def __init__(self, klass, method):
        super(MethodTest, self).__init__((((klass).getName()) + (u".")) + ((method).getName()));
        (self).klass = klass
        (self).method = method

    def run(self):
        setup = (self.klass).getMethod(u"setup");
        teardown = (self.klass).getMethod(u"teardown");
        test = (self.klass).construct(_List([]));
        if ((setup) != (None)):
            (setup).invoke(test, _List([]));

        (self.method).invoke(test, _List([]));
        if ((teardown) != (None)):
            (teardown).invoke(test, _List([]));

    def _getClass(self):
        return u"quark.test.MethodTest"

    def _getField(self, name):
        if ((name) == (u"ctx")):
            return Test.ctx

        if ((name) == (u"name")):
            return (self).name

        if ((name) == (u"checks")):
            return (self).checks

        if ((name) == (u"failures")):
            return (self).failures

        if ((name) == (u"klass")):
            return (self).klass

        if ((name) == (u"method")):
            return (self).method

        return None

    def _setField(self, name, value):
        if ((name) == (u"ctx")):
            Test.ctx = value

        if ((name) == (u"name")):
            (self).name = value

        if ((name) == (u"checks")):
            (self).checks = value

        if ((name) == (u"failures")):
            (self).failures = value

        if ((name) == (u"klass")):
            (self).klass = value

        if ((name) == (u"method")):
            (self).method = value


MethodTest.quark_test_MethodTest_ref = quark_md.Root.quark_test_MethodTest_md

def check(value, message):
    return (Test.current()).check(value, message)


def checkEqual(expected, actual):
    return (Test.current()).check((expected) == (actual), (((u"expected ") + (str(expected))) + (u" got ")) + (str(actual)))


def fail(message):
    (Test.current()).check(False, message);

class Harness(object):
    def _init(self):
        self.pkg = None
        self.tests = _List([])
        self.filtered = 0

    def __init__(self, pkg):
        self._init()
        (self).pkg = pkg

    def collect(self, filters):
        names = _List((quark.reflect.Class.classes).keys());
        (names).sort();
        idx = 0;
        pfx = (self.pkg) + (u".");
        while ((idx) < (len(names))):
            name = (names)[idx];
            if (((name).startswith(pfx)) and ((name).endswith(u"Test"))):
                klass = quark.reflect.Class.get(name);
                methods = (klass).getMethods();
                jdx = 0;
                while ((jdx) < (len(methods))):
                    meth = (methods)[jdx];
                    mname = (meth).getName();
                    if ((mname).startswith(u"test")):
                        test = MethodTest(klass, meth);
                        if ((test).match(filters)):
                            (self.tests).append(test);
                        else:
                            self.filtered = (self.filtered) + (1)

                    jdx = (jdx) + (1)

            idx = (idx) + (1)

    def list(self):
        idx = 0;
        while ((idx) < (len(self.tests))):
            test = (self.tests)[idx];
            _println((test).name);
            idx = (idx) + (1)

    def run(self):
        _println(bold(u"=============================== starting tests ==============================="));
        idx = 0;
        failures = 0;
        while ((idx) < (len(self.tests))):
            test = (self.tests)[idx];
            (test).start();
            (test).run();
            (test).stop();
            if ((len((test).failures)) > (0)):
                failures = (failures) + (1)

            idx = (idx) + (1)

        passed = (len(self.tests)) - (failures);
        _println(bold(u"=============================== stopping tests ==============================="));
        result = (((((((u"Total: ") + (str((len(self.tests)) + (self.filtered)))) + (u", Filtered: ")) + (str(self.filtered))) + (u", Passed: ")) + (str(passed))) + (u", Failed: ")) + (str(failures));
        if ((failures) > (0)):
            _println(red(result));
        else:
            _println(green(result));

    def _getClass(self):
        return u"quark.test.Harness"

    def _getField(self, name):
        if ((name) == (u"pkg")):
            return (self).pkg

        if ((name) == (u"tests")):
            return (self).tests

        if ((name) == (u"filtered")):
            return (self).filtered

        return None

    def _setField(self, name, value):
        if ((name) == (u"pkg")):
            (self).pkg = value

        if ((name) == (u"tests")):
            (self).tests = value

        if ((name) == (u"filtered")):
            (self).filtered = value


Harness.quark_List_quark_test_Test__ref = quark_md.Root.quark_List_quark_test_Test__md
Harness.quark_test_Harness_ref = quark_md.Root.quark_test_Harness_md

def run(args):
    pkg = (args)[0];
    filters = _List([]);
    list = False;
    idx = 1;
    while ((idx) < (len(args))):
        arg = (args)[idx];
        if ((arg) == (u"-l")):
            list = True
        else:
            (filters).append(arg);

        idx = (idx) + (1)

    h = Harness(pkg);
    (h).collect(filters);
    if (list):
        (h).list();
    else:
        _println(bold((u"Running: ") + ((u" ").join(args))));
        (h).run();

