from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class A(object):

    def foo(self):
        assert False

    def bar(self):
        pass

A.interfaces_A_ref = quark_ffi_signatures_md.Root.interfaces_A_md
class B(object):

    def bar(self):
        pass

B.interfaces_B_ref = quark_ffi_signatures_md.Root.interfaces_B_md
class C(object):

    def foo(self):
        pass

C.interfaces_C_ref = quark_ffi_signatures_md.Root.interfaces_C_md
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
T1.interfaces_T1_ref = quark_ffi_signatures_md.Root.interfaces_T1_md
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
T2.interfaces_T2_ref = quark_ffi_signatures_md.Root.interfaces_T2_md
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
T3.interfaces_T3_ref = quark_ffi_signatures_md.Root.interfaces_T3_md
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
T4.interfaces_T4_ref = quark_ffi_signatures_md.Root.interfaces_T4_md
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
T5.interfaces_T5_ref = quark_ffi_signatures_md.Root.interfaces_T5_md
class Foo(object):

    def m1(self):
        assert False

    def m2(self, arg):
        assert False

    def m3(self, args):
        assert False

Foo.interfaces_Foo_ref = quark_ffi_signatures_md.Root.interfaces_Foo_md
Foo.quark_List_quark_String__ref = quark_ffi_signatures_md.Root.quark_List_quark_String__md
class Bar(object):

    def m1(self):
        assert False

    def m2(self, arg):
        assert False

    def m3(self, args):
        assert False

Bar.interfaces_Bar_quark_Object__ref = quark_ffi_signatures_md.Root.interfaces_Bar_quark_Object__md
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
Baz.interfaces_Baz_ref = quark_ffi_signatures_md.Root.interfaces_Baz_md
class RazBar(object):
    pass
RazBar.interfaces_RazBar_ref = quark_ffi_signatures_md.Root.interfaces_RazBar_md
class RazFaz(object):
    pass
RazFaz.interfaces_RazFaz_quark_Object__ref = quark_ffi_signatures_md.Root.interfaces_RazFaz_quark_Object__md
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
BazBar.interfaces_BazBar_ref = quark_ffi_signatures_md.Root.interfaces_BazBar_md
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
BazFaz.interfaces_BazFaz_quark_Object__ref = quark_ffi_signatures_md.Root.interfaces_BazFaz_quark_Object__md
