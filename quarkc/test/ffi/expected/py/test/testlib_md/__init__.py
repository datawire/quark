from quark_runtime import *


class Root(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return _cast(None, lambda: unicode)

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
