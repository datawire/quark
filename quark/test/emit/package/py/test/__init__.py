import os, sys

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)


def go():
    _println("GO!");

class Test:
    def _init(self):
        self.name = None
    
    def __init__(self): self._init()
    
    
    def go(self):
        _println("TGO!");
    

import test