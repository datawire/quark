from quark_runtime import *

class Test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        _println(u"Hello World!");

    def _getClass(self):
        return u"Test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass


def main():
    (Test()).test();
