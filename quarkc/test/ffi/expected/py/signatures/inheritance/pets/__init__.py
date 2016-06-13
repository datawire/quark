from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class Pet(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def greet(self):
        raise NotImplementedError('`Pet.greet` is an abstract method')

class Cat(Pet):
    def _init(self):
        Pet._init(self)

    def __init__(self):
        super(Cat, self).__init__();

    def greet(self):
        _println(u"meow!");

    def _getClass(self):
        return u"inheritance.pets.Cat"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Cat.inheritance_pets_Cat_ref = None
class Dog(Pet):
    def _init(self):
        Pet._init(self)

    def __init__(self):
        super(Dog, self).__init__();

    def greet(self):
        _println(u"woof!");

    def _getClass(self):
        return u"inheritance.pets.Dog"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Dog.inheritance_pets_Dog_ref = None
