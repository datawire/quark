from quark_runtime import *

class Native(object):
    def _init(self): pass
    def __init__(self): self._init()

    def test(self):
        n1 = Native();
        n2 = Native();
        n1n2 = Native();
        n3 = n1n2;

