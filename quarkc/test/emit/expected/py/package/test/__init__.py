from quark_runtime import *

import builtin.reflect
import test
import package_md



def go():
    _println(u"GO!");

class Test(object):
    def _init(self):
        self.name = None

    def __init__(self): self._init()

    def go(self):
        _println(u"TGO!");

    def _getClass(self):
        return u"test.Test"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value


Test.test_Test_ref = package_md.Root.test_Test_md

def main():
    go();
    test.go();
    t1 = Test();
    t2 = test.Test();
    (t1).go();
    (t2).go();
