from quark_runtime import *

import quark.reflect


class pkg_Bar_go_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(pkg_Bar_go_Method, self).__init__(u"quark.void", u"go", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).go();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_Bar(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(pkg_Bar, self).__init__(u"pkg.Bar");
        (self).name = u"pkg.Bar"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([pkg_Bar_go_Method()])

    def construct(self, args):
        return pkg.Bar()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_Bar.singleton = pkg_Bar()

class pkg_Foo(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(pkg_Foo, self).__init__(u"pkg.Foo");
        (self).name = u"pkg.Foo"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return pkg.Foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_Foo.singleton = pkg_Foo()

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
Root.pkg_Bar_md = pkg_Bar.singleton
Root.pkg_Foo_md = pkg_Foo.singleton

import pkg
