from quark_runtime import *

import quark.reflect


class pkg_C_event1_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(pkg_C_event1_Method, self).__init__(u"quark.void", u"event1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).event1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_C(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(pkg_C, self).__init__(u"pkg.C");
        (self).name = u"pkg.C"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([pkg_C_event1_Method()])

    def construct(self, args):
        return pkg.C()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_C.singleton = pkg_C()

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
Root.pkg_C_md = pkg_C.singleton

import pkg
