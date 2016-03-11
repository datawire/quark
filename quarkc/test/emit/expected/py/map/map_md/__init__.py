from quark_runtime import *

import builtin.reflect


class builtin_Map_builtin_String_builtin_int_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Map_builtin_String_builtin_int_, self).__init__(u"builtin.Map<builtin.String,builtin.int>");
        (self).name = u"builtin.Map"
        (self).parameters = _List([u"builtin.String", u"builtin.int"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _Map()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Map_builtin_String_builtin_int_.singleton = builtin_Map_builtin_String_builtin_int_()

class builtin_Map_builtin_String_builtin_String_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Map_builtin_String_builtin_String_, self).__init__(u"builtin.Map<builtin.String,builtin.String>");
        (self).name = u"builtin.Map"
        (self).parameters = _List([u"builtin.String", u"builtin.String"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _Map()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Map_builtin_String_builtin_String_.singleton = builtin_Map_builtin_String_builtin_String_()

class builtin_Map_builtin_String_builtin_Object_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Map_builtin_String_builtin_Object_, self).__init__(u"builtin.Map<builtin.String,builtin.Object>");
        (self).name = u"builtin.Map"
        (self).parameters = _List([u"builtin.String", u"builtin.Object"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _Map()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Map_builtin_String_builtin_Object_.singleton = builtin_Map_builtin_String_builtin_Object_()

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
