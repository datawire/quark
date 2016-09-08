from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *

import quark.reflect
import package_md



def go():
    pass
class Test(_QObject):
    def _init(self):
        self.size = None

    def __init__(self): self._init()

    def go(self):
        pass

    def _getClass(self):
        return u"test.subtest.Test"

    def _getField(self, name):
        if ((name) == (u"size")):
            return (self).size

        return None

    def _setField(self, name, value):
        if ((name) == (u"size")):
            (self).size = _cast(value, lambda: int)


Test.test_subtest_Test_ref = None
