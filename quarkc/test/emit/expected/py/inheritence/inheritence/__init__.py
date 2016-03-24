from quark_runtime import *

import quark.reflect
import inheritence_md


class A(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"A");

    def _getClass(self):
        return u"inheritence.A"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
A.inheritence_A_ref = inheritence_md.Root.inheritence_A_md
class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__();

    def foo(self):
        _println(u"B");

    def _getClass(self):
        return u"inheritence.B"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
B.inheritence_B_ref = inheritence_md.Root.inheritence_B_md
class C(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(C, self).__init__();

    def _getClass(self):
        return u"inheritence.C"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
C.inheritence_C_ref = inheritence_md.Root.inheritence_C_md

def main():
    a = A();
    (a).foo();
    b = B();
    (b).foo();
    c = C();
    (c).foo();
    _println(u"--");
    a = b
    (a).foo();
    a = c
    (a).foo();
