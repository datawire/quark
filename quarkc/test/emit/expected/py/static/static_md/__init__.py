from quark_runtime import *

import builtin.reflect


class static_Foo_setCount_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(static_Foo_setCount_Method, self).__init__(u"builtin.void", u"setCount", _List([u"builtin.int"]));

    def invoke(self, object, args):
        obj = object;
        static.Foo.setCount((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class static_Foo_getCount_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(static_Foo_getCount_Method, self).__init__(u"builtin.int", u"getCount", _List([]));

    def invoke(self, object, args):
        obj = object;
        return static.Foo.getCount()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class static_Foo_test1_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(static_Foo_test1_Method, self).__init__(u"builtin.void", u"test1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class static_Foo_test2_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(static_Foo_test2_Method, self).__init__(u"builtin.void", u"test2", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test2();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class static_Foo_test3_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(static_Foo_test3_Method, self).__init__(u"builtin.void", u"test3", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test3();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class static_Foo_test4_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(static_Foo_test4_Method, self).__init__(u"builtin.void", u"test4", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test4();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class static_Foo(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(static_Foo, self).__init__(u"static.Foo");
        (self).name = u"static.Foo"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.int", u"count")])
        (self).methods = _List([static_Foo_setCount_Method(), static_Foo_getCount_Method(), static_Foo_test1_Method(), static_Foo_test2_Method(), static_Foo_test3_Method(), static_Foo_test4_Method()])

    def construct(self, args):
        return static.Foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
static_Foo.singleton = static_Foo()

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
Root.static_Foo_md = static_Foo.singleton

import static
