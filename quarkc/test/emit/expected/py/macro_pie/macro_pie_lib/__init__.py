from quark_runtime import *

class Pie(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        p = Pie();
        x = 3;

    def _getClass(self):
        return u"Pie"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass


def main():
    _println(3);
