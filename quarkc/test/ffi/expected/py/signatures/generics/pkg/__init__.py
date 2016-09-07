from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class Foo(object):

    def foo(self):
        return _cast(None, lambda: T)

    def get(self):
        raise NotImplementedError('`Foo.get` is an abstract method')

Foo.generics_pkg_Foo_quark_Object__ref = None
class StringFoo(_QObject):
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

StringFoo.generics_pkg_StringFoo_ref = None
class Box(_QObject):
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


StringBox.generics_pkg_Box_quark_String__ref = None
StringBox.generics_pkg_StringBox_ref = None
