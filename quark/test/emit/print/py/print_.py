import os, sys

_Map = dict
_List = list

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)

class Test:
    def _init(self): pass
    def __init__(self): self._init()
    
    def test(self):
        _println("Hello World!");
    


def main():
    (Test()).test();
