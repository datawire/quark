from quark_runtime import *

class Test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        x = 1;
        y = 2;
        z = (((x) + (y)) - (3)) * (4);
        _println(z);
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
