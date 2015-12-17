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
        self.failure = None

    def __init__(self): self._init()

    def onHTTPResponse(self, request, response):
        (self).response = response

    def onHTTPError(self, request, message):
        self.failure = message

    def _getClass(self):
        return u"ResponseHolder"

    def _getField(self, name):
        if ((name) == (u"response")):
            return (self).response

        if ((name) == (u"failure")):
            return (self).failure

        return None

    def _setField(self, name, value):
        if ((name) == (u"response")):
            (self).response = value

        if ((name) == (u"failure")):
            (self).failure = value

    def onHTTPInit(self, request):
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
        (request).setMethod(u"POST");
        rt = (self).getRuntime();
        rh = ResponseHolder();
        (rt).acquire();
        (rt).request(request, rh);
        while ((((rh).response) == (None)) and (((rh).failure) == (None))):
            (rt).wait(3.14);

        (rt).release();
        if (((rh).failure) != (None)):
            (rt).fail((((u"RPC ") + (name)) + (u"(...) failed: ")) + ((rh).failure));
            return None

        response = (rh).response;
        if (((response).getCode()) != (200)):
            (rt).fail((((u"RPC ") + (name)) + (u"(...) failed: Server returned error ")) + (str((response).getCode())));
            return None

        body = (response).getBody();
        obj = _JSONObject.parse(body);
        classname = ((obj).getObjectItem(u"$class")).getString();
        if ((classname) == (None)):
            (rt).fail(((u"RPC ") + (name)) + (u"(...) failed: Server returned unrecognizable content"));
            return None
        else:
            return fromJSON(Class(classname), obj)

    

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

    def onServletError(self, url, message):
        _println((((u"RPC Server failed to register ") + (url)) + (u" due to: ")) + (message));

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

    def onServletEnd(self, url):
        """
        called when the servlet is removed
        """
        pass

# END_BUILTIN


class A(object):

    def foo(self): assert False

    def bar(self):
        _println(u"A bar");
        (self).foo();


class B(object):

    def bar(self):
        _println(u"B bar");


class C(object):

    def foo(self):
        _println(u"C mixin for foo");


class T1(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T1 foo");

    def _getClass(self):
        return u"pkg.T1"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"A bar");
        (self).foo();


class T2(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T2 foo");

    def _getClass(self):
        return u"pkg.T2"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"A bar");
        (self).foo();


class T3(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T3 foo");

    def _getClass(self):
        return u"pkg.T3"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"B bar");


class T4(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"pkg.T4"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"A bar");
        (self).foo();

    def foo(self):
        _println(u"C mixin for foo");


class T5(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def foo(self):
        _println(u"T5 foo");

    def _getClass(self):
        return u"pkg.T5"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def bar(self):
        _println(u"A bar");
        (self).foo();



def main():
    t1 = T1();
    (t1).foo();
    (t1).bar();
    _println(u"===");
    t2 = T2();
    (t2).foo();
    (t2).bar();
    _println(u"===");
    t3 = T3();
    (t3).foo();
    (t3).bar();
    _println(u"===");
    t4 = T4();
    (t4).foo();
    (t4).bar();
    _println(u"===");
    t5 = T5();
    (t5).foo();
    (t5).bar();


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

    if ((className) == (u"pkg.T1")):
        return T1()

    if ((className) == (u"pkg.T2")):
        return T2()

    if ((className) == (u"pkg.T3")):
        return T3()

    if ((className) == (u"pkg.T4")):
        return T4()

    if ((className) == (u"pkg.T5")):
        return T5()

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
        return _List([Field(Class(u"HTTPResponse"), u"response"), Field(Class(u"String"), u"failure")])

    if ((className) == (u"Client")):
        return _List([Field(Class(u"Runtime"), u"runtime"), Field(Class(u"String"), u"url")])

    if ((className) == (u"Server<Object>")):
        return _List([Field(Class(u"Runtime"), u"runtime"), Field(Class(u"Object"), u"impl")])

    if ((className) == (u"pkg.T1")):
        return _List([])

    if ((className) == (u"pkg.T2")):
        return _List([])

    if ((className) == (u"pkg.T3")):
        return _List([])

    if ((className) == (u"pkg.T4")):
        return _List([])

    if ((className) == (u"pkg.T5")):
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

    if (((cls).id) == (u"pkg.A")):
        (cls).name = u"pkg.A"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"pkg.B")):
        (cls).name = u"pkg.B"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"pkg.C")):
        (cls).name = u"pkg.C"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"pkg.T1")):
        (cls).name = u"pkg.T1"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"pkg.T2")):
        (cls).name = u"pkg.T2"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"pkg.T3")):
        (cls).name = u"pkg.T3"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"pkg.T4")):
        (cls).name = u"pkg.T4"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"pkg.T5")):
        (cls).name = u"pkg.T5"
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

        if ((method) == (u"onHTTPError")):
            tmp_8 = object;
            (tmp_8).onHTTPError((args)[0], (args)[1]);
            return None

    if ((className) == (u"Service")):
        if ((method) == (u"getURL")):
            tmp_9 = object;
            return (tmp_9).getURL()

        if ((method) == (u"getRuntime")):
            tmp_10 = object;
            return (tmp_10).getRuntime()

        if ((method) == (u"rpc")):
            tmp_11 = object;
            return (tmp_11).rpc((args)[0], (args)[1])

    if ((className) == (u"Client")):
        if ((method) == (u"getRuntime")):
            tmp_12 = object;
            return (tmp_12).getRuntime()

        if ((method) == (u"getURL")):
            tmp_13 = object;
            return (tmp_13).getURL()

    if ((className) == (u"Server<Object>")):
        if ((method) == (u"getRuntime")):
            tmp_14 = object;
            return (tmp_14).getRuntime()

        if ((method) == (u"onHTTPRequest")):
            tmp_15 = object;
            (tmp_15).onHTTPRequest((args)[0], (args)[1]);
            return None

        if ((method) == (u"onServletError")):
            tmp_16 = object;
            (tmp_16).onServletError((args)[0], (args)[1]);
            return None

    if ((className) == (u"pkg.A")):
        if ((method) == (u"foo")):
            tmp_17 = object;
            (tmp_17).foo();
            return None

        if ((method) == (u"bar")):
            tmp_18 = object;
            (tmp_18).bar();
            return None

    if ((className) == (u"pkg.B")):
        if ((method) == (u"bar")):
            tmp_19 = object;
            (tmp_19).bar();
            return None

    if ((className) == (u"pkg.C")):
        if ((method) == (u"foo")):
            tmp_20 = object;
            (tmp_20).foo();
            return None

    if ((className) == (u"pkg.T1")):
        if ((method) == (u"foo")):
            tmp_21 = object;
            (tmp_21).foo();
            return None

    if ((className) == (u"pkg.T2")):
        if ((method) == (u"foo")):
            tmp_22 = object;
            (tmp_22).foo();
            return None

    if ((className) == (u"pkg.T3")):
        if ((method) == (u"foo")):
            tmp_23 = object;
            (tmp_23).foo();
            return None

    if ((className) == (u"pkg.T4")):
        pass
    if ((className) == (u"pkg.T5")):
        if ((method) == (u"foo")):
            tmp_24 = object;
            (tmp_24).foo();
            return None

    return None
