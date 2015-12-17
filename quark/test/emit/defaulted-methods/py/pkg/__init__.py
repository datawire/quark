from quark_runtime import *


class A(object):

    def foo(self): assert False

    def bar(self):
        _println(u"A bar");
        (self).foo();


class B(object):

    def bar(self):
        _println(u"B bar");


class C(object):

    def foo(self):
        _println(u"C mixin for foo");


class T1(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T1 foo");

    def _getClass(self):
        return u"pkg.T1"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"A bar");
        (self).foo();


class T2(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T2 foo");

    def _getClass(self):
        return u"pkg.T2"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"A bar");
        (self).foo();


class T3(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T3 foo");

    def _getClass(self):
        return u"pkg.T3"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"B bar");


class T4(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"pkg.T4"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"A bar");
        (self).foo();

    def foo(self):
        _println(u"C mixin for foo");


class T5(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T5 foo");

    def _getClass(self):
        return u"pkg.T5"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"A bar");
        (self).foo();

