from quark_runtime import *

import builtin.reflect


class default_constructors_A(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(default_constructors_A, self).__init__(u"default_constructors.A");
        (self).name = u"default_constructors.A"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return default_constructors.A((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
default_constructors_A.singleton = default_constructors_A()

class default_constructors_B_greet_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(default_constructors_B_greet_Method, self).__init__(u"builtin.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class default_constructors_B(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(default_constructors_B, self).__init__(u"default_constructors.B");
        (self).name = u"default_constructors.B"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([default_constructors_B_greet_Method()])

    def construct(self, args):
        return default_constructors.B((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
default_constructors_B.singleton = default_constructors_B()

class default_constructors_C_greet_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(default_constructors_C_greet_Method, self).__init__(u"builtin.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class default_constructors_C(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(default_constructors_C, self).__init__(u"default_constructors.C");
        (self).name = u"default_constructors.C"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([default_constructors_C_greet_Method()])

    def construct(self, args):
        return default_constructors.C((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
default_constructors_C.singleton = default_constructors_C()

class default_constructors_X(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(default_constructors_X, self).__init__(u"default_constructors.X");
        (self).name = u"default_constructors.X"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return default_constructors.X()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
default_constructors_X.singleton = default_constructors_X()

class default_constructors_Y_test_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(default_constructors_Y_test_Method, self).__init__(u"builtin.void", u"test", _List([]));

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

class default_constructors_Y(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(default_constructors_Y, self).__init__(u"default_constructors.Y");
        (self).name = u"default_constructors.Y"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([default_constructors_Y_test_Method()])

    def construct(self, args):
        return default_constructors.Y((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
default_constructors_Y.singleton = default_constructors_Y()

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
Root.default_constructors_A_md = default_constructors_A.singleton
Root.default_constructors_B_md = default_constructors_B.singleton
Root.default_constructors_C_md = default_constructors_C.singleton
Root.default_constructors_X_md = default_constructors_X.singleton
Root.default_constructors_Y_md = default_constructors_Y.singleton

import default_constructors
