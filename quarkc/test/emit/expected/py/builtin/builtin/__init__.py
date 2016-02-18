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

class Resolver(object):

    def resolve(self, serviceName):
        assert False

Resolver.builtin_Resolver_ref = builtin_md.Root.builtin_Resolver_md
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

    def getName(self):
        assert False

    def getInstance(self):
        assert False

    def getTimeout(self):
        assert False

    def rpc(self, methodName, args):
        rpc = behaviors.RPC(self, methodName);
        return (rpc).call(args)


Service.builtin_Service_ref = builtin_md.Root.builtin_Service_md
class BaseService(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def getName(self):
        return None

    def getInstance(self):
        return None

    def getTimeout(self):
        return -(1.0)

    def _getClass(self):
        return u"builtin.BaseService"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def rpc(self, methodName, args):
        rpc = behaviors.RPC(self, methodName);
        return (rpc).call(args)

BaseService.builtin_BaseService_ref = builtin_md.Root.builtin_BaseService_md
class ServiceInstance(object):
    def _init(self):
        self.serviceName = None
        self.url = None
        self.breaker = None

    def __init__(self, serviceName, url, failureLimit, retestDelay):
        self._init()
        (self).serviceName = serviceName
        (self).url = url
        (self).breaker = behaviors.CircuitBreaker(((((u"[") + (serviceName)) + (u" at ")) + (url)) + (u"]"), failureLimit, retestDelay)

    def isActive(self):
        return ((self).breaker).active

    def getURL(self):
        return (self).url

    def succeed(self, info):
        if (not ((self).isActive())):
            _println((((u"- CLOSE breaker for ") + ((self).serviceName)) + (u" at ")) + ((self).url));

        ((self).breaker).succeed();

    def fail(self, info):
        if (not ((self).isActive())):
            _println((((u"- OPEN breaker for ") + ((self).serviceName)) + (u" at ")) + ((self).url));

        ((self).breaker).fail();

    def _getClass(self):
        return u"builtin.ServiceInstance"

    def _getField(self, name):
        if ((name) == (u"serviceName")):
            return (self).serviceName

        if ((name) == (u"url")):
            return (self).url

        if ((name) == (u"breaker")):
            return (self).breaker

        return None

    def _setField(self, name, value):
        if ((name) == (u"serviceName")):
            (self).serviceName = value

        if ((name) == (u"url")):
            (self).url = value

        if ((name) == (u"breaker")):
            (self).breaker = value

    
ServiceInstance.builtin_ServiceInstance_ref = builtin_md.Root.builtin_ServiceInstance_md
class DegenerateResolver(object):
    """
    DegenerateResolver assumes that the serviceName is an URL.
    """
    def _init(self):
        pass
    def __init__(self): self._init()

    def resolve(self, serviceName):
        return _List([serviceName])

    def _getClass(self):
        return u"builtin.DegenerateResolver"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
DegenerateResolver.builtin_DegenerateResolver_ref = builtin_md.Root.builtin_DegenerateResolver_md
class Client(object):
    def _init(self):
        self.resolver = None
        self.serviceName = None
        self._timeout = None
        self._failureLimit = 3
        self._retestDelay = 8.0
        self.mutex = None
        self.instanceMap = None
        self.counter = None

    def __init__(self, serviceName):
        self._init()
        (self).serviceName = serviceName
        (self).resolver = DegenerateResolver()
        (self)._timeout = 0.0
        (self).mutex = _Lock()
        (self).instanceMap = {}
        (self).counter = 0
        failureLimit = (self)._getField(u"failureLimit");
        if ((failureLimit) != (None)):
            (self)._failureLimit = failureLimit

        retestDelay = (self)._getField(u"retestDelay");
        if ((retestDelay) != (None)):
            (self)._retestDelay = retestDelay

    def setResolver(self, resolver):
        (self).resolver = resolver

    def getInstance(self):
        urls = ((self).resolver).resolve((self).serviceName);
        if ((len(urls)) <= (0)):
            return None

        (urls).sort();
        ((self).mutex).acquire();
        result = None;
        next = ((self).counter) % (len(urls));
        (self).counter = ((self).counter) + (1)
        idx = next;
        while (True):
            url = (urls)[idx];
            instance = ((self).instanceMap).get(url);
            if ((instance) == (None)):
                instance = ServiceInstance((self).serviceName, url, self._failureLimit, self._retestDelay)
                ((self).instanceMap)[url] = (instance);

            if ((instance).isActive()):
                _println((((((u"- ") + ((self).serviceName)) + (u" using instance ")) + (str((idx) + (1)))) + (u": ")) + (url));
                result = instance
                break;

            idx = ((idx) + (1)) % (len(urls))
            if ((idx) == (next)):
                _println(((u"- ") + ((self).serviceName)) + (u": no live instances! giving up."));
                break;

        ((self).mutex).release();
        return result

    def getName(self):
        return (self).serviceName

    def getTimeout(self):
        return (self)._timeout

    def setTimeout(self, timeout):
        (self)._timeout = timeout

    def _getClass(self):
        return u"builtin.Client"

    def _getField(self, name):
        if ((name) == (u"resolver")):
            return (self).resolver

        if ((name) == (u"serviceName")):
            return (self).serviceName

        if ((name) == (u"_timeout")):
            return (self)._timeout

        if ((name) == (u"_failureLimit")):
            return (self)._failureLimit

        if ((name) == (u"_retestDelay")):
            return (self)._retestDelay

        if ((name) == (u"mutex")):
            return (self).mutex

        if ((name) == (u"instanceMap")):
            return (self).instanceMap

        if ((name) == (u"counter")):
            return (self).counter

        return None

    def _setField(self, name, value):
        if ((name) == (u"resolver")):
            (self).resolver = value

        if ((name) == (u"serviceName")):
            (self).serviceName = value

        if ((name) == (u"_timeout")):
            (self)._timeout = value

        if ((name) == (u"_failureLimit")):
            (self)._failureLimit = value

        if ((name) == (u"_retestDelay")):
            (self)._retestDelay = value

        if ((name) == (u"mutex")):
            (self).mutex = value

        if ((name) == (u"instanceMap")):
            (self).instanceMap = value

        if ((name) == (u"counter")):
            (self).counter = value

    
Client.builtin_Map_builtin_String_builtin_ServiceInstance__ref = builtin_md.Root.builtin_Map_builtin_String_builtin_ServiceInstance__md
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
