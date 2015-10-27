from quark_runtime import *

class Test(object):
    """
    hey, here are some docs
    here are some more docs
    a bunch of docs in fact
    """
    def _init(self):
        self.name = None

    def __init__(self): self._init()

    def test(self, param):
        """
        method docs
        """
        return 3
