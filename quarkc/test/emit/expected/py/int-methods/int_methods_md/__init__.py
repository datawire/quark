from quark_runtime import *

import quark.reflect


class int_methods_Test_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(int_methods_Test_test_Method, self).__init__(u"quark.void", u"test", _List([]));

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

class int_methods_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(int_methods_Test, self).__init__(u"int_methods.Test");
        (self).name = u"int_methods.Test"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([int_methods_Test_test_Method()])

    def construct(self, args):
        return int_methods.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
int_methods_Test.singleton = int_methods_Test()

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
Root.int_methods_Test_md = int_methods_Test.singleton

import int_methods
