from quark_runtime import *

import quark.reflect


class quark_Map_quark_String_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Map_quark_String_quark_Object_, self).__init__(u"quark.Map<quark.String,quark.Object>");
        (self).name = u"quark.Map"
        (self).parameters = _List([u"quark.String", u"quark.Object"])
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
quark_Map_quark_String_quark_Object_.singleton = quark_Map_quark_String_quark_Object_()

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
