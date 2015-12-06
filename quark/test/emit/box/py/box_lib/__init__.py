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

class Box(object):
    def _init(self):
        self.contents = None

    def __init__(self): self._init()

    def set(self, contents):
        (self).contents = contents

    def get(self):
        return (self).contents

    def _getClass(self):
        return u"Box<Object>"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = value

    

class Crate(object):
    def _init(self):
        self.box = Box()
        self.ibox = Box()

    def __init__(self): self._init()

    def set(self, stuff):
        ((self).box).set(stuff);

    def get(self):
        return ((self).box).get()

    def _getClass(self):
        return u"Crate<Object>"

    def _getField(self, name):
        if ((name) == (u"box")):
            return (self).box

        if ((name) == (u"ibox")):
            return (self).ibox

        return None

    def _setField(self, name, value):
        if ((name) == (u"box")):
            (self).box = value

        if ((name) == (u"ibox")):
            (self).ibox = value

    

class Sack(object):
    def _init(self):
        self.ints = Box()

    def __init__(self): self._init()

    def _getClass(self):
        return u"Sack"

    def _getField(self, name):
        if ((name) == (u"ints")):
            return (self).ints

        return None

    def _setField(self, name, value):
        if ((name) == (u"ints")):
            (self).ints = value

    


def test1():
    ibox = Box();
    (ibox).set(3);
    three = (ibox).get();
    _println(three);
    (ibox).contents = 4
    _println((ibox).contents);


def test2():
    sbox = Box();
    (sbox).set(u"hello");
    hello = (sbox).get();
    _println(hello);
    (sbox).contents = u"world"
    _println((sbox).contents);


def test3():
    icrate = Crate();
    (icrate).set(3);
    _println((icrate).get());
    (icrate).set(4);
    _println(((icrate).box).contents);


def test4():
    s = Sack();
    _println(((s).ints).get());
    _println(((s).ints).contents);
    ((s).ints).set(3);
    _println(((s).ints).get());
    _println(((s).ints).contents);
    ((s).ints).contents = 4
    _println(((s).ints).get());
    _println(((s).ints).contents);


def test5():
    scrate = Crate();
    _println((scrate).get());
    _println(((scrate).box).contents);
    (scrate).set(u"hello");
    _println((scrate).get());
    _println(((scrate).box).contents);
    ((scrate).ibox).contents = 3
    _println(((scrate).ibox).contents);


def test6():
    box = Box();
    (box).set(Box());
    ((box).get()).set(3);
    _println(((box).get()).get());
    _println(((box).contents).contents);


def main():
    _println(u"test1:\n--");
    test1();
    _println(u"");
    _println(u"test2:\n--");
    test2();
    _println(u"");
    _println(u"test3:\n--");
    test3();
    _println(u"");
    _println(u"test4:\n--");
    test4();
    _println(u"");
    _println(u"test5:\n--");
    test5();
    _println(u"");
    _println(u"test6:\n--");
    test6();


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

    if ((className) == (u"Box<Object>")):
        return Box()

    if ((className) == (u"Box<int>")):
        return Box()

    if ((className) == (u"Box<String>")):
        return Box()

    if ((className) == (u"Box<Box<int>>")):
        return Box()

    if ((className) == (u"Crate<int>")):
        return Crate()

    if ((className) == (u"Crate<String>")):
        return Crate()

    if ((className) == (u"Sack")):
        return Sack()

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

    if ((className) == (u"Box<Object>")):
        return _List([Field(Class(u"Object"), u"contents")])

    if ((className) == (u"Box<int>")):
        return _List([Field(Class(u"Object"), u"contents")])

    if ((className) == (u"Box<String>")):
        return _List([Field(Class(u"Object"), u"contents")])

    if ((className) == (u"Box<Box<int>>")):
        return _List([Field(Class(u"Object"), u"contents")])

    if ((className) == (u"Crate<int>")):
        return _List([Field(Class(u"Box<Object>"), u"box"), Field(Class(u"Box<int>"), u"ibox")])

    if ((className) == (u"Crate<String>")):
        return _List([Field(Class(u"Box<Object>"), u"box"), Field(Class(u"Box<int>"), u"ibox")])

    if ((className) == (u"Sack")):
        return _List([Field(Class(u"Box<int>"), u"ints")])

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

    if (((cls).id) == (u"Box<Object>")):
        (cls).name = u"Box"
        (cls).parameters = _List([Class(u"Object")])
        return

    if (((cls).id) == (u"Box<int>")):
        (cls).name = u"Box"
        (cls).parameters = _List([Class(u"int")])
        return

    if (((cls).id) == (u"Box<String>")):
        (cls).name = u"Box"
        (cls).parameters = _List([Class(u"String")])
        return

    if (((cls).id) == (u"Box<Box<int>>")):
        (cls).name = u"Box"
        (cls).parameters = _List([Class(u"Box<int>")])
        return

    if (((cls).id) == (u"Crate<int>")):
        (cls).name = u"Crate"
        (cls).parameters = _List([Class(u"int")])
        return

    if (((cls).id) == (u"Crate<String>")):
        (cls).name = u"Crate"
        (cls).parameters = _List([Class(u"String")])
        return

    if (((cls).id) == (u"Sack")):
        (cls).name = u"Sack"
        (cls).parameters = _List([])
        return

    (cls).name = (cls).id
