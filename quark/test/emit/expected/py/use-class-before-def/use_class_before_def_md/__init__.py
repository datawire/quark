from quark_runtime import *

import builtin.reflect


class pkg_Bar_go_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(pkg_Bar_go_Method, self).__init__(u"builtin.void", u"go", _List([]));

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

class pkg_Bar(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

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

class pkg_Foo(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(pkg_Foo, self).__init__(u"pkg.Foo");
        (self).name = u"pkg.Foo"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"name")])
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
