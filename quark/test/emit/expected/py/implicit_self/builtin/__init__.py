from quark_runtime import *

class Foo(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def next(self):
        pass

    def test(self):
        self.next();

    def _getClass(self):
        return u"Foo"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
