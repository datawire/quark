from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("inheritance.use_before_def")
import quark.reflect


class Bar(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def go(self):
        pass

    def _getClass(self):
        return u"inheritance.use_before_def.Bar"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Bar.inheritance_use_before_def_Bar_ref = None
class Foo(_QObject):
    def _init(self):
        self.name = None

    def __init__(self): self._init()

    def _getClass(self):
        return u"inheritance.use_before_def.Foo"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


Foo.inheritance_use_before_def_Foo_ref = None

def _lazy_import_quark_ffi_signatures_md():
    import quark_ffi_signatures_md
    globals().update(locals())
_lazyImport("import quark_ffi_signatures_md", _lazy_import_quark_ffi_signatures_md)



_lazyImport.pump("inheritance.use_before_def")
