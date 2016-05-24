from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class A(object):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()

    def greet(self):
        pass

    def _getClass(self):
        return u"inheritance.super_.A"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


A.inheritance_super__A_ref = quark_ffi_signatures_md.Root.inheritance_super__A_md
class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__(None);

    def greet(self):
        pass

    def _getClass(self):
        return u"inheritance.super_.B"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


B.inheritance_super__B_ref = quark_ffi_signatures_md.Root.inheritance_super__B_md
