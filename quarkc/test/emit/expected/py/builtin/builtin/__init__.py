from quark_runtime import *

import reflect
import behaviors
import concurrent
import builtin_md



def toJSON(obj, cls):
    """
    Serializes object tree into JSON. skips over fields starting with underscore
    """
    result = _JSONObject();
    if ((obj) == (None)):
        (result).setNull();
        return result

    if ((cls) == (None)):
        cls = reflect.Class.get(_getClass(obj))

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
            (result).setListItem(idx, toJSON((list)[idx], None));
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
            (result).setObjectItem((fieldName), (toJSON((obj)._getField(fieldName), ((fields)[idx]).getType())));

        idx = (idx) + (1)

    return result


def fromJSON(cls, result, json):
    """
    deserialize json into provided result object. Skip over fields starting with underscore
    """
    if (((json) == (None)) or ((json).isNull())):
        return None

    idx = 0;
    if ((result) == (None)):
        if (((cls).name) == (u"builtin.String")):
            s = (json).getString();
            return s

        if (((cls).name) == (u"builtin.float")):
            flt = (json).getNumber();
            return flt

        if (((cls).name) == (u"builtin.int")):
            i = int(round((json).getNumber()));
            return i

        if (((cls).name) == (u"builtin.bool")):
            b = (json).getBool();
            return b

        result = (cls).construct(_List([]))

    if (((cls).name) == (u"builtin.List")):
        list = result;
        while ((idx) < ((json).size())):
            (list).append(fromJSON(((cls).getParameters())[0], None, (json).getListItem(idx)));
            idx = (idx) + (1)

        return list

    fields = (cls).getFields();
    while ((idx) < (len(fields))):
        f = (fields)[idx];
        idx = (idx) + (1)
        if (((f).name).startswith(u"_")):
            continue;

        if (not (((json).getObjectItem((f).name)).isNull())):
            (result)._setField(((f).name), (fromJSON((f).getType(), None, (json).getObjectItem((f).name))));

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

    def getURL(self):
        assert False

    def getTimeout(self):
        assert False

    def rpc(self, name, args):
        rpc = behaviors.RPC(self, name);
        return (rpc).call(args)


Service.builtin_Service_ref = builtin_md.Root.builtin_Service_md
class Client(object):
    def _init(self):
        self.url = None
        self._timeout = None

    def __init__(self, url):
        self._init()
        (self).url = url
        (self)._timeout = (0)

    def getURL(self):
        return (self).url

    def getTimeout(self):
        return (self)._timeout

    def setTimeout(self, timeout):
        (self)._timeout = timeout

    def _getClass(self):
        return u"builtin.Client"

    def _getField(self, name):
        if ((name) == (u"url")):
            return (self).url

        if ((name) == (u"_timeout")):
            return (self)._timeout

        return None

    def _setField(self, name, value):
        if ((name) == (u"url")):
            (self).url = value

        if ((name) == (u"_timeout")):
            (self)._timeout = value

    
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
            ((self).response).setBody((toJSON(result, None)).toString());
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
        if ((((envelope).getObjectItem(u"$method")) == ((envelope).undefined())) or (((envelope).getObjectItem(u"rpc")) == ((envelope).undefined()))):
            (response).setBody(((u"Failed to understand request.\n\n") + (body)) + (u"\n"));
            (response).setCode(400);
            (concurrent.Context.runtime()).respond(request, response);
        else:
            methodName = ((envelope).getObjectItem(u"$method")).getString();
            json = (envelope).getObjectItem(u"rpc");
            method = (((reflect.Class.get(_getClass(self))).getField(u"impl")).getType()).getMethod(methodName);
            params = (method).getParameters();
            args = _List([]);
            idx = 0;
            while ((idx) < (len(params))):
                (args).append(fromJSON((params)[idx], None, (json).getListItem(idx)));
                idx = (idx) + (1)

            result = (method).invoke(self.impl, args);
            (result).onFinished(ServerResponder(request, response));

    def onServletError(self, url, message):
        (concurrent.Context.runtime()).fail((((u"RPC Server failed to register ") + (url)) + (u" due to: ")) + (message));

    def _getClass(self):
        return u"builtin.Server<builtin.Object>"

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
Server.builtin_List_builtin_reflect_Class__ref = builtin_md.Root.builtin_List_builtin_reflect_Class__md
Server.builtin_Server_builtin_Object__ref = builtin_md.Root.builtin_Server_builtin_Object__md
