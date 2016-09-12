from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("interfaces")
import quark.reflect


class A(object):

    def foo(self):
        raise NotImplementedError('`A.foo` is an abstract method')

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
class T1(_QObject):
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
class T2(_QObject):
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
class T3(_QObject):
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
class T4(_QObject):
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
class T5(_QObject):
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
        raise NotImplementedError('`Foo.m1` is an abstract method')

    def m2(self, arg):
        raise NotImplementedError('`Foo.m2` is an abstract method')

    def m3(self, args):
        raise NotImplementedError('`Foo.m3` is an abstract method')

Foo.interfaces_Foo_ref = None
Foo.quark_List_quark_String__ref = None
class Bar(object):

    def m1(self):
        raise NotImplementedError('`Bar.m1` is an abstract method')

    def m2(self, arg):
        raise NotImplementedError('`Bar.m2` is an abstract method')

    def m3(self, args):
        raise NotImplementedError('`Bar.m3` is an abstract method')

Bar.interfaces_Bar_quark_Object__ref = None
class Baz(_QObject):
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
class BazBar(_QObject):
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
class BazFaz(_QObject):
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
class IConstants(object):
    pass
IConstants.FOO = u"foo"
IConstants.interfaces_IConstants_ref = None
class Constants(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"interfaces.Constants"

    def _getField(self, name):
        if ((name) == (u"FOO")):
            return IConstants.FOO

        return None

    def _setField(self, name, value):
        pass
Constants.interfaces_Constants_ref = None
Constants.FOO = u"foo"

def _lazy_import_quark_ffi_signatures_md():
    import quark_ffi_signatures_md
    globals().update(locals())
_lazyImport("import quark_ffi_signatures_md", _lazy_import_quark_ffi_signatures_md)



_lazyImport.pump("interfaces")
