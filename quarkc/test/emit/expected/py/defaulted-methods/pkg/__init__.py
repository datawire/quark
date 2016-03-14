from quark_runtime import *

import quark.reflect
import defaulted_methods_md


class A(object):

    def foo(self):
        assert False

    def bar(self):
        _println(u"A bar");
        (self).foo();


A.pkg_A_ref = defaulted_methods_md.Root.pkg_A_md
class B(object):

    def bar(self):
        _println(u"B bar");


B.pkg_B_ref = defaulted_methods_md.Root.pkg_B_md
class C(object):

    def foo(self):
        _println(u"C mixin for foo");


C.pkg_C_ref = defaulted_methods_md.Root.pkg_C_md
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

T1.pkg_T1_ref = defaulted_methods_md.Root.pkg_T1_md
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

T2.pkg_T2_ref = defaulted_methods_md.Root.pkg_T2_md
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

T3.pkg_T3_ref = defaulted_methods_md.Root.pkg_T3_md
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

T4.pkg_T4_ref = defaulted_methods_md.Root.pkg_T4_md
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

T5.pkg_T5_ref = defaulted_methods_md.Root.pkg_T5_md
