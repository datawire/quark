from quark_runtime import *

class Overload(object):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()
        (self).name = name

    def __add__(self, o):
        return o

    def __mul__(self, o):
        return self

    def test(self):
        o1 = Overload(u"one");
        o2 = Overload(u"two");
        o3 = (o1).__add__(o2);
        _println((o3).name);
        o3 = (o1).__mul__(o2)
        _println((o3).name);
        if ((o3) == (o1)):
            _println(u"YAY!");

    def _getClass(self):
        return u"Overload"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value

    


def main():
    o = Overload(u"test");
    (o).test();
