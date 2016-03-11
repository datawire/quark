from quark_runtime import *

import builtin.reflect


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
