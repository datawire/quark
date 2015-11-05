from quark_runtime import *

import pets

class Pet(object):
    def _init(self): pass
    def __init__(self): self._init()

    def greet(self): assert False

class Cat(Pet):
    def _init(self):
        Pet._init(self)

    def greet(self):
        _println(u"meow!");


class Dog(Pet):
    def _init(self):
        Pet._init(self)

    def greet(self):
        _println(u"woof!");
