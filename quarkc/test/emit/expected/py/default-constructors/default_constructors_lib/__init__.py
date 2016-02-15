from quark_runtime import *

class A(object):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()
        (self).name = name

    def _getClass(self):
        return u"A"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value

    

class B(A):
    def _init(self):
        A._init(self)

    def __init__(self, name):
        super(B, self).__init__(name);

    def greet(self):
        _println((u"Hello, my name is ") + ((self).name));

    def _getClass(self):
        return u"B"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value

    

class C(A):
    def _init(self):
        A._init(self)

    def __init__(self, name):
        super(C, self).__init__((u"C") + (name));

    def greet(self):
        _println((u"Greetings, my name is ") + ((self).name));

    def _getClass(self):
        return u"C"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value

    

class X(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"X"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class Y(X):
    def _init(self):
        X._init(self)
        self.name = None

    def __init__(self, name):
        super(Y, self).__init__();
        (self).name = name

    def test(self):
        _println((self).name);

    def _getClass(self):
        return u"Y"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value

    


def main():
    b = B(u"Bob");
    (b).greet();
    c = C(u"arole");
    (c).greet();
    y = Y(u"asdf");
    (y).test();
