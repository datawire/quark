from quark_runtime import *

import reflect


class pkg_Foo_Object__foo_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(pkg_Foo_Object__foo_Method, self).__init__(u"Object", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_Foo_Object__get_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(pkg_Foo_Object__get_Method, self).__init__(u"Object", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_Foo_Object_(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(pkg_Foo_Object_, self).__init__(u"pkg.Foo<Object>");
        (self).name = u"Foo"
        (self).parameters = _List([u"Object"])
        (self).fields = _List([])
        (self).methods = _List([pkg_Foo_Object__foo_Method(), pkg_Foo_Object__get_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_Foo_Object_.singleton = pkg_Foo_Object_()

class pkg_StringFoo_get_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(pkg_StringFoo_get_Method, self).__init__(u"builtin.String", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_StringFoo(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(pkg_StringFoo, self).__init__(u"pkg.StringFoo");
        (self).name = u"StringFoo"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([pkg_StringFoo_get_Method()])

    def construct(self, args):
        return pkg.StringFoo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_StringFoo.singleton = pkg_StringFoo()

class pkg_Box_builtin_String_(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(pkg_Box_builtin_String_, self).__init__(u"pkg.Box<builtin.String>");
        (self).name = u"Box"
        (self).parameters = _List([u"builtin.String"])
        (self).fields = _List([reflect.Field(u"builtin.String", u"contents")])
        (self).methods = _List([])

    def construct(self, args):
        return pkg.Box((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_Box_builtin_String_.singleton = pkg_Box_builtin_String_()

class pkg_StringBox(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(pkg_StringBox, self).__init__(u"pkg.StringBox");
        (self).name = u"StringBox"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"contents")])
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
Root.pkg_Foo_Object__md = pkg_Foo_Object_.singleton
Root.pkg_StringFoo_md = pkg_StringFoo.singleton
Root.pkg_Box_builtin_String__md = pkg_Box_builtin_String_.singleton
Root.pkg_StringBox_md = pkg_StringBox.singleton

import pkg
