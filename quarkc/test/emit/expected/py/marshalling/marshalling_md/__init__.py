from quark_runtime import *

import builtin.reflect


class m_Inner_setup_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(m_Inner_setup_Method, self).__init__(u"m.Inner", u"setup", _List([u"builtin.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).setup((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class m_Inner(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(m_Inner, self).__init__(u"m.Inner");
        (self).name = u"m.Inner"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.int", u"inner_int"), builtin.reflect.Field(u"builtin.String", u"inner_string"), builtin.reflect.Field(u"builtin.float", u"inner_float"), builtin.reflect.Field(u"builtin.List<builtin.String>", u"inner_string_list")])
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

class m_Outer_setup_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(m_Outer_setup_Method, self).__init__(u"m.Outer", u"setup", _List([u"builtin.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).setup((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class m_Outer(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(m_Outer, self).__init__(u"m.Outer");
        (self).name = u"m.Outer"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.int", u"outer_int"), builtin.reflect.Field(u"builtin.String", u"outer_string"), builtin.reflect.Field(u"builtin.float", u"outer_float"), builtin.reflect.Field(u"builtin.List<m.Inner>", u"outer_inner_list")])
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

class builtin_List_builtin_String_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_String_, self).__init__(u"builtin.List<builtin.String>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.String"])
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
builtin_List_builtin_String_.singleton = builtin_List_builtin_String_()

class builtin_List_m_Inner_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_m_Inner_, self).__init__(u"builtin.List<m.Inner>");
        (self).name = u"builtin.List"
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
builtin_List_m_Inner_.singleton = builtin_List_m_Inner_()

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
Root.builtin_List_builtin_String__md = builtin_List_builtin_String_.singleton
Root.builtin_List_m_Inner__md = builtin_List_m_Inner_.singleton

import m
