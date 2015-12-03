from quark_runtime import *


class Foo(object):

    def foo(self):
        return self.get()

    def get(self): assert False

class StringFoo(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def get(self):
        return u"fdsa"

    def foo(self):
        return self.get()


class Box(object):
    def _init(self):
        self.contents = None

    def __init__(self, contents):
        self._init()
        (self).contents = contents


class StringBox(Box):
    def _init(self):
        Box._init(self)

    def __init__(self, contents):
        super(StringBox, self).__init__(contents);

