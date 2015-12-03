from quark_runtime import *

class Foo(object):

    def m1(self): assert False

    def m2(self, arg): assert False

    def m3(self, args): assert False

class Bar(object):

    def m1(self): assert False

    def m2(self, arg): assert False

    def m3(self, args): assert False

class Baz(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def m2(self, arg):
        pass

    def m1(self):
        pass

    def m3(self, args):
        pass

class RazBar(object):
    pass
class RazFaz(object):
    pass
class BazBar(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def m1(self):
        pass

    def m2(self, arg):
        pass

    def m3(self, args):
        pass

class BazFaz(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def m1(self):
        pass

    def m2(self, arg):
        pass

    def m3(self, args):
        pass
