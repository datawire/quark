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

class string_test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def check(self, actual, expected, op, q):
        if ((actual) == (expected)):
            _println((((((u"OK   ") + (op)) + (u" = ")) + (q)) + (actual)) + (q));
        else:
            _println((((((((((u"FAIL ") + (op)) + (u" = ")) + (q)) + (actual)) + (q)) + (u" != ")) + (q)) + (expected)) + (q));

    def _getClass(self):
        return u"string_test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class test_size(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None

    def __init__(self, what):
        super(test_size, self).__init__();
        (self).what = what

    def does(self, expected):
        actual = len(self.what);
        op = ((u"'") + (self.what)) + (u"'.size()");
        (self).check(str(actual), str(expected), op, u"");
        return self

    def _getClass(self):
        return u"test_size"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = value

    

class test_startsWith(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_startsWith, self).__init__();
        (self).what = what

    def that(self, _that):
        (self)._that = _that
        return self

    def does(self, expected):
        (self).check(str(((self).what).startswith((self)._that)).lower(), str(expected).lower(), ((((u"'") + ((self).what)) + (u"'.startsWith('")) + ((self)._that)) + (u"'"), u"");
        return self

    def _getClass(self):
        return u"test_startsWith"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"_that")):
            return (self)._that

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = value

        if ((name) == (u"_that")):
            (self)._that = value

    

class test_endsWith(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_endsWith, self).__init__();
        (self).what = what

    def that(self, _that):
        (self)._that = _that
        return self

    def does(self, expected):
        (self).check(str(((self).what).endswith((self)._that)).lower(), str(expected).lower(), ((((u"'") + ((self).what)) + (u"'.endsWith('")) + ((self)._that)) + (u"'"), u"");
        return self

    def _getClass(self):
        return u"test_endsWith"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"_that")):
            return (self)._that

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = value

        if ((name) == (u"_that")):
            (self)._that = value

    

class test_find(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_find, self).__init__();
        (self).what = what

    def that(self, _that):
        (self)._that = _that
        return self

    def does(self, expected):
        (self).check(str(((self).what).find((self)._that)), str(expected), ((((u"'") + ((self).what)) + (u"'.find('")) + ((self)._that)) + (u"'"), u"");
        return self

    def _getClass(self):
        return u"test_find"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"_that")):
            return (self)._that

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = value

        if ((name) == (u"_that")):
            (self)._that = value

    

class test_substring(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.start = None
        self.end = None

    def __init__(self, what):
        super(test_substring, self).__init__();
        (self).what = what

    def that(self, start, end):
        (self).start = start
        (self).end = end
        return self

    def does(self, expected):
        (self).check(((self).what)[((self).start):((self).end)], expected, ((((((u"'") + ((self).what)) + (u"'.substring(")) + (str((self).start))) + (u", ")) + (str((self).end))) + (u")"), u"'");
        return self

    def _getClass(self):
        return u"test_substring"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"start")):
            return (self).start

        if ((name) == (u"end")):
            return (self).end

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = value

        if ((name) == (u"start")):
            (self).start = value

        if ((name) == (u"end")):
            (self).end = value

    

class test_replace(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.start = None
        self.end = None

    def __init__(self, what):
        super(test_replace, self).__init__();
        (self).what = what

    def that(self, start, end):
        (self).start = start
        (self).end = end
        return self

    def does(self, expected):
        (self).check(((self).what).replace(((self).start), ((self).end), 1), expected, ((((((u"'") + ((self).what)) + (u"'.replace('")) + ((self).start)) + (u"', '")) + ((self).end)) + (u"')"), u"'");
        return self

    def _getClass(self):
        return u"test_replace"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"start")):
            return (self).start

        if ((name) == (u"end")):
            return (self).end

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = value

        if ((name) == (u"start")):
            (self).start = value

        if ((name) == (u"end")):
            (self).end = value

    

class test_join(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.parts = None
        self.strparts = None
        self.sep = None

    def __init__(self, what):
        super(test_join, self).__init__();
        (self).what = what

    def that(self):
        (self).parts = _List()
        (self).strparts = u""
        (self).sep = u""
        return self

    def a(self, part):
        ((self).parts).append(part);
        (self).strparts = (((((self).strparts) + ((self).sep)) + (u"'")) + (part)) + (u"'")
        (self).sep = u", "
        return self

    def does(self, expected):
        (self).check(((self).what).join((self).parts), expected, ((((u"'") + ((self).what)) + (u"'.join([")) + ((self).strparts)) + (u"])"), u"'");
        return self

    def _getClass(self):
        return u"test_join"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"parts")):
            return (self).parts

        if ((name) == (u"strparts")):
            return (self).strparts

        if ((name) == (u"sep")):
            return (self).sep

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = value

        if ((name) == (u"parts")):
            (self).parts = value

        if ((name) == (u"strparts")):
            (self).strparts = value

        if ((name) == (u"sep")):
            (self).sep = value

    

class test_split(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.sep = None
        self.altsep = None

    def __init__(self, sep, altsep):
        super(test_split, self).__init__();
        (self).sep = sep
        (self).altsep = altsep

    def that(self, what):
        (self).what = what
        return self

    def does(self, expected):
        parts = ((self).what).split((self).sep);
        actual = ((self).altsep).join(parts);
        (self).check(actual, expected, ((((((u"'") + ((self).altsep)) + (u"'.join('")) + ((self).what)) + (u"'.split('")) + ((self).sep)) + (u"'))"), u"'");
        return self

    def _getClass(self):
        return u"test_split"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"sep")):
            return (self).sep

        if ((name) == (u"altsep")):
            return (self).altsep

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = value

        if ((name) == (u"sep")):
            (self).sep = value

        if ((name) == (u"altsep")):
            (self).altsep = value

    


def main():
    (test_size(u"")).does(0);
    (test_size(u"1")).does(1);
    (test_size(u"22")).does(2);
    (test_size(u"333")).does(3);
    (test_size(u"4444")).does(4);
    ((((((((test_startsWith(u"abcd")).that(u"abc")).does(True)).that(u"bc")).does(False)).that(u"")).does(True)).that(u"abcde")).does(False);
    ((((((((test_endsWith(u"abcd")).that(u"bcd")).does(True)).that(u"bc")).does(False)).that(u"")).does(True)).that(u"xabcd")).does(False);
    ((((((((((((((((test_find(u"abcd")).that(u"bcd")).does(1)).that(u"bc")).does(1)).that(u"")).does(0)).that(u"xabcd")).does(-(1))).that(u"abcd")).does(0)).that(u"abc")).does(0)).that(u"a")).does(0)).that(u"x")).does(-(1));
    ((((((((((((((((test_substring(u"abcd")).that(0, 0)).does(u"")).that(0, 4)).does(u"abcd")).that(0, 1)).does(u"a")).that(1, 2)).does(u"b")).that(2, 4)).does(u"cd")).that(3, 4)).does(u"d")).that(1, 1)).does(u"")).that(2, 2)).does(u"");
    ((((((((((((((test_replace(u"abcd")).that(u"ab", u"AB")).does(u"ABcd")).that(u"b", u"bb")).does(u"abbcd")).that(u"ab", u"ab")).does(u"abcd")).that(u"", u"EE")).does(u"EEabcd")).that(u"c", u"EE")).does(u"abEEd")).that(u"d", u"EE")).does(u"abcEE")).that(u"x", u"EE")).does(u"abcd");
    ((((((((((((((test_join(u"")).that()).does(u"")).that()).a(u"a")).does(u"a")).that()).a(u"a")).a(u"b")).does(u"ab")).that()).a(u"a")).a(u"b")).a(u"c")).does(u"abc");
    ((((((((((((((test_join(u",")).that()).does(u"")).that()).a(u"a")).does(u"a")).that()).a(u"a")).a(u"b")).does(u"a,b")).that()).a(u"a")).a(u"b")).a(u"c")).does(u"a,b,c");
    ((((((((((((((((test_split(u",", u"|")).that(u"")).does(u"")).that(u"a")).does(u"a")).that(u",")).does(u"|")).that(u"a,")).does(u"a|")).that(u",a")).does(u"|a")).that(u"a,b")).does(u"a|b")).that(u"a,,b")).does(u"a||b")).that(u"a,b,c")).does(u"a|b|c");
    ((((((((((((((((test_split(u"foo", u"|")).that(u"")).does(u"")).that(u"a")).does(u"a")).that(u"foo")).does(u"|")).that(u"afoo")).does(u"a|")).that(u"fooa")).does(u"|a")).that(u"afoob")).does(u"a|b")).that(u"afoofoob")).does(u"a||b")).that(u"afoobfooc")).does(u"a|b|c");


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

    if ((className) == (u"string_test")):
        return string_test()

    if ((className) == (u"test_size")):
        return test_size((args)[0])

    if ((className) == (u"test_startsWith")):
        return test_startsWith((args)[0])

    if ((className) == (u"test_endsWith")):
        return test_endsWith((args)[0])

    if ((className) == (u"test_find")):
        return test_find((args)[0])

    if ((className) == (u"test_substring")):
        return test_substring((args)[0])

    if ((className) == (u"test_replace")):
        return test_replace((args)[0])

    if ((className) == (u"test_join")):
        return test_join((args)[0])

    if ((className) == (u"test_split")):
        return test_split((args)[0], (args)[1])

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

    if ((className) == (u"string_test")):
        return _List([])

    if ((className) == (u"test_size")):
        return _List([Field(Class(u"String"), u"what")])

    if ((className) == (u"test_startsWith")):
        return _List([Field(Class(u"String"), u"what"), Field(Class(u"String"), u"_that")])

    if ((className) == (u"test_endsWith")):
        return _List([Field(Class(u"String"), u"what"), Field(Class(u"String"), u"_that")])

    if ((className) == (u"test_find")):
        return _List([Field(Class(u"String"), u"what"), Field(Class(u"String"), u"_that")])

    if ((className) == (u"test_substring")):
        return _List([Field(Class(u"String"), u"what"), Field(Class(u"int"), u"start"), Field(Class(u"int"), u"end")])

    if ((className) == (u"test_replace")):
        return _List([Field(Class(u"String"), u"what"), Field(Class(u"String"), u"start"), Field(Class(u"String"), u"end")])

    if ((className) == (u"test_join")):
        return _List([Field(Class(u"String"), u"what"), Field(Class(u"List<String>"), u"parts"), Field(Class(u"String"), u"strparts"), Field(Class(u"String"), u"sep")])

    if ((className) == (u"test_split")):
        return _List([Field(Class(u"String"), u"what"), Field(Class(u"String"), u"sep"), Field(Class(u"String"), u"altsep")])

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

    if (((cls).id) == (u"string_test")):
        (cls).name = u"string_test"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"test_size")):
        (cls).name = u"test_size"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"test_startsWith")):
        (cls).name = u"test_startsWith"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"test_endsWith")):
        (cls).name = u"test_endsWith"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"test_find")):
        (cls).name = u"test_find"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"test_substring")):
        (cls).name = u"test_substring"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"test_replace")):
        (cls).name = u"test_replace"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"test_join")):
        (cls).name = u"test_join"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"test_split")):
        (cls).name = u"test_split"
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

    if ((className) == (u"string_test")):
        if ((method) == (u"check")):
            tmp_15 = object;
            (tmp_15).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return None

    if ((className) == (u"test_size")):
        if ((method) == (u"does")):
            tmp_16 = object;
            return (tmp_16).does((args)[0])

        if ((method) == (u"check")):
            tmp_17 = object;
            (tmp_17).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return None

    if ((className) == (u"test_startsWith")):
        if ((method) == (u"that")):
            tmp_18 = object;
            return (tmp_18).that((args)[0])

        if ((method) == (u"does")):
            tmp_19 = object;
            return (tmp_19).does((args)[0])

        if ((method) == (u"check")):
            tmp_20 = object;
            (tmp_20).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return None

    if ((className) == (u"test_endsWith")):
        if ((method) == (u"that")):
            tmp_21 = object;
            return (tmp_21).that((args)[0])

        if ((method) == (u"does")):
            tmp_22 = object;
            return (tmp_22).does((args)[0])

        if ((method) == (u"check")):
            tmp_23 = object;
            (tmp_23).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return None

    if ((className) == (u"test_find")):
        if ((method) == (u"that")):
            tmp_24 = object;
            return (tmp_24).that((args)[0])

        if ((method) == (u"does")):
            tmp_25 = object;
            return (tmp_25).does((args)[0])

        if ((method) == (u"check")):
            tmp_26 = object;
            (tmp_26).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return None

    if ((className) == (u"test_substring")):
        if ((method) == (u"that")):
            tmp_27 = object;
            return (tmp_27).that((args)[0], (args)[1])

        if ((method) == (u"does")):
            tmp_28 = object;
            return (tmp_28).does((args)[0])

        if ((method) == (u"check")):
            tmp_29 = object;
            (tmp_29).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return None

    if ((className) == (u"test_replace")):
        if ((method) == (u"that")):
            tmp_30 = object;
            return (tmp_30).that((args)[0], (args)[1])

        if ((method) == (u"does")):
            tmp_31 = object;
            return (tmp_31).does((args)[0])

        if ((method) == (u"check")):
            tmp_32 = object;
            (tmp_32).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return None

    if ((className) == (u"test_join")):
        if ((method) == (u"that")):
            tmp_33 = object;
            return (tmp_33).that()

        if ((method) == (u"a")):
            tmp_34 = object;
            return (tmp_34).a((args)[0])

        if ((method) == (u"does")):
            tmp_35 = object;
            return (tmp_35).does((args)[0])

        if ((method) == (u"check")):
            tmp_36 = object;
            (tmp_36).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return None

    if ((className) == (u"test_split")):
        if ((method) == (u"that")):
            tmp_37 = object;
            return (tmp_37).that((args)[0])

        if ((method) == (u"does")):
            tmp_38 = object;
            return (tmp_38).does((args)[0])

        if ((method) == (u"check")):
            tmp_39 = object;
            (tmp_39).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return None

    return None
