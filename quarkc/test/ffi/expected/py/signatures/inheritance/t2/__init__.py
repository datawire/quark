from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class A(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"inheritance.t2.A"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
A.inheritance_t2_A_ref = None
class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__();

    def _getClass(self):
        return u"inheritance.t2.B"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
B.inheritance_t2_B_ref = None
class X(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"inheritance.t2.X<quark.Object>"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class Y(X):
    def _init(self):
        X._init(self)

    def __init__(self):
        super(Y, self).__init__();

    def _getClass(self):
        return u"inheritance.t2.Y"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Y.inheritance_t2_X_quark_int__ref = None
Y.inheritance_t2_Y_ref = None
