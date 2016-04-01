from quark_runtime import *

import quark.reflect


class inheritence_A_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritence_A_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritence_A(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritence_A, self).__init__(u"inheritence.A");
        (self).name = u"inheritence.A"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritence_A_foo_Method()])

    def construct(self, args):
        return inheritence.A()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritence_A.singleton = inheritence_A()

class inheritence_B_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritence_B_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritence_B(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritence_B, self).__init__(u"inheritence.B");
        (self).name = u"inheritence.B"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritence_B_foo_Method()])

    def construct(self, args):
        return inheritence.B()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritence_B.singleton = inheritence_B()

class inheritence_C_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritence_C_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritence_C(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritence_C, self).__init__(u"inheritence.C");
        (self).name = u"inheritence.C"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritence_C_foo_Method()])

    def construct(self, args):
        return inheritence.C()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritence_C.singleton = inheritence_C()

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
Root.inheritence_A_md = inheritence_A.singleton
Root.inheritence_B_md = inheritence_B.singleton
Root.inheritence_C_md = inheritence_C.singleton

import inheritence
