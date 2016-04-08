from quark_runtime import *

import quark.reflect
import quark
import quark.concurrent
import quark_md


class RPC(object):
    def _init(self):
        self.service = None
        self.returned = None
        self.timeout = None
        self.methodName = None
        self.instance = None

    def __init__(self, service, methodName):
        self._init()
        timeout = (service)._getField(u"timeout");
        if (((timeout) == (None)) or ((timeout) <= (0.0))):
            timeout = 10.0

        override = (service).getTimeout();
        if (((override) != (None)) and ((override) > (0.0))):
            timeout = override

        (self).returned = ((quark.reflect.Class.get(_getClass(service))).getMethod(methodName)).getType()
        (self).timeout = timeout
        (self).methodName = methodName
        (self).service = service

    def call(self, args):
        result = None;
        (self).instance = ((self).service).getInstance()
        if (((self).instance) != (None)):
            request = _HTTPRequest(((self).instance).getURL());
            json = quark.toJSON(args, None);
            envelope = _JSONObject();
            (envelope).setObjectItem((u"$method"), ((_JSONObject()).setString((self).methodName)));
            (envelope).setObjectItem((u"$context"), ((_JSONObject()).setString(u"TBD")));
            (envelope).setObjectItem((u"rpc"), (json));
            body = (envelope).toString();
            (request).setBody(body);
            (request).setMethod(u"POST");
            rpc = RPCRequest(args, self);
            result = (rpc).call(request)
        else:
            result = (self.returned).construct(_List([]))
            (result).finish(u"all services are down");

        quark.concurrent.FutureWait.waitFor(result, 10.0);
        return result

    def succeed(self, info):
        ((self).instance).succeed(info);

    def fail(self, info):
        ((self).instance).fail(info);

    def toString(self):
        return ((((((u"RPC ") + (((self).service).getName())) + (u" at ")) + (((self).instance).getURL())) + (u": ")) + ((self).methodName)) + (u"(...)")

    def _getClass(self):
        return u"quark.behaviors.RPC"

    def _getField(self, name):
        if ((name) == (u"service")):
            return (self).service

        if ((name) == (u"returned")):
            return (self).returned

        if ((name) == (u"timeout")):
            return (self).timeout

        if ((name) == (u"methodName")):
            return (self).methodName

        if ((name) == (u"instance")):
            return (self).instance

        return None

    def _setField(self, name, value):
        if ((name) == (u"service")):
            (self).service = value

        if ((name) == (u"returned")):
            (self).returned = value

        if ((name) == (u"timeout")):
            (self).timeout = value

        if ((name) == (u"methodName")):
            (self).methodName = value

        if ((name) == (u"instance")):
            (self).instance = value


RPC.quark_behaviors_RPC_ref = quark_md.Root.quark_behaviors_RPC_md
class RPCRequest(object):
    def _init(self):
        self.rpc = None
        self.retval = None
        self.args = None
        self.timeout = None

    def __init__(self, args, rpc):
        self._init()
        (self).retval = ((rpc).returned).construct(_List([]))
        (self).args = args
        (self).timeout = quark.concurrent.Timeout((rpc).timeout)
        (self).rpc = rpc

    def call(self, request):
        ((self).timeout).start(self);
        (quark.concurrent.Context.runtime()).request(request, self);
        return (self).retval

    def onHTTPResponse(self, rq, response):
        info = None;
        ((self).timeout).cancel();
        if (((response).getCode()) != (200)):
            info = ((((self).rpc).toString()) + (u" failed: Server returned error ")) + (_toString((response).getCode()))
            ((self).retval).finish(info);
            ((self).rpc).fail(info);
            return

        body = (response).getBody();
        obj = _JSONObject.parse(body);
        classname = ((obj).getObjectItem(u"$class")).getString();
        if ((classname) == (None)):
            info = (((self).rpc).toString()) + (u" failed: Server returned unrecognizable content")
            ((self).retval).finish(info);
            ((self).rpc).fail(info);
            return
        else:
            quark.fromJSON(((self).rpc).returned, (self).retval, obj);
            ((self).retval).finish(None);
            ((self).rpc).succeed(u"Success in the future...");

    def onTimeout(self, timeout):
        ((self).retval).finish(u"request timed out");
        ((self).rpc).fail(u"request timed out");

    def _getClass(self):
        return u"quark.behaviors.RPCRequest"

    def _getField(self, name):
        if ((name) == (u"rpc")):
            return (self).rpc

        if ((name) == (u"retval")):
            return (self).retval

        if ((name) == (u"args")):
            return (self).args

        if ((name) == (u"timeout")):
            return (self).timeout

        return None

    def _setField(self, name, value):
        if ((name) == (u"rpc")):
            (self).rpc = value

        if ((name) == (u"retval")):
            (self).retval = value

        if ((name) == (u"args")):
            (self).args = value

        if ((name) == (u"timeout")):
            (self).timeout = value

    def onHTTPInit(self, request):
        pass

    def onHTTPError(self, request, message):
        pass

    def onHTTPFinal(self, request):
        pass
RPCRequest.quark_behaviors_RPCRequest_ref = quark_md.Root.quark_behaviors_RPCRequest_md
class CircuitBreaker(object):
    def _init(self):
        self.id = None
        self.failureLimit = None
        self.retestDelay = None
        self.active = True
        self.failureCount = 0
        self.mutex = _Lock()

    def __init__(self, id, failureLimit, retestDelay):
        self._init()
        (self).id = id
        (self).failureLimit = failureLimit
        (self).retestDelay = retestDelay

    def succeed(self):
        ((self).mutex).acquire();
        if (((self).failureCount) > (0)):
            (quark.Client.logger).info((u"- CLOSE breaker on ") + ((self).id));

        (self).failureCount = 0
        ((self).mutex).release();

    def fail(self):
        doSchedule = False;
        ((self).mutex).acquire();
        (self).failureCount = ((self).failureCount) + (1)
        if (((self).failureCount) >= ((self).failureLimit)):
            (self).active = False
            doSchedule = True
            (quark.Client.logger).warn((u"- OPEN breaker on ") + ((self).id));

        ((self).mutex).release();
        if (doSchedule):
            (quark.concurrent.Context.runtime()).schedule(self, (self).retestDelay);

    def onExecute(self, runtime):
        ((self).mutex).acquire();
        (self).active = True
        (quark.Client.logger).warn((u"- RETEST breaker on ") + ((self).id));
        ((self).mutex).release();

    def _getClass(self):
        return u"quark.behaviors.CircuitBreaker"

    def _getField(self, name):
        if ((name) == (u"id")):
            return (self).id

        if ((name) == (u"failureLimit")):
            return (self).failureLimit

        if ((name) == (u"retestDelay")):
            return (self).retestDelay

        if ((name) == (u"active")):
            return (self).active

        if ((name) == (u"failureCount")):
            return (self).failureCount

        if ((name) == (u"mutex")):
            return (self).mutex

        return None

    def _setField(self, name, value):
        if ((name) == (u"id")):
            (self).id = value

        if ((name) == (u"failureLimit")):
            (self).failureLimit = value

        if ((name) == (u"retestDelay")):
            (self).retestDelay = value

        if ((name) == (u"active")):
            (self).active = value

        if ((name) == (u"failureCount")):
            (self).failureCount = value

        if ((name) == (u"mutex")):
            (self).mutex = value


CircuitBreaker.quark_behaviors_CircuitBreaker_ref = quark_md.Root.quark_behaviors_CircuitBreaker_md
