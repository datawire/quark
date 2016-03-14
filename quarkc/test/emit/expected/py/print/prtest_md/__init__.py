from quark_runtime import *

import quark.reflect


class prtest_Test_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(prtest_Test_test_Method, self).__init__(u"quark.void", u"test", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class prtest_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(prtest_Test, self).__init__(u"prtest.Test");
        (self).name = u"prtest.Test"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([prtest_Test_test_Method()])

    def construct(self, args):
        return prtest.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
prtest_Test.singleton = prtest_Test()

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
Root.prtest_Test_md = prtest_Test.singleton

import prtest
