from quark_runtime import *

import quark.reflect


class macro_pie_Pie_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(macro_pie_Pie_test_Method, self).__init__(u"quark.void", u"test", _List([]));

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

class macro_pie_Pie(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(macro_pie_Pie, self).__init__(u"macro_pie.Pie");
        (self).name = u"macro_pie.Pie"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([macro_pie_Pie_test_Method()])

    def construct(self, args):
        return macro_pie.Pie()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
macro_pie_Pie.singleton = macro_pie_Pie()

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
Root.macro_pie_Pie_md = macro_pie_Pie.singleton

import macro_pie
