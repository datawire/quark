from quark_runtime import *

class Bar(object):
    def _init(self): pass
    def __init__(self): self._init()

    def go(self):
        foo = Foo();
        (foo).name = u"bob"
        _println((foo).name);


class Foo(object):
    def _init(self):
        self.name = None

    def __init__(self): self._init()
