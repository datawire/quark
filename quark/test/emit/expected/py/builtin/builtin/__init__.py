from quark_runtime import *

import reflect
import behaviors
import concurrent
import builtin_md



def toJSON(obj):
    """
    Serializes object tree into JSON. skips over fields starting with underscore
    """
    result = _JSONObject();
    if ((obj) == (None)):
        (result).setNull();
        return result

    cls = reflect.Class.get(_getClass(obj));
    idx = 0;
    if (((cls).name) == (u"builtin.String")):
        (result).setString(obj);
        return result

    if (((((((cls).name) == (u"builtin.byte")) or (((cls).name) == (u"builtin.short"))) or (((cls).name) == (u"builtin.int"))) or (((cls).name) == (u"builtin.long"))) or (((cls).name) == (u"builtin.float"))):
        (result).setNumber(obj);
        return result

    if (((cls).name) == (u"builtin.List")):
        (result).setList();
        list = obj;
        while ((idx) < (len(list))):
            (result).setListItem(idx, toJSON((list)[idx]));
            idx = (idx) + (1)

        return result

    if (((cls).name) == (u"builtin.Map")):
        (result).setObject();
        map = obj;
        return result

    (result).setObjectItem((u"$class"), ((_JSONObject()).setString((cls).id)));
    fields = (cls).getFields();
    while ((idx) < (len(fields))):
        fieldName = ((fields)[idx]).name;
        if (not ((fieldName).startswith(u"_"))):
            (result).setObjectItem((fieldName), (toJSON((obj)._getField(fieldName))));

        idx = (idx) + (1)

    return result


def fromJSON(result, json):
    """
    deserialize json into provided result object. Skip over fields starting with underscore
    """
    if (((json) == (None)) or ((json).isNull())):
        return None

    idx = 0;
    cls = reflect.Class.get(_getClass(result));
    if (((cls).name) == (u"builtin.List")):
        list = result;
        while ((idx) < ((json).size())):
            (list).append(fromJSON((((cls).parameters)[0]).construct(_List([])), (json).getListItem(idx)));
            idx = (idx) + (1)

        return list

    fields = (cls).getFields();
    while ((idx) < (len(fields))):
        f = (fields)[idx];
        idx = (idx) + (1)
        if (((f).name).startswith(u"_")):
            continue;

        if ((((f).getType()).name) == (u"builtin.String")):
            s = ((json).getObjectItem((f).name)).getString();
            (result)._setField(((f).name), (s));
            continue;

        if ((((f).getType()).name) == (u"builtin.float")):
            flt = ((json).getObjectItem((f).name)).getNumber();
            (result)._setField(((f).name), (flt));
            continue;

        if ((((f).getType()).name) == (u"builtin.int")):
            if (not (((json).getObjectItem((f).name)).isNull())):
                i = int(round(((json).getObjectItem((f).name)).getNumber()));
                (result)._setField(((f).name), (i));

            continue;

        if ((((f).getType()).name) == (u"builtin.bool")):
            if (not (((json).getObjectItem((f).name)).isNull())):
                b = ((json).getObjectItem((f).name)).getBool();
                (result)._setField(((f).name), (b));

            continue;

        (result)._setField(((f).name), (fromJSON(((f).getType()).construct(_List([])), (json).getObjectItem((f).name))));

    return result

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
        return u"builtin.ResponseHolder"

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
ResponseHolder.builtin_ResponseHolder_ref = builtin_md.Root.builtin_ResponseHolder_md
class Service(object):

    def getURL(self): assert False

    def getTimeout(self): assert False

    def rpc(self, name, message, options):
        rpc = behaviors.RPC(self, name, options);
        return (rpc).call(message)


class Client(object):
    def _init(self):
        self.url = None
        self.timeout = None

    def __init__(self, url):
        self._init()
        (self).url = url
        (self).timeout = (0)

    def getURL(self):
        return (self).url

    def getTimeout(self):
        return (self).timeout

    def setTimeout(self, timeout):
        (self).timeout = timeout

    def _getClass(self):
        return u"builtin.Client"

    def _getField(self, name):
        if ((name) == (u"url")):
            return (self).url

        if ((name) == (u"timeout")):
            return (self).timeout

        return None

    def _setField(self, name, value):
        if ((name) == (u"url")):
            (self).url = value

        if ((name) == (u"timeout")):
            (self).timeout = value

    
Client.builtin_Client_ref = builtin_md.Root.builtin_Client_md
class ServerResponder(object):
    def _init(self):
        self.request = None
        self.response = None

    def __init__(self, request, response):
        self._init()
        (self).request = request
        (self).response = response

    def onFuture(self, result):
        error = (result).getError();
        if ((error) != (None)):
            (self.response).setCode(404);
        else:
            ((self).response).setBody((toJSON(result)).toString());
            ((self).response).setCode(200);

        (concurrent.Context.runtime()).respond(self.request, self.response);

    def _getClass(self):
        return u"builtin.ServerResponder"

    def _getField(self, name):
        if ((name) == (u"request")):
            return (self).request

        if ((name) == (u"response")):
            return (self).response

        return None

    def _setField(self, name, value):
        if ((name) == (u"request")):
            (self).request = value

        if ((name) == (u"response")):
            (self).response = value

    
ServerResponder.builtin_ServerResponder_ref = builtin_md.Root.builtin_ServerResponder_md
class Server(object):
    def _init(self):
        self.impl = None

    def __init__(self, impl):
        self._init()
        (self).impl = impl

    def onHTTPRequest(self, request, response):
        body = (request).getBody();
        envelope = _JSONObject.parse(body);
        if (((((envelope).getObjectItem(u"$method")) == ((envelope).undefined())) or (((envelope).getObjectItem(u"rpc")) == ((envelope).undefined()))) or ((((envelope).getObjectItem(u"rpc")).getObjectItem(u"$class")) == (((envelope).getObjectItem(u"rpc")).undefined()))):
            (response).setBody(((u"Failed to understand request.\n\n") + (body)) + (u"\n"));
            (response).setCode(400);
            (concurrent.Context.runtime()).respond(request, response);
        else:
            methodName = ((envelope).getObjectItem(u"$method")).getString();
            json = (envelope).getObjectItem(u"rpc");
            method = (((reflect.Class.get(_getClass(self))).getField(u"impl")).getType()).getMethod(methodName);
            argType = reflect.Class.get(((method).parameters)[0]);
            arg = (argType).construct(_List([]));
            argument = fromJSON(arg, json);
            result = (method).invoke(self.impl, _List([argument]));
            (result).onFinished(ServerResponder(request, response));

    def onServletError(self, url, message):
        (concurrent.Context.runtime()).fail((((u"RPC Server failed to register ") + (url)) + (u" due to: ")) + (message));

    def _getClass(self):
        return u"builtin.Server<Object>"

    def _getField(self, name):
        if ((name) == (u"impl")):
            return (self).impl

        return None

    def _setField(self, name, value):
        if ((name) == (u"impl")):
            (self).impl = value

    def serveHTTP(self, url):
        (concurrent.Context.runtime()).serveHTTP(url, self);

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
Server.builtin_Server_Object__ref = builtin_md.Root.builtin_Server_Object__md
