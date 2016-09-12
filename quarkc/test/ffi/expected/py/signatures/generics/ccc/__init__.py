from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("generics.ccc")
import quark.reflect


class TLSContextInitializer(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def getValue(self):
        return _cast(None, lambda: Context)

    def _getClass(self):
        return u"generics.ccc.TLSContextInitializer"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
TLSContextInitializer.generics_ccc_TLSContextInitializer_ref = None
class Context(_QObject):
    def _init(self):
        self.parent = None

    def __init__(self, parent):
        self._init()

    @staticmethod
    def current():
        return _cast(None, lambda: Context)

    @staticmethod
    def global_():
        return _cast(None, lambda: Context)

    def _getClass(self):
        return u"generics.ccc.Context"

    def _getField(self, name):
        if ((name) == (u"_global")):
            return Context._global

        if ((name) == (u"_current")):
            return Context._current

        if ((name) == (u"parent")):
            return (self).parent

        return None

    def _setField(self, name, value):
        if ((name) == (u"_global")):
            Context._global = _cast(value, lambda: Context)

        if ((name) == (u"_current")):
            Context._current = _cast(value, lambda: TLS)

        if ((name) == (u"parent")):
            (self).parent = _cast(value, lambda: Context)


Context._global = None
Context._current = None
Context.generics_ccc_Context_ref = None
Context.generics_ccc_TLS_generics_ccc_Context__ref = None
class TLSInitializer(object):

    def getValue(self):
        raise NotImplementedError('`TLSInitializer.getValue` is an abstract method')

TLSInitializer.generics_ccc_TLSInitializer_quark_Object__ref = None
class TLS(_QObject):
    def _init(self):
        self._value = None

    def __init__(self, initializer):
        self._init()

    def getValue(self):
        return _cast(None, lambda: T)

    def _getClass(self):
        return u"generics.ccc.TLS<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"_value")):
            return (self)._value

        return None

    def _setField(self, name, value):
        if ((name) == (u"_value")):
            (self)._value = _cast(value, lambda: T)




def _lazy_import_quark_ffi_signatures_md():
    import quark_ffi_signatures_md
    globals().update(locals())
_lazyImport("import quark_ffi_signatures_md", _lazy_import_quark_ffi_signatures_md)



_lazyImport.pump("generics.ccc")
