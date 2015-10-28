from quark_runtime import *

class A(object):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()
        (self).name = name


class B(A):
    def _init(self):
        A._init(self)

    def greet(self):
        _println((u"Hello, my name is ") + ((self).name));


class C(A):
    def _init(self):
        A._init(self)

    def __init__(self, name):
        super(C, self).__init__((u"C") + (name));

    def greet(self):
        _println((u"Greetings, my name is ") + ((self).name));


class X(object):
    def _init(self): pass
    def __init__(self): self._init()

class Y(X):
    def _init(self):
        X._init(self)
        self.name = None

    def __init__(self, name):
        super(Y, self).__init__()
        (self).name = name

    def test(self):
        _println((self).name);



def main():
    b = B(u"Bob");
    (b).greet();
    c = C(u"arole");
    (c).greet();
    y = Y(u"asdf");
    (y).test();


if __name__ == "__main__":
    main()
