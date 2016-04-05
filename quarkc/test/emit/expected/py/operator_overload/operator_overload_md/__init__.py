from quark_runtime import *

import quark.reflect


class operator_overload_Overload___add___Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(operator_overload_Overload___add___Method, self).__init__(u"operator_overload.Overload", u"__add__", _List([u"operator_overload.Overload"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).__add__((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class operator_overload_Overload___mul___Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(operator_overload_Overload___mul___Method, self).__init__(u"operator_overload.Overload", u"__mul__", _List([u"operator_overload.Overload"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).__mul__((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class operator_overload_Overload_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(operator_overload_Overload_test_Method, self).__init__(u"quark.void", u"test", _List([]));

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

class operator_overload_Overload(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(operator_overload_Overload, self).__init__(u"operator_overload.Overload");
        (self).name = u"operator_overload.Overload"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([operator_overload_Overload___add___Method(), operator_overload_Overload___mul___Method(), operator_overload_Overload_test_Method()])

    def construct(self, args):
        return operator_overload.Overload((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
operator_overload_Overload.singleton = operator_overload_Overload()

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
Root.operator_overload_Overload_md = operator_overload_Overload.singleton

import operator_overload
