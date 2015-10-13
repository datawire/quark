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

class A(object):
    def _init(self):
        self.name = None
    
    
    
    def __init__(self, name):
        self._init()
        (self).name = name
    

class B(A):
    def _init(self):
        A._init(self)
        
    
    
    def greet(self):
        _println(("Hello, my name is ") + ((self).name));
    

class C(A):
    def _init(self):
        A._init(self)
        
    
    
    def __init__(self, name):
        super(C, self).__init__(("C") + (name));
    
    
    def greet(self):
        _println(("Greetings, my name is ") + ((self).name));
    

class X(object):
    def _init(self): pass
    def __init__(self): self._init()

class Y(X):
    def _init(self):
        X._init(self)
        self.name = None
    
    
    
    def __init__(self, name):
        super(Y, self).__init__()
        (self).name = name
    
    
    def test(self):
        _println((self).name);
    


def main():
    b = B("Bob");
    (b).greet();
    c = C("arole");
    (c).greet();
    y = Y("asdf");
    (y).test();


if __name__ == "__main__":
    main()
