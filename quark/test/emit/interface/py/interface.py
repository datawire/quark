import os, sys

_Map = dict
_List = list

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)

class Foo:
    def _init(self): pass
    def __init__(self): self._init()
    
    def m1(self): assert False
    
    def m2(self, arg): assert False
    
    def m3(self, args): assert False

class Bar:
    def _init(self): pass
    def __init__(self): self._init()
    
    def m1(self): assert False
    
    def m2(self, arg): assert False
    
    def m3(self, args): assert False
