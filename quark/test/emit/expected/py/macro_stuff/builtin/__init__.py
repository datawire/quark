from quark_runtime import *

class Macro(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        m1 = Macro();
        m2 = Macro();
        m3 = m1;
        m4 = m1;
        m5 = m2;
        m6 = m2;
        m7 = m1;
        m8 = m1;
        m9 = m2;
        m10 = m2;

    def _getClass(self):
        return u"Macro"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
