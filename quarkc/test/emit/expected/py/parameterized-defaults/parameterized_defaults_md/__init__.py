from quark_runtime import *

import quark.reflect


class pkg_Foo_quark_Object__foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(pkg_Foo_quark_Object__foo_Method, self).__init__(u"quark.Object", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_Foo_quark_Object__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(pkg_Foo_quark_Object__get_Method, self).__init__(u"quark.Object", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_Foo_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(pkg_Foo_quark_Object_, self).__init__(u"pkg.Foo<quark.Object>");
        (self).name = u"pkg.Foo"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([pkg_Foo_quark_Object__foo_Method(), pkg_Foo_quark_Object__get_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_Foo_quark_Object_.singleton = pkg_Foo_quark_Object_()

class pkg_StringFoo_get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(pkg_StringFoo_get_Method, self).__init__(u"quark.String", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_StringFoo_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(pkg_StringFoo_foo_Method, self).__init__(u"quark.String", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_StringFoo(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(pkg_StringFoo, self).__init__(u"pkg.StringFoo");
        (self).name = u"pkg.StringFoo"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([pkg_StringFoo_get_Method(), pkg_StringFoo_foo_Method()])

    def construct(self, args):
        return pkg.StringFoo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_StringFoo.singleton = pkg_StringFoo()

class pkg_Box_quark_String_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(pkg_Box_quark_String_, self).__init__(u"pkg.Box<quark.String>");
        (self).name = u"pkg.Box"
        (self).parameters = _List([u"quark.String"])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"contents")])
        (self).methods = _List([])

    def construct(self, args):
        return pkg.Box((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_Box_quark_String_.singleton = pkg_Box_quark_String_()

class pkg_StringBox(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(pkg_StringBox, self).__init__(u"pkg.StringBox");
        (self).name = u"pkg.StringBox"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"contents")])
        (self).methods = _List([])

    def construct(self, args):
        return pkg.StringBox((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_StringBox.singleton = pkg_StringBox()

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
Root.pkg_Foo_quark_Object__md = pkg_Foo_quark_Object_.singleton
Root.pkg_StringFoo_md = pkg_StringFoo.singleton
Root.pkg_Box_quark_String__md = pkg_Box_quark_String_.singleton
Root.pkg_StringBox_md = pkg_StringBox.singleton

import pkg
