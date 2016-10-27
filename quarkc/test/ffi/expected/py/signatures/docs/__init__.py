from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("docs")
import quark.reflect


class Test(_QObject):
    """
    hey, here are some docs
    here are some more docs
    one that <breaks> javadoc
    even if C# < Java and
    Python >> bash
    a bunch of docs in fact
    """
    def _init(self):
        self.name = None

    def __init__(self): self._init()

    def test(self, param):
        """
        method docs
        """
        return 3

    def _getClass(self):
        return u"docs.Test"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


Test.docs_Test_ref = None

def _lazy_import_quark_ffi_signatures_md():
    import quark_ffi_signatures_md
    globals().update(locals())
_lazyImport("import quark_ffi_signatures_md", _lazy_import_quark_ffi_signatures_md)



_lazyImport.pump("docs")
