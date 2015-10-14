from quark_runtime import *

class Foo(object):
    def _init(self): pass
    def __init__(self): self._init()

    def m1(self): assert False

    def m2(self, arg): assert False

    def m3(self, args): assert False

class Bar(object):
    def _init(self): pass
    def __init__(self): self._init()

    def m1(self): assert False

    def m2(self, arg): assert False

    def m3(self, args): assert False
