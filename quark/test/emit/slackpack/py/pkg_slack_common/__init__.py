from quark_runtime import *

import slack
import pkg
import slack.event





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
        (request).setMethod(u"POST");
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


def main():
    cli = slack.Client(None, u"fake-token", pkg.Handler());
    (cli).onWSMessage(None, u"{\"type\": \"hello\"}");
    (cli).onWSMessage(None, u"{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}");


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

    if ((className) == (u"slack.event.SlackEvent")):
        return slack.event.SlackEvent()

    if ((className) == (u"slack.event.SlackError")):
        return slack.event.SlackError()

    if ((className) == (u"slack.event.Hello")):
        return slack.event.Hello()

    if ((className) == (u"slack.event.Message")):
        return slack.event.Message()

    if ((className) == (u"slack.event.Edited")):
        return slack.event.Edited()

    if ((className) == (u"slack.User")):
        return slack.User((args)[0], (args)[1])

    if ((className) == (u"slack.Channel")):
        return slack.Channel((args)[0], (args)[1])

    if ((className) == (u"slack.Client")):
        return slack.Client((args)[0], (args)[1], (args)[2])

    if ((className) == (u"pkg.Handler")):
        return pkg.Handler()

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

    if ((className) == (u"slack.event.SlackEvent")):
        return _List([Field(Class(u"String"), u"type"), Field(Class(u"slack.User"), u"user"), Field(Class(u"slack.Channel"), u"channel"), Field(Class(u"String"), u"timestamp")])

    if ((className) == (u"slack.event.SlackError")):
        return _List([Field(Class(u"String"), u"type"), Field(Class(u"slack.User"), u"user"), Field(Class(u"slack.Channel"), u"channel"), Field(Class(u"String"), u"timestamp"), Field(Class(u"int"), u"code"), Field(Class(u"String"), u"text")])

    if ((className) == (u"slack.event.Hello")):
        return _List([Field(Class(u"String"), u"type"), Field(Class(u"slack.User"), u"user"), Field(Class(u"slack.Channel"), u"channel"), Field(Class(u"String"), u"timestamp")])

    if ((className) == (u"slack.event.Message")):
        return _List([Field(Class(u"String"), u"type"), Field(Class(u"slack.User"), u"user"), Field(Class(u"slack.Channel"), u"channel"), Field(Class(u"String"), u"timestamp"), Field(Class(u"String"), u"subtype"), Field(Class(u"bool"), u"hidden"), Field(Class(u"String"), u"text"), Field(Class(u"slack.event.Edited"), u"edited")])

    if ((className) == (u"slack.event.Edited")):
        return _List([Field(Class(u"slack.User"), u"user"), Field(Class(u"String"), u"timestamp")])

    if ((className) == (u"slack.User")):
        return _List([Field(Class(u"slack.Client"), u"client"), Field(Class(u"String"), u"user")])

    if ((className) == (u"slack.Channel")):
        return _List([Field(Class(u"slack.Client"), u"client"), Field(Class(u"String"), u"channel")])

    if ((className) == (u"slack.Client")):
        return _List([Field(Class(u"Runtime"), u"runtime"), Field(Class(u"String"), u"token"), Field(Class(u"slack.SlackHandler"), u"handler"), Field(Class(u"int"), u"event_id"), Field(Class(u"WebSocket"), u"socket")])

    if ((className) == (u"pkg.Handler")):
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

    if (((cls).id) == (u"slack.event.SlackEvent")):
        (cls).name = u"slack.event.SlackEvent"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.event.SlackError")):
        (cls).name = u"slack.event.SlackError"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.event.Hello")):
        (cls).name = u"slack.event.Hello"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.event.Message")):
        (cls).name = u"slack.event.Message"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.event.Edited")):
        (cls).name = u"slack.event.Edited"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.SlackHandler")):
        (cls).name = u"slack.SlackHandler"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.User")):
        (cls).name = u"slack.User"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.Channel")):
        (cls).name = u"slack.Channel"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.Client")):
        (cls).name = u"slack.Client"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"pkg.Handler")):
        (cls).name = u"pkg.Handler"
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

    if ((className) == (u"slack.event.SlackEvent")):
        if ((method) == (u"load")):
            tmp_15 = object;
            (tmp_15).load((args)[0], (args)[1]);
            return None

        if ((method) == (u"dispatch")):
            tmp_16 = object;
            (tmp_16).dispatch((args)[0]);
            return None

    if ((className) == (u"slack.event.SlackError")):
        if ((method) == (u"load")):
            tmp_17 = object;
            (tmp_17).load((args)[0], (args)[1]);
            return None

        if ((method) == (u"dispatch")):
            tmp_18 = object;
            (tmp_18).dispatch((args)[0]);
            return None

    if ((className) == (u"slack.event.Hello")):
        if ((method) == (u"dispatch")):
            tmp_19 = object;
            (tmp_19).dispatch((args)[0]);
            return None

        if ((method) == (u"load")):
            tmp_20 = object;
            (tmp_20).load((args)[0], (args)[1]);
            return None

    if ((className) == (u"slack.event.Message")):
        if ((method) == (u"load")):
            tmp_21 = object;
            (tmp_21).load((args)[0], (args)[1]);
            return None

        if ((method) == (u"dispatch")):
            tmp_22 = object;
            (tmp_22).dispatch((args)[0]);
            return None

    if ((className) == (u"slack.event.Edited")):
        pass
    if ((className) == (u"slack.SlackHandler")):
        if ((method) == (u"onSlackEvent")):
            tmp_23 = object;
            (tmp_23).onSlackEvent((args)[0]);
            return None

        if ((method) == (u"onHello")):
            tmp_24 = object;
            (tmp_24).onHello((args)[0]);
            return None

        if ((method) == (u"onSlackError")):
            tmp_25 = object;
            (tmp_25).onSlackError((args)[0]);
            return None

        if ((method) == (u"onMessage")):
            tmp_26 = object;
            (tmp_26).onMessage((args)[0]);
            return None

    if ((className) == (u"slack.User")):
        pass
    if ((className) == (u"slack.Channel")):
        if ((method) == (u"send")):
            tmp_27 = object;
            (tmp_27).send((args)[0]);
            return None

    if ((className) == (u"slack.Client")):
        if ((method) == (u"connect")):
            tmp_28 = object;
            (tmp_28).connect();
            return None

        if ((method) == (u"request")):
            tmp_29 = object;
            (tmp_29).request((args)[0], (args)[1], (args)[2]);
            return None

        if ((method) == (u"ws_connect")):
            tmp_30 = object;
            (tmp_30).ws_connect((args)[0]);
            return None

        if ((method) == (u"ws_send")):
            tmp_31 = object;
            (tmp_31).ws_send((args)[0]);
            return None

        if ((method) == (u"onWSConnected")):
            tmp_32 = object;
            (tmp_32).onWSConnected((args)[0]);
            return None

        if ((method) == (u"onWSClose")):
            tmp_33 = object;
            (tmp_33).onWSClose((args)[0]);
            return None

        if ((method) == (u"onWSError")):
            tmp_34 = object;
            (tmp_34).onWSError((args)[0]);
            return None

        if ((method) == (u"construct")):
            tmp_35 = object;
            return (tmp_35).construct((args)[0])

        if ((method) == (u"onWSMessage")):
            tmp_36 = object;
            (tmp_36).onWSMessage((args)[0], (args)[1]);
            return None

        if ((method) == (u"onHTTPResponse")):
            tmp_37 = object;
            (tmp_37).onHTTPResponse((args)[0], (args)[1]);
            return None

    if ((className) == (u"pkg.Handler")):
        if ((method) == (u"onSlackEvent")):
            tmp_38 = object;
            (tmp_38).onSlackEvent((args)[0]);
            return None

    return None
