from quark_runtime import *

class A(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"A"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__();

    def _getClass(self):
        return u"B"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class X(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"X<Object>"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class Y(X):
    def _init(self):
        X._init(self)

    def __init__(self):
        super(Y, self).__init__();

    def _getClass(self):
        return u"Y"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass


def main():
    a = B();
    x = Y();
