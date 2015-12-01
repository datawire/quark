from quark_runtime import *

class A(object):
    def _init(self): pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"A");


class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__();

    def foo(self):
        _println(u"B");


class C(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(C, self).__init__();



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


if __name__ == "__main__":
    main()
