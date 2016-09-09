from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("generics.constructors")
import quark.reflect


class Box(_QObject):
    def _init(self):
        self.contents = None

    def __init__(self, contents):
        self._init()

    def get(self):
        return _cast(None, lambda: T)

    def _getClass(self):
        return u"generics.constructors.Box<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = _cast(value, lambda: T)


Box.generics_constructors_Box_quark_Object__ref = None

def _lazy_import_quark_ffi_signatures_md():
    import quark_ffi_signatures_md
    globals().update(locals())
_lazyImport("import quark_ffi_signatures_md", _lazy_import_quark_ffi_signatures_md)



_lazyImport.pump("generics.constructors")
