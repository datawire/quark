from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class Foo(object):

    def foo(self):
        return _cast(None, lambda: T)

    def get(self):
        raise NotImplementedError('`Foo.get` is an abstract method')

Foo.generics_pkg_Foo_quark_Object__ref = quark_ffi_signatures_md.Root.generics_pkg_Foo_quark_Object__md
class StringFoo(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def get(self):
        return _cast(None, lambda: unicode)

    def _getClass(self):
        return u"generics.pkg.StringFoo"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def foo(self):
        return _cast(None, lambda: unicode)

StringFoo.generics_pkg_StringFoo_ref = quark_ffi_signatures_md.Root.generics_pkg_StringFoo_md
class Box(object):
    def _init(self):
        self.contents = None

    def __init__(self, contents):
        self._init()

    def _getClass(self):
        return u"generics.pkg.Box<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = _cast(value, lambda: T)



class StringBox(Box):
    def _init(self):
        Box._init(self)

    def __init__(self, contents):
        super(StringBox, self).__init__(contents);

    def _getClass(self):
        return u"generics.pkg.StringBox"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = _cast(value, lambda: unicode)


StringBox.generics_pkg_Box_quark_String__ref = quark_ffi_signatures_md.Root.generics_pkg_Box_quark_String__md
StringBox.generics_pkg_StringBox_ref = quark_ffi_signatures_md.Root.generics_pkg_StringBox_md
