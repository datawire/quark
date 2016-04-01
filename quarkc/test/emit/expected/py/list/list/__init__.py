from quark_runtime import *



def test1():
    list = _List();
    (list).append(1);
    (list).append(2);
    (list).append(3);
    _println((list)[0]);
    _println((list)[1]);
    _println((list)[2]);


def test2():
    list = _List();
    (list).append(u"one");
    (list).append(u"two");
    (list).append(u"three");
    _println((list)[0]);
    _println((list)[1]);
    _println((list)[2]);


def test3():
    list = _List([]);
    _println(list);
    list = _List([1])
    _println(list);
    list = _List([1, 2, 3])
    _println(list);


def test4():
    list = _List([]);
    _println(list);
    list = _List([u"one"])
    _println(list);
    list = _List([u"one", u"two", u"three"])
    _println(list);

class Box(object):
    def _init(self):
        self.contents = None

    def __init__(self): self._init()

    def get(self):
        return self.contents

    def set(self, contents):
        (self).contents = contents

    def _getClass(self):
        return u"list.Box<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = value




def test5():
    boxes = _List([]);
    (boxes).append(Box());
    ((boxes)[0]).set(3);
    _println(((boxes)[0]).get());
    boxes = _List([Box()])
    _println(((boxes)[0]).get());


def test6():
    matrix = _List([_List([1, 2, 3]), _List([4, 5, 6]), _List([7, 8, 9])]);
    _println(matrix);


def sorter():
    stuff = _List([u"Richard", u"Rafi", u"Abhay", u"Bozzo", u"Phil", u"Austin", u"Janice", u"Flynn", u"Vladimir"]);
    (stuff).sort();
    _println(stuff);

def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    test1();
    test2();
    test3();
    test4();
    test5();
    test6();
    sorter();
