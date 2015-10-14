from quark_runtime import *

class A(object):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()
        (self).name = name

    def greet(self):
        _println("Hello");


class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__("Bob");

    def greet(self):
        (super(B, self)).greet();
        _println(("I'm ") + ((self).name));



def main():
    b = B();
    (b).greet();


if __name__ == "__main__":
    main()
