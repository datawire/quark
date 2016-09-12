from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("inheritance.super_")
import quark.reflect


class A(_QObject):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()

    def greet(self):
        pass

    def _getClass(self):
        return u"inheritance.super_.A"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


A.inheritance_super__A_ref = None
class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__(None);

    def greet(self):
        pass

    def _getClass(self):
        return u"inheritance.super_.B"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


B.inheritance_super__B_ref = None

def _lazy_import_quark_ffi_signatures_md():
    import quark_ffi_signatures_md
    globals().update(locals())
_lazyImport("import quark_ffi_signatures_md", _lazy_import_quark_ffi_signatures_md)



_lazyImport.pump("inheritance.super_")
