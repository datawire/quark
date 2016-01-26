from quark_runtime import *

import builtin.reflect
import pet_md


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
Cat.pets_Cat_ref = pet_md.Root.pets_Cat_md
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
Dog.pets_Dog_ref = pet_md.Root.pets_Dog_md

def main():
    evil = Cat();
    good = Dog();
    (evil).greet();
    (good).greet();
