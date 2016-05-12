from quark_runtime import *

import quark.reflect
import subtest
import package_md



def go():
    pass
class Test(object):
    def _init(self):
        self.name = None

    def __init__(self): self._init()

    def go(self):
        pass

    def _getClass(self):
        return u"test.Test"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value


Test.test_Test_ref = None
