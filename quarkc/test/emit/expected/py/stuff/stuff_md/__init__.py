from quark_runtime import *

import quark.reflect


class stuff_Test_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

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

class stuff_Test_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(stuff_Test_test_Method, self).__init__(u"quark.void", u"test", _List([]));

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

class stuff_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

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
Root.stuff_Test_md = stuff_Test.singleton

import stuff
