from quark_runtime import *

import quark.reflect
import package_md



def go():
    _println(u"GOGO!!");

class Test(object):
    def _init(self):
        self.size = None

    def __init__(self): self._init()

    def go(self):
        _println(u"TTGO!!");

    def _getClass(self):
        return u"test.test.Test"

    def _getField(self, name):
        if ((name) == (u"size")):
            return (self).size

        return None

    def _setField(self, name, value):
        if ((name) == (u"size")):
            (self).size = value


Test.test_test_Test_ref = package_md.Root.test_test_Test_md
