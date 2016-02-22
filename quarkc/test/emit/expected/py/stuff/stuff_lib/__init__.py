from quark_runtime import *

class Test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self, t):
        return Test()

    def test(self):
        x = 2;
        y = 2;
        z = (x) + (y);
        _println(z);
        hello = u"hello";
        _println(hello);
        t1 = Test();
        t2 = (t1).foo(t1);
        if ((t2) != (t1)):
            _println(u"YAY!");

        four = (2) + (2);
        _println(four);

    def _getClass(self):
        return u"Test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass


def main():
    (Test()).test();
