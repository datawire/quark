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

"""
hey, here are some docs
here are some more docs
a bunch of docs in fact
"""
class Test:
    def _init(self):
        self.name = None
    
    def __init__(self): self._init()
    
    """
    method docs
    """
    
    def test(self, param):
        return 3;
    
