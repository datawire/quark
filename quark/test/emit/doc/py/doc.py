from quark_runtime import *

"""
hey, here are some docs
here are some more docs
a bunch of docs in fact
"""
class Test(object):
    def _init(self):
        self.name = None
    
    def __init__(self): self._init()
    
    """
    method docs
    """
    
    def test(self, param):
        return 3;
