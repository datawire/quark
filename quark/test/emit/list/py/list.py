import os, sys

_Map = dict
class _List(list):
    def __repr__(self):
        return "[%s]" % ", ".join([str(e) for e in self])

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)


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
    (list).append("one");
    (list).append("two");
    (list).append("three");
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
    list = _List(["one"])
    _println(list);
    list = _List(["one", "two", "three"])
    _println(list);

class Box:
    def _init(self):
        self.contents = None
    
    def __init__(self): self._init()
    
    
    def get(self):
        return self.contents;
    
    
    def set(self, contents):
        (self).contents = contents
    


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


def main():
    test1();
    test2();
    test3();
    test4();
    test5();
    test6();


if __name__ == "__main__":
    main()
