from quark_runtime import *

import quark.reflect


class m_Inner_setup_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(m_Inner_setup_Method, self).__init__(u"m.Inner", u"setup", _List([u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).setup((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class m_Inner(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(m_Inner, self).__init__(u"m.Inner");
        (self).name = u"m.Inner"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.int", u"inner_int"), quark.reflect.Field(u"quark.String", u"inner_string"), quark.reflect.Field(u"quark.float", u"inner_float"), quark.reflect.Field(u"quark.List<quark.String>", u"inner_string_list")])
        (self).methods = _List([m_Inner_setup_Method()])

    def construct(self, args):
        return m.Inner()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
m_Inner.singleton = m_Inner()

class m_Outer_setup_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(m_Outer_setup_Method, self).__init__(u"m.Outer", u"setup", _List([u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).setup((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class m_Outer(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(m_Outer, self).__init__(u"m.Outer");
        (self).name = u"m.Outer"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.int", u"outer_int"), quark.reflect.Field(u"quark.String", u"outer_string"), quark.reflect.Field(u"quark.float", u"outer_float"), quark.reflect.Field(u"quark.List<m.Inner>", u"outer_inner_list")])
        (self).methods = _List([m_Outer_setup_Method()])

    def construct(self, args):
        return m.Outer()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
m_Outer.singleton = m_Outer()

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

class quark_List_m_Inner_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_m_Inner_, self).__init__(u"quark.List<m.Inner>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"m.Inner"])
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
quark_List_m_Inner_.singleton = quark_List_m_Inner_()

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
Root.m_Inner_md = m_Inner.singleton
Root.m_Outer_md = m_Outer.singleton
Root.quark_List_quark_String__md = quark_List_quark_String_.singleton
Root.quark_List_m_Inner__md = quark_List_m_Inner_.singleton

import m
