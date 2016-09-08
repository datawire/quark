from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class Foo(_QObject):
    def _init(self):
        pass
    def __init__(self):
        self._init()

    @staticmethod
    def setCount(n):
        pass

    @staticmethod
    def getCount():
        return 0

    def test1(self):
        pass

    def test2(self):
        pass

    def test3(self):
        pass

    def test4(self):
        pass

    def _getClass(self):
        return u"statics.Foo"

    def _getField(self, name):
        if ((name) == (u"count")):
            return Foo.count

        return None

    def _setField(self, name, value):
        if ((name) == (u"count")):
            Foo.count = _cast(value, lambda: int)


Foo.count = None
Foo.statics_Foo_ref = None
