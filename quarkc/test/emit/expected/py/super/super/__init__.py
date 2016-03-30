from quark_runtime import *

import quark.reflect
import super_md


class A(object):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()
        (self).name = name

    def greet(self):
        _println(u"Hello");

    def _getClass(self):
        return u"super.A"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value


A.super_A_ref = super_md.Root.super_A_md
class B(A):
    def _init(self):
        A._init(self)

    def __init__(self):
        super(B, self).__init__(u"Bob");

    def greet(self):
        super(B, self).greet();
        _println((u"I'm ") + ((self).name));

    def _getClass(self):
        return u"super.B"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value


B.super_B_ref = super_md.Root.super_B_md

def main():
    b = B();
    (b).greet();
