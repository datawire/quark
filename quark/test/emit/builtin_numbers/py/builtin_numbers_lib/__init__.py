from quark_runtime import *




# BEGIN_BUILTIN

class Class(object):
    def _init(self):
        self.id = None
        self.name = None
        self.parameters = None

    def __init__(self, id):
        self._init()
        (self).id = id
        _class(self);

    def getId(self):
        return self.id

    def getName(self):
        return self.name

    def getParameters(self):
        return self.parameters

    def construct(self, args):
        return _construct(self.getId(), args)

    def getFields(self):
        return _fields((self).id)

    def _getClass(self):
        return u"Class"

    def _getField(self, name):
        if ((name) == (u"id")):
            return (self).id

        if ((name) == (u"name")):
            return (self).name

        if ((name) == (u"parameters")):
            return (self).parameters

        return None

    def _setField(self, name, value):
        if ((name) == (u"id")):
            (self).id = value

        if ((name) == (u"name")):
            (self).name = value

        if ((name) == (u"parameters")):
            (self).parameters = value

    

# END_BUILTIN

# BEGIN_BUILTIN

class Field(object):
    def _init(self):
        self.type = None
        self.name = None

    def __init__(self, type, name):
        self._init()
        (self).type = type
        (self).name = name

    def _getClass(self):
        return u"Field"

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

    

# END_BUILTIN

# BEGIN_BUILTIN


def toJSON(obj):
    result = _JSONObject();
    if ((obj) == (None)):
        (result).setNull();
        return result

    cls = Class(_getClass(obj));
    idx = 0;
    if (((cls).name) == (u"String")):
        (result).setString(obj);
        return result

    if (((((((cls).name) == (u"byte")) or (((cls).name) == (u"short"))) or (((cls).name) == (u"int"))) or (((cls).name) == (u"long"))) or (((cls).name) == (u"float"))):
        (result).setNumber(obj);
        return result

    if (((cls).name) == (u"List")):
        (result).setList();
        list = obj;
        while ((idx) < (len(list))):
            (result).setListItem(idx, toJSON((list)[idx]));
            idx = (idx) + (1)

        return result

    if (((cls).name) == (u"Map")):
        (result).setObject();
        map = obj;
        return result

    (result).setObjectItem((u"$class"), ((_JSONObject()).setString((cls).id)));
    fields = (cls).getFields();
    while ((idx) < (len(fields))):
        (result).setObjectItem((((fields)[idx]).name), (toJSON((obj)._getField(((fields)[idx]).name))));
        idx = (idx) + (1)

    return result

# END_BUILTIN

# BEGIN_BUILTIN


def fromJSON(cls, json):
    if (((json) == (None)) or ((json).isNull())):
        return None

    idx = 0;
    if (((cls).name) == (u"List")):
        list = (cls).construct(_List([]));
        while ((idx) < ((json).size())):
            (list).append(fromJSON(((cls).parameters)[0], (json).getListItem(idx)));
            idx = (idx) + (1)

        return list

    fields = (cls).getFields();
    result = (cls).construct(_List([]));
    while ((idx) < (len(fields))):
        f = (fields)[idx];
        idx = (idx) + (1)
        if ((((f).type).name) == (u"String")):
            s = ((json).getObjectItem((f).name)).getString();
            (result)._setField(((f).name), (s));
            continue;

        if ((((f).type).name) == (u"float")):
            flt = ((json).getObjectItem((f).name)).getNumber();
            (result)._setField(((f).name), (flt));
            continue;

        if ((((f).type).name) == (u"int")):
            if (not (((json).getObjectItem((f).name)).isNull())):
                i = int(round(((json).getObjectItem((f).name)).getNumber()));
                (result)._setField(((f).name), (i));

            continue;

        if ((((f).type).name) == (u"bool")):
            if (not (((json).getObjectItem((f).name)).isNull())):
                b = ((json).getObjectItem((f).name)).getBool();
                (result)._setField(((f).name), (b));

            continue;

        (result)._setField(((f).name), (fromJSON((f).type, (json).getObjectItem((f).name))));

    return result

# END_BUILTIN

class TestByte(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return int()

    def _getClass(self):
        return u"TestByte"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class TestShort(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return int()

    def _getClass(self):
        return u"TestShort"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class TestInt(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return int()

    def _getClass(self):
        return u"TestInt"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class TestLong(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return long()

    def _getClass(self):
        return u"TestLong"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass


def main():
    (TestByte()).run();
    (TestShort()).run();
    (TestInt()).run();
    (TestLong()).run();


def _construct(className, args):
    if ((className) == (u"Class")):
        return Class((args)[0])

    if ((className) == (u"Field")):
        return Field((args)[0], (args)[1])

    if ((className) == (u"List<Object>")):
        return _List()

    if ((className) == (u"List<Field>")):
        return _List()

    if ((className) == (u"List<Class>")):
        return _List()

    if ((className) == (u"List<String>")):
        return _List()

    if ((className) == (u"Map<Object,Object>")):
        return _Map()

    if ((className) == (u"Map<String,Object>")):
        return _Map()

    if ((className) == (u"Map<byte,byte>")):
        return _Map()

    if ((className) == (u"Map<short,short>")):
        return _Map()

    if ((className) == (u"Map<int,int>")):
        return _Map()

    if ((className) == (u"Map<long,long>")):
        return _Map()

    if ((className) == (u"TestByte")):
        return TestByte()

    if ((className) == (u"TestShort")):
        return TestShort()

    if ((className) == (u"TestInt")):
        return TestInt()

    if ((className) == (u"TestLong")):
        return TestLong()

    return None


def _fields(className):
    if ((className) == (u"Class")):
        return _List([Field(Class(u"String"), u"id"), Field(Class(u"String"), u"name"), Field(Class(u"List<Class>"), u"parameters")])

    if ((className) == (u"Field")):
        return _List([Field(Class(u"Class"), u"type"), Field(Class(u"String"), u"name")])

    if ((className) == (u"List<Object>")):
        return _List([])

    if ((className) == (u"List<Field>")):
        return _List([])

    if ((className) == (u"List<Class>")):
        return _List([])

    if ((className) == (u"List<String>")):
        return _List([])

    if ((className) == (u"Map<Object,Object>")):
        return _List([])

    if ((className) == (u"Map<String,Object>")):
        return _List([])

    if ((className) == (u"Map<byte,byte>")):
        return _List([])

    if ((className) == (u"Map<short,short>")):
        return _List([])

    if ((className) == (u"Map<int,int>")):
        return _List([])

    if ((className) == (u"Map<long,long>")):
        return _List([])

    if ((className) == (u"TestByte")):
        return _List([])

    if ((className) == (u"TestShort")):
        return _List([])

    if ((className) == (u"TestInt")):
        return _List([])

    if ((className) == (u"TestLong")):
        return _List([])

    return None


def _class(cls):
    if (((cls).id) == (u"Class")):
        (cls).name = u"Class"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"Field")):
        (cls).name = u"Field"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"List<Object>")):
        (cls).name = u"List"
        (cls).parameters = _List([Class(u"Object")])
        return

    if (((cls).id) == (u"List<Field>")):
        (cls).name = u"List"
        (cls).parameters = _List([Class(u"Field")])
        return

    if (((cls).id) == (u"List<Class>")):
        (cls).name = u"List"
        (cls).parameters = _List([Class(u"Class")])
        return

    if (((cls).id) == (u"List<String>")):
        (cls).name = u"List"
        (cls).parameters = _List([Class(u"String")])
        return

    if (((cls).id) == (u"Map<Object,Object>")):
        (cls).name = u"Map"
        (cls).parameters = _List([Class(u"Object"), Class(u"Object")])
        return

    if (((cls).id) == (u"Map<String,Object>")):
        (cls).name = u"Map"
        (cls).parameters = _List([Class(u"String"), Class(u"Object")])
        return

    if (((cls).id) == (u"Map<byte,byte>")):
        (cls).name = u"Map"
        (cls).parameters = _List([Class(u"byte"), Class(u"byte")])
        return

    if (((cls).id) == (u"Map<short,short>")):
        (cls).name = u"Map"
        (cls).parameters = _List([Class(u"short"), Class(u"short")])
        return

    if (((cls).id) == (u"Map<int,int>")):
        (cls).name = u"Map"
        (cls).parameters = _List([Class(u"int"), Class(u"int")])
        return

    if (((cls).id) == (u"Map<long,long>")):
        (cls).name = u"Map"
        (cls).parameters = _List([Class(u"long"), Class(u"long")])
        return

    if (((cls).id) == (u"TestByte")):
        (cls).name = u"TestByte"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"TestShort")):
        (cls).name = u"TestShort"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"TestInt")):
        (cls).name = u"TestInt"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"TestLong")):
        (cls).name = u"TestLong"
        (cls).parameters = _List([])
        return

    (cls).name = (cls).id
