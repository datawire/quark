from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class Test(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self, t):
        return _cast(None, lambda: Test)

    def test(self):
        pass

    def _getClass(self):
        return u"classes.stuff.Test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Test.classes_stuff_Test_ref = None
