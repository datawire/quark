from quark_runtime import *

import quark.reflect


class test1_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(test1_Test, self).__init__(u"test1.Test");
        (self).name = u"test1.Test"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
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

class test2_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(test2_Test, self).__init__(u"test2.Test");
        (self).name = u"test2.Test"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
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

class test3_Box_quark_String__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(test3_Box_quark_String__get_Method, self).__init__(u"quark.String", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class test3_Box_quark_String_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(test3_Box_quark_String_, self).__init__(u"test3.Box<quark.String>");
        (self).name = u"test3.Box"
        (self).parameters = _List([u"quark.String"])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"contents")])
        (self).methods = _List([test3_Box_quark_String__get_Method()])

    def construct(self, args):
        return test3.Box((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
test3_Box_quark_String_.singleton = test3_Box_quark_String_()

class quark_List_quark_String_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_String_, self).__init__(u"quark.List<quark.String>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.String"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_String_.singleton = quark_List_quark_String_()

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
