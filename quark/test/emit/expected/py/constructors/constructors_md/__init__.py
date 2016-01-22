from quark_runtime import *

import reflect


class test1_Test(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(test1_Test, self).__init__(u"test1.Test");
        (self).name = u"Test"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return test1.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
test1_Test.singleton = test1_Test()

class test2_Test(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(test2_Test, self).__init__(u"test2.Test");
        (self).name = u"Test"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return test2.Test((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
test2_Test.singleton = test2_Test()

class test3_Box_builtin_String__get_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(test3_Box_builtin_String__get_Method, self).__init__(u"builtin.String", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class test3_Box_builtin_String_(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(test3_Box_builtin_String_, self).__init__(u"test3.Box<builtin.String>");
        (self).name = u"Box"
        (self).parameters = _List([u"builtin.String"])
        (self).fields = _List([reflect.Field(u"builtin.String", u"contents")])
        (self).methods = _List([test3_Box_builtin_String__get_Method()])

    def construct(self, args):
        return test3.Box((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
test3_Box_builtin_String_.singleton = test3_Box_builtin_String_()

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
Root.test1_Test_md = test1_Test.singleton
Root.test2_Test_md = test2_Test.singleton

import test1
import test2
import test3
