from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("org.example.bar")
import quark.reflect


class Bar(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        pass

    def _getClass(self):
        return u"org.example.bar.Bar"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Bar.org_example_bar_Bar_ref = None

def _lazy_import_overlapping_namespace_md():
    import overlapping_namespace_md
    globals().update(locals())
_lazyImport("import overlapping_namespace_md", _lazy_import_overlapping_namespace_md)



_lazyImport.pump("org.example.bar")
