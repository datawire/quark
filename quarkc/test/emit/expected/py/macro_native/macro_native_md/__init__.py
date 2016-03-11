from quark_runtime import *

import builtin.reflect


class macro_native_Native_test_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(macro_native_Native_test_Method, self).__init__(u"builtin.void", u"test", _List([]));

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

class macro_native_Native(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(macro_native_Native, self).__init__(u"macro_native.Native");
        (self).name = u"macro_native.Native"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([macro_native_Native_test_Method()])

    def construct(self, args):
        return macro_native.Native()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
macro_native_Native.singleton = macro_native_Native()

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
Root.macro_native_Native_md = macro_native_Native.singleton

import macro_native
