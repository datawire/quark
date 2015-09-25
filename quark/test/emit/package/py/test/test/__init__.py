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


def go():
    _println("GOGO!!");

class Test:
    def _init(self):
        self.size = None
    
    def __init__(self): self._init()
    
    
    def go(self):
        _println("TTGO!!");
    
