from quark_runtime import *


class Test(object):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()
        (self).name = name

    def _getClass(self):
        return u"test2.Test"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value

    


def go():
    t = Test(u"Hello World!!");
    _println((t).name);
    _println((Test(u"Hello World!!")).name);
