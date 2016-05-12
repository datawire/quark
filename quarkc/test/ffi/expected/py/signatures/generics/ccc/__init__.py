from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class TLSContextInitializer(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def getValue(self):
        return None

    def _getClass(self):
        return u"generics.ccc.TLSContextInitializer"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
TLSContextInitializer.generics_ccc_TLSContextInitializer_ref = None
class Context(object):
    def _init(self):
        self.parent = None

    def __init__(self, parent):
        self._init()

    @staticmethod
    def current():
        return None

    @staticmethod
    def global_():
        return None

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
            Context._global = value

        if ((name) == (u"_current")):
            Context._current = value

        if ((name) == (u"parent")):
            (self).parent = value


Context._global = None
Context._current = None
Context.generics_ccc_Context_ref = None
Context.generics_ccc_TLS_generics_ccc_Context__ref = None
class TLSInitializer(object):

    def getValue(self):
        assert False

TLSInitializer.generics_ccc_TLSInitializer_quark_Object__ref = None
class TLS(object):
    def _init(self):
        self._value = None

    def __init__(self, initializer):
        self._init()

    def getValue(self):
        return None

    def _getClass(self):
        return u"generics.ccc.TLS<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"_value")):
            return (self)._value

        return None

    def _setField(self, name, value):
        if ((name) == (u"_value")):
            (self)._value = value


