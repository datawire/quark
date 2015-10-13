from quark_runtime import *

class Test(object):
    def _init(self):
        self.name = None
    
    
    
    def __init__(self, name):
        self._init()
        (self).name = name
    


def go():
    t = Test("Hello World!!");
    _println((t).name);
    _println((Test("Hello World!!")).name);
