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

class Test:
    def _init(self):
        self.name = None
    
    
    
    def __init__(self):
        self._init()
        (self).name = "Hello World!"
    


def go():
    t = Test();
    _println((t).name);
    _println((Test()).name);
