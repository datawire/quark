from quark_runtime import *


def go():
    _println("GOGO!!");

class Test(object):
    def _init(self):
        self.size = None
    
    def __init__(self): self._init()
    
    
    def go(self):
        _println("TTGO!!");
