from quark_runtime import *


class Pet(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def greet(self):
        assert False

class Cat(Pet):
    def _init(self):
        Pet._init(self)

    def __init__(self):
        super(Cat, self).__init__();

    def greet(self):
        _println(u"meow!");

    def _getClass(self):
        return u"pets.Cat"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class Dog(Pet):
    def _init(self):
        Pet._init(self)

    def __init__(self):
        super(Dog, self).__init__();

    def greet(self):
        _println(u"woof!");

    def _getClass(self):
        return u"pets.Dog"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
