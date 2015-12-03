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

    def bar(self):
        _println(u"A bar");
        (self).foo();


class T2(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T2 foo");

    def bar(self):
        _println(u"A bar");
        (self).foo();


class T3(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T3 foo");

    def bar(self):
        _println(u"B bar");


class T4(object):
    def _init(self):
        pass
    def __init__(self): self._init()

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

    def bar(self):
        _println(u"A bar");
        (self).foo();

