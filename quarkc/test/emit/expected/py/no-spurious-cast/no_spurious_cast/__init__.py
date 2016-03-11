from quark_runtime import *

import builtin.reflect
import no_spurious_cast_md


class A(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"no_spurious_cast.A"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
A.no_spurious_cast_A_ref = no_spurious_cast_md.Root.no_spurious_cast_A_md
class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__();

    def _getClass(self):
        return u"no_spurious_cast.B"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
B.no_spurious_cast_B_ref = no_spurious_cast_md.Root.no_spurious_cast_B_md
class X(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"no_spurious_cast.X<builtin.Object>"

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
        return u"no_spurious_cast.Y"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Y.no_spurious_cast_X_builtin_int__ref = no_spurious_cast_md.Root.no_spurious_cast_X_builtin_int__md
Y.no_spurious_cast_Y_ref = no_spurious_cast_md.Root.no_spurious_cast_Y_md

def main():
    a = B();
    x = Y();
