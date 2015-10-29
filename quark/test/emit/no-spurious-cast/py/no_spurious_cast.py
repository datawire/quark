from quark_runtime import *

class A(object):
    def _init(self): pass
    def __init__(self): self._init()

class B(A):
    def _init(self):
        A._init(self)

    

class X(object):
    def _init(self): pass
    def __init__(self): self._init()

class Y(X):
    def _init(self):
        X._init(self)

    


def main():
    a = B();
    x = Y();


if __name__ == "__main__":
    main()
