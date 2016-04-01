from quark_runtime import *

import quark.reflect


class pets_Cat_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(pets_Cat_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pets_Cat(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(pets_Cat, self).__init__(u"pets.Cat");
        (self).name = u"pets.Cat"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([pets_Cat_greet_Method()])

    def construct(self, args):
        return pets.Cat()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pets_Cat.singleton = pets_Cat()

class pets_Dog_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(pets_Dog_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pets_Dog(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(pets_Dog, self).__init__(u"pets.Dog");
        (self).name = u"pets.Dog"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([pets_Dog_greet_Method()])

    def construct(self, args):
        return pets.Dog()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pets_Dog.singleton = pets_Dog()

class quark_List_quark_String_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_String_, self).__init__(u"quark.List<quark.String>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.String"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_String_.singleton = quark_List_quark_String_()

class Root(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Root.pets_Cat_md = pets_Cat.singleton
Root.pets_Dog_md = pets_Dog.singleton

import pets
