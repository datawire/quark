from quark_runtime import *

class A(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"A");

    def _getClass(self):
        return u"A"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__();

    def foo(self):
        _println(u"B");

    def _getClass(self):
        return u"B"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class C(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(C, self).__init__();

    def _getClass(self):
        return u"C"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass


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
