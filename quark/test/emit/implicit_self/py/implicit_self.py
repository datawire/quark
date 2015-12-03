from quark_runtime import *

class Foo(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def next(self):
        pass

    def test(self):
        self.next();

