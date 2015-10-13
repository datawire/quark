from quark_runtime import *

class Box(object):
    def _init(self):
        self.contents = None
    
    def __init__(self): self._init()
    
    
    def set(self, contents):
        (self).contents = contents
    
    
    def get(self):
        return (self).contents;
    

class Crate(object):
    def _init(self):
        self.box = Box()
        self.ibox = Box()
    
    def __init__(self): self._init()
    
    
    
    def set(self, stuff):
        ((self).box).set(stuff);
    
    
    def get(self):
        return ((self).box).get();
    

class Sack(object):
    def _init(self):
        self.ints = Box()
    
    def __init__(self): self._init()
    


def test1():
    ibox = Box();
    (ibox).set(3);
    three = (ibox).get();
    _println(three);
    (ibox).contents = 4
    _println((ibox).contents);


def test2():
    sbox = Box();
    (sbox).set("hello");
    hello = (sbox).get();
    _println(hello);
    (sbox).contents = "world"
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
    (scrate).set("hello");
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
    _println("test1:\n--");
    test1();
    _println("");
    _println("test2:\n--");
    test2();
    _println("");
    _println("test3:\n--");
    test3();
    _println("");
    _println("test4:\n--");
    test4();
    _println("");
    _println("test5:\n--");
    test5();
    _println("");
    _println("test6:\n--");
    test6();


if __name__ == "__main__":
    main()
