from quark_runtime import *

class A(object):
    def _init(self):
        pass
    def __init__(self): self._init()

class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__();


class X(object):
    def _init(self):
        pass
    def __init__(self): self._init()

class Y(X):
    def _init(self):
        X._init(self)

    def __init__(self):
        super(Y, self).__init__();



def main():
    a = B();
    x = Y();


if __name__ == "__main__":
    main()
