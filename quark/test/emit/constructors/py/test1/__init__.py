from quark_runtime import *


class Test(object):
    def _init(self):
        self.name = None

    def __init__(self):
        self._init()
        (self).name = u"Hello World!"

    def _getClass(self):
        return u"test1.Test"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value

    


def go():
    t = Test();
    _println((t).name);
    _println((Test()).name);
