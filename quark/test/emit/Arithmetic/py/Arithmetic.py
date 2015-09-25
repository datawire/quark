import os, sys

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)

class Arithmetic:
    def _init(self): pass
    def __init__(self): self._init()
    
    def arithmetic(self):
        x = (2) + (2);
        return x;
    


def main():
    a = Arithmetic();
    _println((a).arithmetic());
