from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class A(object):

    def foo(self):
        assert False

    def bar(self):
        pass

A.interfaces_A_ref = None
class B(object):

    def bar(self):
        pass

B.interfaces_B_ref = None
class C(object):

    def foo(self):
        pass

C.interfaces_C_ref = None
class T1(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        pass

    def _getClass(self):
        return u"interfaces.T1"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        pass
T1.interfaces_T1_ref = None
class T2(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        pass

    def _getClass(self):
        return u"interfaces.T2"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        pass
T2.interfaces_T2_ref = None
class T3(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        pass

    def _getClass(self):
        return u"interfaces.T3"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        pass
T3.interfaces_T3_ref = None
class T4(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"interfaces.T4"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        pass

    def foo(self):
        pass
T4.interfaces_T4_ref = None
class T5(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        pass

    def _getClass(self):
        return u"interfaces.T5"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        pass
T5.interfaces_T5_ref = None
class Foo(object):

    def m1(self):
        assert False

    def m2(self, arg):
        assert False

    def m3(self, args):
        assert False

Foo.interfaces_Foo_ref = None
Foo.quark_List_quark_String__ref = None
class Bar(object):

    def m1(self):
        assert False

    def m2(self, arg):
        assert False

    def m3(self, args):
        assert False

Bar.interfaces_Bar_quark_Object__ref = None
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

    def _getClass(self):
        return u"interfaces.Baz"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Baz.interfaces_Baz_ref = None
class RazBar(object):
    pass
RazBar.interfaces_RazBar_ref = None
class RazFaz(object):
    pass
RazFaz.interfaces_RazFaz_quark_Object__ref = None
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

    def _getClass(self):
        return u"interfaces.BazBar"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
BazBar.interfaces_BazBar_ref = None
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

    def _getClass(self):
        return u"interfaces.BazFaz<quark.Object>"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
BazFaz.interfaces_BazFaz_quark_Object__ref = None
