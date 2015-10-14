from quark_runtime import *

class A(object):
    def _init(self): pass
    def __init__(self): self._init()

    def foo(self):
        _println("A");


class B(A):
    def _init(self):
        A._init(self)

    def foo(self):
        _println("B");


class C(A):
    def _init(self):
        A._init(self)

    


def main():
    a = A();
    (a).foo();
    b = B();
    (b).foo();
    c = C();
    (c).foo();
    _println("--");
    a = b
    (a).foo();
    a = c
    (a).foo();


if __name__ == "__main__":
    main()
