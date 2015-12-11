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

    def getField(self, name):
        fields = self.getFields();
        idx = 0;
        while ((idx) < (len(fields))):
            if ((((fields)[idx]).name) == (name)):
                return (fields)[idx]

            idx = (idx) + (1)

        return None

    def invoke(self, object, method, args):
        return _invoke((self).id, object, method, args)

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

# BEGIN_BUILTIN

class ResponseHolder(object):
    def _init(self):
        self.response = None

    def __init__(self): self._init()

    def onHTTPResponse(self, request, response):
        (self).response = response

    def _getClass(self):
        return u"ResponseHolder"

    def _getField(self, name):
        if ((name) == (u"response")):
            return (self).response

        return None

    def _setField(self, name, value):
        if ((name) == (u"response")):
            (self).response = value

    def onHTTPInit(self, request):
        pass

    def onHTTPError(self, request):
        pass

    def onHTTPFinal(self, request):
        pass

# END_BUILTIN

# BEGIN_BUILTIN

class Service(object):

    def getURL(self): assert False

    def getRuntime(self): assert False

    def rpc(self, name, message):
        request = _HTTPRequest(self.getURL());
        json = toJSON(message);
        envelope = _JSONObject();
        (envelope).setObjectItem((u"$method"), ((_JSONObject()).setString(name)));
        (envelope).setObjectItem((u"rpc"), (json));
        (request).setBody((envelope).toString());
        rt = (self).getRuntime();
        rh = ResponseHolder();
        (rt).acquire();
        (rt).request(request, rh);
        while (((rh).response) == (None)):
            (rt).wait(3.14);

        response = (rh).response;
        (rt).release();
        body = (response).getBody();
        obj = _JSONObject.parse(body);
        return fromJSON(Class(((obj).getObjectItem(u"$class")).getString()), obj)


# END_BUILTIN

# BEGIN_BUILTIN

class Client(object):
    def _init(self):
        self.runtime = None
        self.url = None

    def __init__(self, runtime, url):
        self._init()
        (self).runtime = runtime
        (self).url = url

    def getRuntime(self):
        return (self).runtime

    def getURL(self):
        return (self).url

    def _getClass(self):
        return u"Client"

    def _getField(self, name):
        if ((name) == (u"runtime")):
            return (self).runtime

        if ((name) == (u"url")):
            return (self).url

        return None

    def _setField(self, name, value):
        if ((name) == (u"runtime")):
            (self).runtime = value

        if ((name) == (u"url")):
            (self).url = value

    

# END_BUILTIN

# BEGIN_BUILTIN

class Server(object):
    def _init(self):
        self.runtime = None
        self.impl = None

    def __init__(self, runtime, impl):
        self._init()
        (self).runtime = runtime
        (self).impl = impl

    def getRuntime(self):
        return (self).runtime

    def onHTTPRequest(self, request, response):
        envelope = _JSONObject.parse((request).getBody());
        method = ((envelope).getObjectItem(u"$method")).getString();
        json = (envelope).getObjectItem(u"rpc");
        argument = fromJSON(Class(((json).getObjectItem(u"$class")).getString()), json);
        result = (((Class(_getClass(self))).getField(u"impl")).type).invoke(self.impl, method, _List([argument]));
        (response).setBody((toJSON(result)).toString());
        (response).setCode(200);
        (self.getRuntime()).respond(request, response);

    def _getClass(self):
        return u"Server<Object>"

    def _getField(self, name):
        if ((name) == (u"runtime")):
            return (self).runtime

        if ((name) == (u"impl")):
            return (self).impl

        return None

    def _setField(self, name, value):
        if ((name) == (u"runtime")):
            (self).runtime = value

        if ((name) == (u"impl")):
            (self).impl = value

    def onServletInit(self, url, runtime):
        """
        called after the servlet is successfully installed. The url will be the actual url used, important especially if ephemeral port was requested
        """
        pass

    def onServletError(self, url, error):
        """
        called if the servlet could not be installed
        """
        pass

    def onServletEnd(self, url):
        """
        called when the servlet is removed
        """
        pass

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

    if ((className) == (u"ResponseHolder")):
        return ResponseHolder()

    if ((className) == (u"Client")):
        return Client((args)[0], (args)[1])

    if ((className) == (u"Server<Object>")):
        return Server((args)[0], (args)[1])

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

    if ((className) == (u"ResponseHolder")):
        return _List([Field(Class(u"HTTPResponse"), u"response")])

    if ((className) == (u"Client")):
        return _List([Field(Class(u"Runtime"), u"runtime"), Field(Class(u"String"), u"url")])

    if ((className) == (u"Server<Object>")):
        return _List([Field(Class(u"Runtime"), u"runtime"), Field(Class(u"Object"), u"impl")])

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

    if (((cls).id) == (u"ResponseHolder")):
        (cls).name = u"ResponseHolder"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"Service")):
        (cls).name = u"Service"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"Client")):
        (cls).name = u"Client"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"Server<Object>")):
        (cls).name = u"Server"
        (cls).parameters = _List([Class(u"Object")])
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


def _invoke(className, object, method, args):
    if ((className) == (u"Class")):
        if ((method) == (u"getId")):
            tmp_0 = object;
            return (tmp_0).getId()

        if ((method) == (u"getName")):
            tmp_1 = object;
            return (tmp_1).getName()

        if ((method) == (u"getParameters")):
            tmp_2 = object;
            return (tmp_2).getParameters()

        if ((method) == (u"construct")):
            tmp_3 = object;
            return (tmp_3).construct((args)[0])

        if ((method) == (u"getFields")):
            tmp_4 = object;
            return (tmp_4).getFields()

        if ((method) == (u"getField")):
            tmp_5 = object;
            return (tmp_5).getField((args)[0])

        if ((method) == (u"invoke")):
            tmp_6 = object;
            return (tmp_6).invoke((args)[0], (args)[1], (args)[2])

    if ((className) == (u"Field")):
        pass
    if ((className) == (u"List<Object>")):
        pass
    if ((className) == (u"List<Field>")):
        pass
    if ((className) == (u"List<Class>")):
        pass
    if ((className) == (u"List<String>")):
        pass
    if ((className) == (u"Map<Object,Object>")):
        pass
    if ((className) == (u"Map<String,Object>")):
        pass
    if ((className) == (u"ResponseHolder")):
        if ((method) == (u"onHTTPResponse")):
            tmp_7 = object;
            (tmp_7).onHTTPResponse((args)[0], (args)[1]);
            return None

    if ((className) == (u"Service")):
        if ((method) == (u"getURL")):
            tmp_8 = object;
            return (tmp_8).getURL()

        if ((method) == (u"getRuntime")):
            tmp_9 = object;
            return (tmp_9).getRuntime()

        if ((method) == (u"rpc")):
            tmp_10 = object;
            return (tmp_10).rpc((args)[0], (args)[1])

    if ((className) == (u"Client")):
        if ((method) == (u"getRuntime")):
            tmp_11 = object;
            return (tmp_11).getRuntime()

        if ((method) == (u"getURL")):
            tmp_12 = object;
            return (tmp_12).getURL()

    if ((className) == (u"Server<Object>")):
        if ((method) == (u"getRuntime")):
            tmp_13 = object;
            return (tmp_13).getRuntime()

        if ((method) == (u"onHTTPRequest")):
            tmp_14 = object;
            (tmp_14).onHTTPRequest((args)[0], (args)[1]);
            return None

    if ((className) == (u"Box<Object>")):
        if ((method) == (u"set")):
            tmp_15 = object;
            (tmp_15).set((args)[0]);
            return None

        if ((method) == (u"get")):
            tmp_16 = object;
            return (tmp_16).get()

    if ((className) == (u"Box<int>")):
        if ((method) == (u"set")):
            tmp_17 = object;
            (tmp_17).set((args)[0]);
            return None

        if ((method) == (u"get")):
            tmp_18 = object;
            return (tmp_18).get()

    if ((className) == (u"Box<String>")):
        if ((method) == (u"set")):
            tmp_19 = object;
            (tmp_19).set((args)[0]);
            return None

        if ((method) == (u"get")):
            tmp_20 = object;
            return (tmp_20).get()

    if ((className) == (u"Box<Box<int>>")):
        if ((method) == (u"set")):
            tmp_21 = object;
            (tmp_21).set((args)[0]);
            return None

        if ((method) == (u"get")):
            tmp_22 = object;
            return (tmp_22).get()

    if ((className) == (u"Crate<int>")):
        if ((method) == (u"set")):
            tmp_23 = object;
            (tmp_23).set((args)[0]);
            return None

        if ((method) == (u"get")):
            tmp_24 = object;
            return (tmp_24).get()

    if ((className) == (u"Crate<String>")):
        if ((method) == (u"set")):
            tmp_25 = object;
            (tmp_25).set((args)[0]);
            return None

        if ((method) == (u"get")):
            tmp_26 = object;
            return (tmp_26).get()

    if ((className) == (u"Sack")):
        pass
    return None