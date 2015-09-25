import os, sys

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)

class Macro:
    def _init(self): pass
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
    
