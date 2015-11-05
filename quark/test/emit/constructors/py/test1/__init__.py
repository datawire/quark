from quark_runtime import *

import test1

class Test(object):
    def _init(self):
        self.name = None

    def __init__(self):
        self._init()
        (self).name = u"Hello World!"



def go():
    t = Test();
    _println((t).name);
    _println((Test()).name);
