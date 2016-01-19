from quark_runtime import *

import reflect

# BEGIN_BUILTIN


def toJSON(obj):
    result = _JSONObject();
    if ((obj) == (None)):
        (result).setNull();
        return result

    cls = reflect.Class.get(_getClass(obj));
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
        if ((((f).getType()).name) == (u"String")):
            s = ((json).getObjectItem((f).name)).getString();
            (result)._setField(((f).name), (s));
            continue;

        if ((((f).getType()).name) == (u"float")):
            flt = ((json).getObjectItem((f).name)).getNumber();
            (result)._setField(((f).name), (flt));
            continue;

        if ((((f).getType()).name) == (u"int")):
            if (not (((json).getObjectItem((f).name)).isNull())):
                i = int(round(((json).getObjectItem((f).name)).getNumber()));
                (result)._setField(((f).name), (i));

            continue;

        if ((((f).getType()).name) == (u"bool")):
            if (not (((json).getObjectItem((f).name)).isNull())):
                b = ((json).getObjectItem((f).name)).getBool();
                (result)._setField(((f).name), (b));

            continue;

        (result)._setField(((f).name), (fromJSON((f).getType(), (json).getObjectItem((f).name))));

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

    def getTimeout(self): assert False

    def rpc(self, name, message, options):
        request = _HTTPRequest(self.getURL());
        json = toJSON(message);
        envelope = _JSONObject();
        (envelope).setObjectItem((u"$method"), ((_JSONObject()).setString(name)));
        (envelope).setObjectItem((u"rpc"), (json));
        (request).setBody((envelope).toString());
        (request).setMethod(u"POST");
        rt = (self).getRuntime();
        timeout = self.getTimeout();
        if ((len(options)) > (0)):
            map = (options)[0];
            override = (map).get(u"timeout");
            if ((override) != (None)):
                timeout = (override)

        rh = ResponseHolder();
        (rt).acquire();
        start = long(time.time()*1000);
        deadline = (start) + (timeout);
        (rt).request(request, rh);
        while (True):
            remaining = (deadline) - (long(time.time()*1000));
            if ((((rh).response) == (None)) and (((rh).failure) == (None))):
                if (((timeout) != (0)) and ((remaining) <= ((0)))):
                    break;

            else:
                break;

            if ((timeout) == (0)):
                (rt).wait(3.14);
            else:
                r = float(remaining);
                (rt).wait(float(r) / float(1000.0));

        (rt).release();
        if (((rh).failure) != (None)):
            (rt).fail((((u"RPC ") + (name)) + (u"(...) failed: ")) + ((rh).failure));
            return None

        if (((rh).response) == (None)):
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
            return fromJSON(reflect.Class.get(classname), obj)

    

# END_BUILTIN

# BEGIN_BUILTIN

class Client(object):
    def _init(self):
        self.runtime = None
        self.url = None
        self.timeout = None

    def __init__(self, runtime, url):
        self._init()
        (self).runtime = runtime
        (self).url = url
        (self).timeout = (0)

    def getRuntime(self):
        return (self).runtime

    def getURL(self):
        return (self).url

    def getTimeout(self):
        return (self).timeout

    def setTimeout(self, timeout):
        (self).timeout = timeout

    def _getClass(self):
        return u"Client"

    def _getField(self, name):
        if ((name) == (u"runtime")):
            return (self).runtime

        if ((name) == (u"url")):
            return (self).url

        if ((name) == (u"timeout")):
            return (self).timeout

        return None

    def _setField(self, name, value):
        if ((name) == (u"runtime")):
            (self).runtime = value

        if ((name) == (u"url")):
            (self).url = value

        if ((name) == (u"timeout")):
            (self).timeout = value

    

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
        body = (request).getBody();
        envelope = _JSONObject.parse(body);
        if (((((envelope).getObjectItem(u"$method")) == ((envelope).undefined())) or (((envelope).getObjectItem(u"rpc")) == ((envelope).undefined()))) or ((((envelope).getObjectItem(u"rpc")).getObjectItem(u"$class")) == (((envelope).getObjectItem(u"rpc")).undefined()))):
            (response).setBody(((u"Failed to understand request.\n\n") + (body)) + (u"\n"));
            (response).setCode(400);
        else:
            method = ((envelope).getObjectItem(u"$method")).getString();
            json = (envelope).getObjectItem(u"rpc");
            argument = fromJSON(reflect.Class.get(((json).getObjectItem(u"$class")).getString()), json);
            result = ((((reflect.Class.get(_getClass(self))).getField(u"impl")).getType()).getMethod(method)).invoke(self.impl, _List([argument]));
            (response).setBody((toJSON(result)).toString());
            (response).setCode(200);

        (self.getRuntime()).respond(request, response);

    def onServletError(self, url, message):
        (self.getRuntime()).fail((((u"RPC Server failed to register ") + (url)) + (u" due to: ")) + (message));

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
