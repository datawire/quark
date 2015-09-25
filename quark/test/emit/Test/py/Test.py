import os, sys

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)

class Test:
    def _init(self): pass
    def __init__(self): self._init()
    
    def foo(self, t):
        return Test();
    
    
    def test(self):
        x = 2;
        y = 2;
        z = (x) + (y);
        _println(z);
        hello = "hello";
        _println(hello);
        t1 = Test();
        t2 = (t1).foo(t1);
        if ((t2) != (t1)):
            _println("YAY!");
        
        four = (2) + (2);
        _println(four);
    


def main():
    (Test()).test();
