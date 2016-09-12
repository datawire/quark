from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("test")
import quark.reflect
import test.subtest



def go():
    pass
class Test(_QObject):
    """
    This is a package.

    It has multiple lines of docs.
    Hurrah!
    """
    def _init(self):
        self.name = None

    def __init__(self): self._init()

    def go(self):
        pass

    def _getClass(self):
        return u"test.Test"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


Test.test_Test_ref = None

def _lazy_import_package_md():
    import package_md
    globals().update(locals())
_lazyImport("import package_md", _lazy_import_package_md)



_lazyImport.pump("test")
