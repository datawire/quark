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

class Baz(Foo):
    def _init(self):
        Foo._init(self)

    def m2(self, arg): pass

    def m1(self): pass

    def m3(self, args): pass

class RazBar(Bar):
    def _init(self):
        Bar._init(self)

    

class RazFaz(Bar):
    def _init(self):
        Bar._init(self)

    

class BazBar(Bar):
    def _init(self):
        Bar._init(self)

    def m1(self): pass

    def m2(self, arg): pass

    def m3(self, args): pass

class BazFaz(Bar):
    def _init(self):
        Bar._init(self)

    def m1(self): pass

    def m2(self, arg): pass

    def m3(self, args): pass
