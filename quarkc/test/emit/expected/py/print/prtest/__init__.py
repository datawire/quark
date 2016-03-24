from quark_runtime import *

import quark.reflect
import prtest_md


class Test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        _println(u"Hello World!");

    def _getClass(self):
        return u"prtest.Test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Test.prtest_Test_ref = prtest_md.Root.prtest_Test_md

def main():
    (Test()).test();
