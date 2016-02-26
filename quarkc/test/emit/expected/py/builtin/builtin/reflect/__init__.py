from quark_runtime import *


class Class(object):
    def _init(self):
        self.id = None
        self.name = None
        self.parameters = _List([])
        self.fields = _List([])
        self.methods = _List([])

    def __init__(self, id):
        self._init()
        (self).id = id
        (Class.classes)[id] = (self);
        (self).name = id

    @staticmethod
    def get(id):
        return (Class.classes).get(id)

    def getId(self):
        return self.id

    def getName(self):
        return self.name

    def getParameters(self):
        result = _List([]);
        idx = 0;
        while ((idx) < (len(self.parameters))):
            (result).append(Class.get((self.parameters)[idx]));
            idx = (idx) + (1)

        return result

    def construct(self, args):
        return None

    def getFields(self):
        return self.fields

    def getField(self, name):
        idx = 0;
        while ((idx) < (len(self.fields))):
            if ((((self.fields)[idx]).name) == (name)):
                return (self.fields)[idx]

            idx = (idx) + (1)

        return None

    def getMethods(self):
        return self.methods

    def getMethod(self, name):
        idx = 0;
        while ((idx) < (len(self.methods))):
            if ((((self.methods)[idx]).name) == (name)):
                return (self.methods)[idx]

            idx = (idx) + (1)

        return None

    def _getClass(self):
        return u"builtin.reflect.Class"

    def _getField(self, name):
        if ((name) == (u"classes")):
            return Class.classes

        if ((name) == (u"VOID")):
            return Class.VOID

        if ((name) == (u"BOOL")):
            return Class.BOOL

        if ((name) == (u"INT")):
            return Class.INT

        if ((name) == (u"LONG")):
            return Class.LONG

        if ((name) == (u"FLOAT")):
            return Class.FLOAT

        if ((name) == (u"STRING")):
            return Class.STRING

        if ((name) == (u"id")):
            return (self).id

        if ((name) == (u"name")):
            return (self).name

        if ((name) == (u"parameters")):
            return (self).parameters

        if ((name) == (u"fields")):
            return (self).fields

        if ((name) == (u"methods")):
            return (self).methods

        return None

    def _setField(self, name, value):
        if ((name) == (u"classes")):
            Class.classes = value

        if ((name) == (u"VOID")):
            Class.VOID = value

        if ((name) == (u"BOOL")):
            Class.BOOL = value

        if ((name) == (u"INT")):
            Class.INT = value

        if ((name) == (u"LONG")):
            Class.LONG = value

        if ((name) == (u"FLOAT")):
            Class.FLOAT = value

        if ((name) == (u"STRING")):
            Class.STRING = value

        if ((name) == (u"id")):
            (self).id = value

        if ((name) == (u"name")):
            (self).name = value

        if ((name) == (u"parameters")):
            (self).parameters = value

        if ((name) == (u"fields")):
            (self).fields = value

        if ((name) == (u"methods")):
            (self).methods = value

    
Class.classes = {}
Class.VOID = Class(u"builtin.void")
Class.BOOL = Class(u"builtin.bool")
Class.INT = Class(u"builtin.int")
Class.LONG = Class(u"builtin.long")
Class.FLOAT = Class(u"builtin.float")
Class.STRING = Class(u"builtin.String")
class Field(object):
    def _init(self):
        self.type = None
        self.name = None

    def __init__(self, type, name):
        self._init()
        (self).type = type
        (self).name = name

    def getType(self):
        return Class.get(self.type)

    def getName(self):
        return self.name

    def _getClass(self):
        return u"builtin.reflect.Field"

    def _getField(self, name):
        if ((name) == (u"type")):
            return (self).type

        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"type")):
            (self).type = value

        if ((name) == (u"name")):
            (self).name = value

    

class Method(object):
    def _init(self):
        self.type = None
        self.name = None
        self.parameters = None

    def __init__(self, type, name, parameters):
        self._init()
        (self).type = type
        (self).name = name
        (self).parameters = parameters

    def getType(self):
        return Class.get(self.type)

    def getName(self):
        return self.name

    def getParameters(self):
        result = _List([]);
        idx = 0;
        while ((idx) < (len(self.parameters))):
            (result).append(Class.get((self.parameters)[idx]));
            idx = (idx) + (1)

        return result

    def invoke(self, object, args):
        assert False
