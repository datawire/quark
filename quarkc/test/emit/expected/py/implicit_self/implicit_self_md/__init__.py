from quark_runtime import *

import builtin.reflect


class implicit_self_Foo_next_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(implicit_self_Foo_next_Method, self).__init__(u"builtin.void", u"next", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).next();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class implicit_self_Foo_test_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(implicit_self_Foo_test_Method, self).__init__(u"builtin.void", u"test", _List([]));

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

class implicit_self_Foo(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(implicit_self_Foo, self).__init__(u"implicit_self.Foo");
        (self).name = u"implicit_self.Foo"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([implicit_self_Foo_next_Method(), implicit_self_Foo_test_Method()])

    def construct(self, args):
        return implicit_self.Foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
implicit_self_Foo.singleton = implicit_self_Foo()

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
Root.implicit_self_Foo_md = implicit_self_Foo.singleton

import implicit_self
