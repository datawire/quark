from quark_runtime import *

import builtin.reflect


class stuff_Test_foo_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(stuff_Test_foo_Method, self).__init__(u"stuff.Test", u"foo", _List([u"stuff.Test"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).foo((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class stuff_Test_test_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(stuff_Test_test_Method, self).__init__(u"builtin.void", u"test", _List([]));

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

class stuff_Test(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(stuff_Test, self).__init__(u"stuff.Test");
        (self).name = u"stuff.Test"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([stuff_Test_foo_Method(), stuff_Test_test_Method()])

    def construct(self, args):
        return stuff.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
stuff_Test.singleton = stuff_Test()

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
Root.stuff_Test_md = stuff_Test.singleton

import stuff
