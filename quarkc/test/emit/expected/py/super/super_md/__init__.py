from quark_runtime import *

import quark.reflect


class super_A_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(super_A_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

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

class super_A(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(super_A, self).__init__(u"super.A");
        (self).name = u"super.A"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([super_A_greet_Method()])

    def construct(self, args):
        return super.A((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
super_A.singleton = super_A()

class super_B_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(super_B_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

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

class super_B(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(super_B, self).__init__(u"super.B");
        (self).name = u"super.B"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([super_B_greet_Method()])

    def construct(self, args):
        return super.B()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
super_B.singleton = super_B()

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
Root.super_A_md = super_A.singleton
Root.super_B_md = super_B.singleton

import super
