from quark_runtime import *

import builtin
import builtin.reflect
import builtin.concurrent
import builtin_md


class RPC(object):
    def _init(self):
        self.service = None
        self.returned = None
        self.timeout = None
        self.name = None

    def __init__(self, service, name, options):
        self._init()
        timeout = (service).getTimeout();
        if ((len(options)) > (0)):
            map = (options)[0];
            override = (map).get(u"timeout");
            if ((override) != (None)):
                timeout = (override)

        (self).returned = ((builtin.reflect.Class.get(_getClass(service))).getMethod(name)).getType()
        (self).timeout = timeout
        (self).name = name
        (self).service = service

    def call(self, message):
        request = _HTTPRequest(((self).service).getURL());
        json = builtin.toJSON(message);
        envelope = _JSONObject();
        (envelope).setObjectItem((u"$method"), ((_JSONObject()).setString((self).name)));
        (envelope).setObjectItem((u"$context"), ((_JSONObject()).setString(u"TBD")));
        (envelope).setObjectItem((u"rpc"), (json));
        (request).setBody((envelope).toString());
        (request).setMethod(u"POST");
        rpc = RPCRequest(message, self);
        result = (rpc).call(request);
        builtin.concurrent.FutureWait.waitFor(result, (1000));
        return result

    def _getClass(self):
        return u"builtin.behaviors.RPC"

    def _getField(self, name):
        if ((name) == (u"service")):
            return (self).service

        if ((name) == (u"returned")):
            return (self).returned

        if ((name) == (u"timeout")):
            return (self).timeout

        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"service")):
            (self).service = value

        if ((name) == (u"returned")):
            (self).returned = value

        if ((name) == (u"timeout")):
            (self).timeout = value

        if ((name) == (u"name")):
            (self).name = value

    
RPC.builtin_behaviors_RPC_ref = builtin_md.Root.builtin_behaviors_RPC_md
class RPCRequest(object):
    def _init(self):
        self.rpc = None
        self.retval = None
        self.message = None
        self.timeout = None

    def __init__(self, message, rpc):
        self._init()
        (self).retval = ((rpc).returned).construct(_List([]))
        (self).message = message
        (self).timeout = builtin.concurrent.Timeout((rpc).timeout)
        (self).rpc = rpc

    def call(self, request):
        ((self).timeout).start(self);
        (builtin.concurrent.Context.runtime()).request(request, self);
        return (self).retval

    def onHTTPResponse(self, rq, response):
        ((self).timeout).cancel();
        if (((response).getCode()) != (200)):
            ((self).retval).finish((((u"RPC ") + (((self).rpc).name)) + (u"(...) failed: Server returned error ")) + (str((response).getCode())));
            return

        body = (response).getBody();
        obj = _JSONObject.parse(body);
        classname = ((obj).getObjectItem(u"$class")).getString();
        if ((classname) == (None)):
            ((self).retval).finish(((u"RPC ") + (((self).rpc).name)) + (u"(...) failed: Server returned unrecognizable content"));
            return
        else:
            builtin.fromJSON((self).retval, obj);
            ((self).retval).finish(None);

    def onTimeout(self, timeout):
        ((self).retval).finish(u"request timed out");

    def _getClass(self):
        return u"builtin.behaviors.RPCRequest"

    def _getField(self, name):
        if ((name) == (u"rpc")):
            return (self).rpc

        if ((name) == (u"retval")):
            return (self).retval

        if ((name) == (u"message")):
            return (self).message

        if ((name) == (u"timeout")):
            return (self).timeout

        return None

    def _setField(self, name, value):
        if ((name) == (u"rpc")):
            (self).rpc = value

        if ((name) == (u"retval")):
            (self).retval = value

        if ((name) == (u"message")):
            (self).message = value

        if ((name) == (u"timeout")):
            (self).timeout = value

    def onHTTPInit(self, request):
        pass

    def onHTTPError(self, request, message):
        pass

    def onHTTPFinal(self, request):
        pass
RPCRequest.builtin_behaviors_RPCRequest_ref = builtin_md.Root.builtin_behaviors_RPCRequest_md
