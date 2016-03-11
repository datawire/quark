from quark_runtime import *

import builtin.reflect
import static_md


class Foo(object):
    def _init(self):
        pass
    def __init__(self):
        self._init()
        Foo.count = (Foo.count) + (1)

    @staticmethod
    def setCount(n):
        Foo.count = n

    @staticmethod
    def getCount():
        return Foo.count

    def test1(self):
        Foo.count = (Foo.count) + (1)

    def test2(self):
        Foo.count = (Foo.count) + (1)

    def test3(self):
        Foo.count = (Foo.count) + (1)

    def test4(self):
        Foo.setCount((Foo.getCount()) + (1));

    def _getClass(self):
        return u"static.Foo"

    def _getField(self, name):
        if ((name) == (u"count")):
            return Foo.count

        return None

    def _setField(self, name, value):
        if ((name) == (u"count")):
            Foo.count = value

    
Foo.count = 0
Foo.static_Foo_ref = static_md.Root.static_Foo_md

def main():
    _println(Foo.count);
    f = Foo();
    _println(Foo.count);
    _println(Foo.count);
    f = Foo()
    _println(Foo.count);
    _println(Foo.count);
    _println(u"==");
    (f).test1();
    _println(Foo.count);
    _println(Foo.count);
    _println(u"==");
    (f).test2();
    _println(Foo.count);
    _println(Foo.count);
    _println(u"==");
    (f).test3();
    _println(Foo.count);
    _println(Foo.count);
    _println(u"==");
    (f).test4();
    _println(Foo.getCount());
    _println(Foo.getCount());
    _println(u"==");
    Foo.setCount(0);
    _println(Foo.count);
    _println(Foo.count);
    _println(Foo.getCount());
    _println(Foo.getCount());
    _println(u"==");
    Foo.setCount(-(1));
    _println(Foo.count);
    _println(Foo.count);
    _println(Foo.getCount());
    _println(Foo.getCount());
