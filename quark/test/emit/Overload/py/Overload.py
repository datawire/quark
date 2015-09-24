import os, sys

class Overload:
    
    
    def __init__(self, name):
        (self).name = name
    
    
    def __add__(self, o):
        return o;
    
    
    def __mul__(self, o):
        return self;
    
    
    def test(self):
        o1 = Overload("one");
        o2 = Overload("two");
        o3 = (o1).__add__(o2);
        sys.stdout.write(str((o3).name) + "\n");
        o3 = (o1).__mul__(o2)
        sys.stdout.write(str((o3).name) + "\n");
    


def main():
    o = Overload("test");
    (o).test();
