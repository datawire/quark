from quark_runtime import *

import builtin.reflect
import int_methods_md


class Test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        x = 1;
        y = 2;
        z = (((x) + (y)) - (3)) * (4);
        _println(z);
        four = (2) + (2);
        _println(four);

    def _getClass(self):
        return u"int_methods.Test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Test.int_methods_Test_ref = int_methods_md.Root.int_methods_Test_md

def main():
    (Test()).test();
