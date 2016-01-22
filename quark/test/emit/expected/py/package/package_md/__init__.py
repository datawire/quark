from quark_runtime import *

import reflect


class test_Test_go_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(test_Test_go_Method, self).__init__(u"builtin.void", u"go", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).go();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class test_Test(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(test_Test, self).__init__(u"test.Test");
        (self).name = u"Test"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([test_Test_go_Method()])

    def construct(self, args):
        return test.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
test_Test.singleton = test_Test()

class test_test_Test_go_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(test_test_Test_go_Method, self).__init__(u"builtin.void", u"go", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).go();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class test_test_Test(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(test_test_Test, self).__init__(u"test.test.Test");
        (self).name = u"Test"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.int", u"size")])
        (self).methods = _List([test_test_Test_go_Method()])

    def construct(self, args):
        return test.test.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
test_test_Test.singleton = test_test_Test()

class Root(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Root.test_Test_md = test_Test.singleton
Root.test_test_Test_md = test_test_Test.singleton

import test
import test.test
