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

    def foo(self):
        pass

    def _getClass(self):
        return u"inheritance.t1.A"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
A.inheritance_t1_A_ref = None
class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__();

    def foo(self):
        pass

    def _getClass(self):
        return u"inheritance.t1.B"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
B.inheritance_t1_B_ref = None
class C(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(C, self).__init__();

    def _getClass(self):
        return u"inheritance.t1.C"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
C.inheritance_t1_C_ref = None
