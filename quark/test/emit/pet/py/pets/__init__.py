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

class Pet(object):
    def _init(self): pass
    def __init__(self): self._init()
    
    def greet(self): assert False

class Cat(Pet):
    def _init(self):
        Pet._init(self)
        
    
    
    def greet(self):
        _println("meow!");
    

class Dog(Pet):
    def _init(self):
        Pet._init(self)
        
    
    
    def greet(self):
        _println("woof!");
