from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("org.example.foo")
import quark.reflect


class Foo(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        pass

    def _getClass(self):
        return u"org.example.foo.Foo"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Foo.org_example_foo_Foo_ref = None

def _lazy_import_org_example_foo_md():
    import org_example_foo_md
    globals().update(locals())
_lazyImport("import org_example_foo_md", _lazy_import_org_example_foo_md)



_lazyImport.pump("org.example.foo")
