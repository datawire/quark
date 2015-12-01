from quark_runtime import *


class Test(object):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()
        (self).name = name



def go():
    t = Test(u"Hello World!!");
    _println((t).name);
    _println((Test(u"Hello World!!")).name);
