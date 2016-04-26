from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class A(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"inheritance.t2.A"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
A.inheritance_t2_A_ref = quark_ffi_signatures_md.Root.inheritance_t2_A_md
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
B.inheritance_t2_B_ref = quark_ffi_signatures_md.Root.inheritance_t2_B_md
class X(object):
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
Y.inheritance_t2_X_quark_int__ref = quark_ffi_signatures_md.Root.inheritance_t2_X_quark_int__md
Y.inheritance_t2_Y_ref = quark_ffi_signatures_md.Root.inheritance_t2_Y_md
