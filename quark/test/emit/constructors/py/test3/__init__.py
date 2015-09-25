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

class Box:
    def _init(self):
        self.contents = None
    
    
    
    def __init__(self, contents):
        self._init()
        (self).contents = contents
    
    
    def get(self):
        return (self).contents;
    


def go():
    box = Box("Hello World!!!");
    _println((box).get());
    _println((box).contents);
    _println((Box("Hello World!!!")).get());
    _println((Box("Hello World!!!")).contents);
