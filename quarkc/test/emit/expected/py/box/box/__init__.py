from quark_runtime import *

import quark.reflect
import box_md


class Box(object):
    def _init(self):
        self.contents = None

    def __init__(self): self._init()

    def set(self, contents):
        (self).contents = contents

    def get(self):
        return (self).contents

    def _getClass(self):
        return u"box.Box<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = value



class Crate(object):
    def _init(self):
        self.box = Box()
        self.ibox = Box()

    def __init__(self): self._init()

    def set(self, stuff):
        ((self).box).set(stuff);

    def get(self):
        return ((self).box).get()

    def _getClass(self):
        return u"box.Crate<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"box")):
            return (self).box

        if ((name) == (u"ibox")):
            return (self).ibox

        return None

    def _setField(self, name, value):
        if ((name) == (u"box")):
            (self).box = value

        if ((name) == (u"ibox")):
            (self).ibox = value


Crate.box_Box_quark_Object__ref = box_md.Root.box_Box_quark_Object__md
Crate.box_Box_quark_int__ref = box_md.Root.box_Box_quark_int__md
class Sack(object):
    def _init(self):
        self.ints = Box()

    def __init__(self): self._init()

    def _getClass(self):
        return u"box.Sack"

    def _getField(self, name):
        if ((name) == (u"ints")):
            return (self).ints

        return None

    def _setField(self, name, value):
        if ((name) == (u"ints")):
            (self).ints = value


Sack.box_Sack_ref = box_md.Root.box_Sack_md

def test1():
    ibox = Box();
    (ibox).set(3);
    three = (ibox).get();
    _println(three);
    (ibox).contents = 4
    _println((ibox).contents);


def test2():
    sbox = Box();
    (sbox).set(u"hello");
    hello = (sbox).get();
    _println(hello);
    (sbox).contents = u"world"
    _println((sbox).contents);


def test3():
    icrate = Crate();
    (icrate).set(3);
    _println((icrate).get());
    (icrate).set(4);
    _println(((icrate).box).contents);


def test4():
    s = Sack();
    _println(((s).ints).get());
    _println(((s).ints).contents);
    ((s).ints).set(3);
    _println(((s).ints).get());
    _println(((s).ints).contents);
    ((s).ints).contents = 4
    _println(((s).ints).get());
    _println(((s).ints).contents);


def test5():
    scrate = Crate();
    _println((scrate).get());
    _println(((scrate).box).contents);
    (scrate).set(u"hello");
    _println((scrate).get());
    _println(((scrate).box).contents);
    ((scrate).ibox).contents = 3
    _println(((scrate).ibox).contents);


def test6():
    box = Box();
    (box).set(Box());
    ((box).get()).set(3);
    _println(((box).get()).get());
    _println(((box).contents).contents);


def main():
    _println(u"test1:\n--");
    test1();
    _println(u"");
    _println(u"test2:\n--");
    test2();
    _println(u"");
    _println(u"test3:\n--");
    test3();
    _println(u"");
    _println(u"test4:\n--");
    test4();
    _println(u"");
    _println(u"test5:\n--");
    test5();
    _println(u"");
    _println(u"test6:\n--");
    test6();
