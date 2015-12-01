from quark_runtime import *


class Pet(object):
    def _init(self): pass
    def __init__(self): self._init()

    def greet(self): assert False

class Cat(Pet):
    def _init(self):
        Pet._init(self)

    def __init__(self):
        super(Cat, self).__init__();

    def greet(self):
        _println(u"meow!");


class Dog(Pet):
    def _init(self):
        Pet._init(self)

    def __init__(self):
        super(Dog, self).__init__();

    def greet(self):
        _println(u"woof!");

