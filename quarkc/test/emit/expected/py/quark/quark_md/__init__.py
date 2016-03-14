from quark_runtime import *

import quark.reflect
import quark.concurrent
import quark
import quark.behaviors


class quark_List_quark_String_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_String_, self).__init__(u"quark.List<quark.String>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.String"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_String_.singleton = quark_List_quark_String_()

class quark_List_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_Object_, self).__init__(u"quark.List<quark.Object>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_Object_.singleton = quark_List_quark_Object_()

class quark_List_quark_reflect_Field_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_reflect_Field_, self).__init__(u"quark.List<quark.reflect.Field>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.reflect.Field"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_reflect_Field_.singleton = quark_List_quark_reflect_Field_()

class quark_List_quark_reflect_Class_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_reflect_Class_, self).__init__(u"quark.List<quark.reflect.Class>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.reflect.Class"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_reflect_Class_.singleton = quark_List_quark_reflect_Class_()

class quark_List_quark_reflect_Method_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_reflect_Method_, self).__init__(u"quark.List<quark.reflect.Method>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.reflect.Method"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_reflect_Method_.singleton = quark_List_quark_reflect_Method_()

class quark_List_quark_concurrent_FutureCompletion_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_concurrent_FutureCompletion_, self).__init__(u"quark.List<quark.concurrent.FutureCompletion>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.concurrent.FutureCompletion"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_concurrent_FutureCompletion_.singleton = quark_List_quark_concurrent_FutureCompletion_()

class quark_Map_quark_Object_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Map_quark_Object_quark_Object_, self).__init__(u"quark.Map<quark.Object,quark.Object>");
        (self).name = u"quark.Map"
        (self).parameters = _List([u"quark.Object", u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _Map()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_Map_quark_Object_quark_Object_.singleton = quark_Map_quark_Object_quark_Object_()

class quark_Map_quark_String_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Map_quark_String_quark_Object_, self).__init__(u"quark.Map<quark.String,quark.Object>");
        (self).name = u"quark.Map"
        (self).parameters = _List([u"quark.String", u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _Map()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_Map_quark_String_quark_Object_.singleton = quark_Map_quark_String_quark_Object_()

class quark_Map_quark_String_quark_ServiceInstance_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Map_quark_String_quark_ServiceInstance_, self).__init__(u"quark.Map<quark.String,quark.ServiceInstance>");
        (self).name = u"quark.Map"
        (self).parameters = _List([u"quark.String", u"quark.ServiceInstance"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _Map()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_Map_quark_String_quark_ServiceInstance_.singleton = quark_Map_quark_String_quark_ServiceInstance_()

class quark_Map_quark_String_quark_reflect_Class_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Map_quark_String_quark_reflect_Class_, self).__init__(u"quark.Map<quark.String,quark.reflect.Class>");
        (self).name = u"quark.Map"
        (self).parameters = _List([u"quark.String", u"quark.reflect.Class"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _Map()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_Map_quark_String_quark_reflect_Class_.singleton = quark_Map_quark_String_quark_reflect_Class_()

class quark_Resolver(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Resolver, self).__init__(u"quark.Resolver");
        (self).name = u"quark.Resolver"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_Resolver.singleton = quark_Resolver()

class quark_ResponseHolder(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_ResponseHolder, self).__init__(u"quark.ResponseHolder");
        (self).name = u"quark.ResponseHolder"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.HTTPResponse", u"response"), quark.reflect.Field(u"quark.String", u"failure")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.ResponseHolder()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_ResponseHolder.singleton = quark_ResponseHolder()

class quark_Service(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Service, self).__init__(u"quark.Service");
        (self).name = u"quark.Service"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_Service.singleton = quark_Service()

class quark_BaseService(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_BaseService, self).__init__(u"quark.BaseService");
        (self).name = u"quark.BaseService"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return quark.BaseService()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_BaseService.singleton = quark_BaseService()

class quark_ServiceInstance(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_ServiceInstance, self).__init__(u"quark.ServiceInstance");
        (self).name = u"quark.ServiceInstance"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"serviceName"), quark.reflect.Field(u"quark.String", u"url"), quark.reflect.Field(u"quark.behaviors.CircuitBreaker", u"breaker")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.ServiceInstance((args)[0], (args)[1], (args)[2], (args)[3])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_ServiceInstance.singleton = quark_ServiceInstance()

class quark_DegenerateResolver(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_DegenerateResolver, self).__init__(u"quark.DegenerateResolver");
        (self).name = u"quark.DegenerateResolver"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return quark.DegenerateResolver()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_DegenerateResolver.singleton = quark_DegenerateResolver()

class quark_Client(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Client, self).__init__(u"quark.Client");
        (self).name = u"quark.Client"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.Logger", u"logger"), quark.reflect.Field(u"quark.Resolver", u"resolver"), quark.reflect.Field(u"quark.String", u"serviceName"), quark.reflect.Field(u"quark.float", u"_timeout"), quark.reflect.Field(u"quark.int", u"_failureLimit"), quark.reflect.Field(u"quark.float", u"_retestDelay"), quark.reflect.Field(u"quark.concurrent.Lock", u"mutex"), quark.reflect.Field(u"quark.Map<quark.String,quark.ServiceInstance>", u"instanceMap"), quark.reflect.Field(u"quark.int", u"counter")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.Client((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_Client.singleton = quark_Client()

class quark_ServerResponder(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_ServerResponder, self).__init__(u"quark.ServerResponder");
        (self).name = u"quark.ServerResponder"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.HTTPRequest", u"request"), quark.reflect.Field(u"quark.HTTPResponse", u"response")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.ServerResponder((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_ServerResponder.singleton = quark_ServerResponder()

class quark_Server_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Server_quark_Object_, self).__init__(u"quark.Server<quark.Object>");
        (self).name = u"quark.Server"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([quark.reflect.Field(u"quark.Object", u"impl")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.Server((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_Server_quark_Object_.singleton = quark_Server_quark_Object_()

class quark_reflect_Class(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_reflect_Class, self).__init__(u"quark.reflect.Class");
        (self).name = u"quark.reflect.Class"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.Map<quark.String,quark.reflect.Class>", u"classes"), quark.reflect.Field(u"quark.reflect.Class", u"VOID"), quark.reflect.Field(u"quark.reflect.Class", u"BOOL"), quark.reflect.Field(u"quark.reflect.Class", u"INT"), quark.reflect.Field(u"quark.reflect.Class", u"LONG"), quark.reflect.Field(u"quark.reflect.Class", u"FLOAT"), quark.reflect.Field(u"quark.reflect.Class", u"STRING"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.String", u"name"), quark.reflect.Field(u"quark.List<quark.String>", u"parameters"), quark.reflect.Field(u"quark.List<quark.reflect.Field>", u"fields"), quark.reflect.Field(u"quark.List<quark.reflect.Method>", u"methods")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.reflect.Class((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_reflect_Class.singleton = quark_reflect_Class()

class quark_reflect_Field(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_reflect_Field, self).__init__(u"quark.reflect.Field");
        (self).name = u"quark.reflect.Field"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"type"), quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.reflect.Field((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_reflect_Field.singleton = quark_reflect_Field()

class quark_behaviors_RPC_call_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPC_call_Method, self).__init__(u"quark.concurrent.Future", u"call", _List([u"quark.List<quark.Object>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).call((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_RPC_succeed_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPC_succeed_Method, self).__init__(u"quark.void", u"succeed", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).succeed((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_RPC_fail_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPC_fail_Method, self).__init__(u"quark.void", u"fail", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).fail((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_RPC_toString_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPC_toString_Method, self).__init__(u"quark.String", u"toString", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).toString()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_RPC(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_behaviors_RPC, self).__init__(u"quark.behaviors.RPC");
        (self).name = u"quark.behaviors.RPC"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.Service", u"service"), quark.reflect.Field(u"quark.reflect.Class", u"returned"), quark.reflect.Field(u"quark.float", u"timeout"), quark.reflect.Field(u"quark.String", u"methodName"), quark.reflect.Field(u"quark.ServiceInstance", u"instance")])
        (self).methods = _List([quark_behaviors_RPC_call_Method(), quark_behaviors_RPC_succeed_Method(), quark_behaviors_RPC_fail_Method(), quark_behaviors_RPC_toString_Method()])

    def construct(self, args):
        return quark.behaviors.RPC((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_behaviors_RPC.singleton = quark_behaviors_RPC()

class quark_behaviors_RPCRequest_call_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPCRequest_call_Method, self).__init__(u"quark.concurrent.Future", u"call", _List([u"quark.HTTPRequest"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).call((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_RPCRequest_onHTTPResponse_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPCRequest_onHTTPResponse_Method, self).__init__(u"quark.void", u"onHTTPResponse", _List([u"quark.HTTPRequest", u"quark.HTTPResponse"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPResponse((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_RPCRequest_onTimeout_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPCRequest_onTimeout_Method, self).__init__(u"quark.void", u"onTimeout", _List([u"quark.concurrent.Timeout"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onTimeout((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_RPCRequest(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_behaviors_RPCRequest, self).__init__(u"quark.behaviors.RPCRequest");
        (self).name = u"quark.behaviors.RPCRequest"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.behaviors.RPC", u"rpc"), quark.reflect.Field(u"quark.concurrent.Future", u"retval"), quark.reflect.Field(u"quark.List<quark.Object>", u"args"), quark.reflect.Field(u"quark.concurrent.Timeout", u"timeout")])
        (self).methods = _List([quark_behaviors_RPCRequest_call_Method(), quark_behaviors_RPCRequest_onHTTPResponse_Method(), quark_behaviors_RPCRequest_onTimeout_Method()])

    def construct(self, args):
        return quark.behaviors.RPCRequest((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_behaviors_RPCRequest.singleton = quark_behaviors_RPCRequest()

class quark_behaviors_CircuitBreaker_succeed_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_CircuitBreaker_succeed_Method, self).__init__(u"quark.void", u"succeed", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).succeed();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_CircuitBreaker_fail_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_CircuitBreaker_fail_Method, self).__init__(u"quark.void", u"fail", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).fail();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_CircuitBreaker_onExecute_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_CircuitBreaker_onExecute_Method, self).__init__(u"quark.void", u"onExecute", _List([u"quark.Runtime"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onExecute((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_CircuitBreaker(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_behaviors_CircuitBreaker, self).__init__(u"quark.behaviors.CircuitBreaker");
        (self).name = u"quark.behaviors.CircuitBreaker"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.int", u"failureLimit"), quark.reflect.Field(u"quark.float", u"retestDelay"), quark.reflect.Field(u"quark.bool", u"active"), quark.reflect.Field(u"quark.int", u"failureCount"), quark.reflect.Field(u"quark.concurrent.Lock", u"mutex")])
        (self).methods = _List([quark_behaviors_CircuitBreaker_succeed_Method(), quark_behaviors_CircuitBreaker_fail_Method(), quark_behaviors_CircuitBreaker_onExecute_Method()])

    def construct(self, args):
        return quark.behaviors.CircuitBreaker((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_behaviors_CircuitBreaker.singleton = quark_behaviors_CircuitBreaker()

class quark_concurrent_Event_getContext_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Event_getContext_Method, self).__init__(u"quark.concurrent.EventContext", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Event_fireEvent_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Event_fireEvent_Method, self).__init__(u"quark.void", u"fireEvent", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).fireEvent();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Event(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_Event, self).__init__(u"quark.concurrent.Event");
        (self).name = u"quark.concurrent.Event"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([quark_concurrent_Event_getContext_Method(), quark_concurrent_Event_fireEvent_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_Event.singleton = quark_concurrent_Event()

class quark_concurrent_FutureListener_onFuture_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_FutureListener_onFuture_Method, self).__init__(u"quark.void", u"onFuture", _List([u"quark.concurrent.Future"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onFuture((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_FutureListener(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_FutureListener, self).__init__(u"quark.concurrent.FutureListener");
        (self).name = u"quark.concurrent.FutureListener"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([quark_concurrent_FutureListener_onFuture_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_FutureListener.singleton = quark_concurrent_FutureListener()

class quark_concurrent_FutureCompletion_getContext_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_FutureCompletion_getContext_Method, self).__init__(u"quark.concurrent.EventContext", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_FutureCompletion_fireEvent_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_FutureCompletion_fireEvent_Method, self).__init__(u"quark.void", u"fireEvent", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).fireEvent();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_FutureCompletion(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_FutureCompletion, self).__init__(u"quark.concurrent.FutureCompletion");
        (self).name = u"quark.concurrent.FutureCompletion"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Future", u"future"), quark.reflect.Field(u"quark.concurrent.FutureListener", u"listener")])
        (self).methods = _List([quark_concurrent_FutureCompletion_getContext_Method(), quark_concurrent_FutureCompletion_fireEvent_Method()])

    def construct(self, args):
        return quark.concurrent.FutureCompletion((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_FutureCompletion.singleton = quark_concurrent_FutureCompletion()

class quark_concurrent_EventContext_getContext_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_EventContext_getContext_Method, self).__init__(u"quark.concurrent.Context", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_EventContext(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_EventContext, self).__init__(u"quark.concurrent.EventContext");
        (self).name = u"quark.concurrent.EventContext"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Context", u"_context")])
        (self).methods = _List([quark_concurrent_EventContext_getContext_Method()])

    def construct(self, args):
        return quark.concurrent.EventContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_EventContext.singleton = quark_concurrent_EventContext()

class quark_concurrent_Future_onFinished_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Future_onFinished_Method, self).__init__(u"quark.void", u"onFinished", _List([u"quark.concurrent.FutureListener"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onFinished((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Future_finish_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Future_finish_Method, self).__init__(u"quark.void", u"finish", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).finish((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Future_isFinished_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Future_isFinished_Method, self).__init__(u"quark.bool", u"isFinished", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).isFinished()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Future_getError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Future_getError_Method, self).__init__(u"quark.String", u"getError", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getError()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Future_await_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Future_await_Method, self).__init__(u"quark.void", u"await", _List([u"quark.float"]));

    def invoke(self, object, args):
        obj = object;
        (obj).await((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Future_getContext_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Future_getContext_Method, self).__init__(u"quark.concurrent.Context", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Future(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_Future, self).__init__(u"quark.concurrent.Future");
        (self).name = u"quark.concurrent.Future"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Context", u"_context"), quark.reflect.Field(u"quark.bool", u"_finished"), quark.reflect.Field(u"quark.String", u"_error"), quark.reflect.Field(u"quark.List<quark.concurrent.FutureCompletion>", u"_callbacks"), quark.reflect.Field(u"quark.concurrent.Lock", u"_lock")])
        (self).methods = _List([quark_concurrent_Future_onFinished_Method(), quark_concurrent_Future_finish_Method(), quark_concurrent_Future_isFinished_Method(), quark_concurrent_Future_getError_Method(), quark_concurrent_Future_await_Method(), quark_concurrent_Future_getContext_Method()])

    def construct(self, args):
        return quark.concurrent.Future()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_Future.singleton = quark_concurrent_Future()

class quark_concurrent_FutureWait_wait_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_FutureWait_wait_Method, self).__init__(u"quark.void", u"wait", _List([u"quark.concurrent.Future", u"quark.float"]));

    def invoke(self, object, args):
        obj = object;
        (obj).wait((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_FutureWait_onFuture_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_FutureWait_onFuture_Method, self).__init__(u"quark.void", u"onFuture", _List([u"quark.concurrent.Future"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onFuture((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_FutureWait_waitFor_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_FutureWait_waitFor_Method, self).__init__(u"quark.concurrent.Future", u"waitFor", _List([u"quark.concurrent.Future", u"quark.float"]));

    def invoke(self, object, args):
        obj = object;
        return quark.concurrent.FutureWait.waitFor((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_FutureWait(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_FutureWait, self).__init__(u"quark.concurrent.FutureWait");
        (self).name = u"quark.concurrent.FutureWait"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Condition", u"_lock"), quark.reflect.Field(u"quark.concurrent.Future", u"_future")])
        (self).methods = _List([quark_concurrent_FutureWait_wait_Method(), quark_concurrent_FutureWait_onFuture_Method(), quark_concurrent_FutureWait_waitFor_Method()])

    def construct(self, args):
        return quark.concurrent.FutureWait()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_FutureWait.singleton = quark_concurrent_FutureWait()

class quark_concurrent_Queue_quark_concurrent_Event__put_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Queue_quark_concurrent_Event__put_Method, self).__init__(u"quark.void", u"put", _List([u"quark.concurrent.Event"]));

    def invoke(self, object, args):
        obj = object;
        (obj).put((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Queue_quark_concurrent_Event__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Queue_quark_concurrent_Event__get_Method, self).__init__(u"quark.concurrent.Event", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Queue_quark_concurrent_Event__size_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Queue_quark_concurrent_Event__size_Method, self).__init__(u"quark.int", u"size", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).size()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Queue_quark_concurrent_Event_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_Queue_quark_concurrent_Event_, self).__init__(u"quark.concurrent.Queue<quark.concurrent.Event>");
        (self).name = u"quark.concurrent.Queue"
        (self).parameters = _List([u"quark.concurrent.Event"])
        (self).fields = _List([quark.reflect.Field(u"quark.List<quark.Object>", u"items"), quark.reflect.Field(u"quark.int", u"head"), quark.reflect.Field(u"quark.int", u"tail")])
        (self).methods = _List([quark_concurrent_Queue_quark_concurrent_Event__put_Method(), quark_concurrent_Queue_quark_concurrent_Event__get_Method(), quark_concurrent_Queue_quark_concurrent_Event__size_Method()])

    def construct(self, args):
        return quark.concurrent.Queue()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_Queue_quark_concurrent_Event_.singleton = quark_concurrent_Queue_quark_concurrent_Event_()

class quark_concurrent_CollectorExecutor__start_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_CollectorExecutor__start_Method, self).__init__(u"quark.void", u"_start", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj)._start();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_CollectorExecutor_onExecute_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_CollectorExecutor_onExecute_Method, self).__init__(u"quark.void", u"onExecute", _List([u"quark.Runtime"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onExecute((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_CollectorExecutor(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_CollectorExecutor, self).__init__(u"quark.concurrent.CollectorExecutor");
        (self).name = u"quark.concurrent.CollectorExecutor"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Queue<quark.concurrent.Event>", u"events"), quark.reflect.Field(u"quark.concurrent.Collector", u"collector")])
        (self).methods = _List([quark_concurrent_CollectorExecutor__start_Method(), quark_concurrent_CollectorExecutor_onExecute_Method()])

    def construct(self, args):
        return quark.concurrent.CollectorExecutor((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_CollectorExecutor.singleton = quark_concurrent_CollectorExecutor()

class quark_concurrent_Collector_put_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Collector_put_Method, self).__init__(u"quark.void", u"put", _List([u"quark.concurrent.Event"]));

    def invoke(self, object, args):
        obj = object;
        (obj).put((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Collector__swap_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Collector__swap_Method, self).__init__(u"quark.concurrent.Queue<quark.concurrent.Event>", u"_swap", _List([u"quark.concurrent.Queue<quark.concurrent.Event>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj)._swap((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Collector__poll_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Collector__poll_Method, self).__init__(u"quark.void", u"_poll", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj)._poll();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Collector(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_Collector, self).__init__(u"quark.concurrent.Collector");
        (self).name = u"quark.concurrent.Collector"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Lock", u"lock"), quark.reflect.Field(u"quark.concurrent.Queue<quark.concurrent.Event>", u"pending"), quark.reflect.Field(u"quark.concurrent.CollectorExecutor", u"executor"), quark.reflect.Field(u"quark.bool", u"idle")])
        (self).methods = _List([quark_concurrent_Collector_put_Method(), quark_concurrent_Collector__swap_Method(), quark_concurrent_Collector__poll_Method()])

    def construct(self, args):
        return quark.concurrent.Collector()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_Collector.singleton = quark_concurrent_Collector()

class quark_concurrent_TimeoutListener_onTimeout_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_TimeoutListener_onTimeout_Method, self).__init__(u"quark.void", u"onTimeout", _List([u"quark.concurrent.Timeout"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onTimeout((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_TimeoutListener(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_TimeoutListener, self).__init__(u"quark.concurrent.TimeoutListener");
        (self).name = u"quark.concurrent.TimeoutListener"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([quark_concurrent_TimeoutListener_onTimeout_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_TimeoutListener.singleton = quark_concurrent_TimeoutListener()

class quark_concurrent_TimeoutExpiry_getContext_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_TimeoutExpiry_getContext_Method, self).__init__(u"quark.concurrent.EventContext", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_TimeoutExpiry_fireEvent_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_TimeoutExpiry_fireEvent_Method, self).__init__(u"quark.void", u"fireEvent", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).fireEvent();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_TimeoutExpiry(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_TimeoutExpiry, self).__init__(u"quark.concurrent.TimeoutExpiry");
        (self).name = u"quark.concurrent.TimeoutExpiry"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Timeout", u"timeout"), quark.reflect.Field(u"quark.concurrent.TimeoutListener", u"listener")])
        (self).methods = _List([quark_concurrent_TimeoutExpiry_getContext_Method(), quark_concurrent_TimeoutExpiry_fireEvent_Method()])

    def construct(self, args):
        return quark.concurrent.TimeoutExpiry((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_TimeoutExpiry.singleton = quark_concurrent_TimeoutExpiry()

class quark_concurrent_Timeout_start_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Timeout_start_Method, self).__init__(u"quark.void", u"start", _List([u"quark.concurrent.TimeoutListener"]));

    def invoke(self, object, args):
        obj = object;
        (obj).start((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Timeout_cancel_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Timeout_cancel_Method, self).__init__(u"quark.void", u"cancel", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).cancel();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Timeout_onExecute_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Timeout_onExecute_Method, self).__init__(u"quark.void", u"onExecute", _List([u"quark.Runtime"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onExecute((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Timeout_getContext_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Timeout_getContext_Method, self).__init__(u"quark.concurrent.Context", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Timeout(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_Timeout, self).__init__(u"quark.concurrent.Timeout");
        (self).name = u"quark.concurrent.Timeout"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Context", u"_context"), quark.reflect.Field(u"quark.float", u"timeout"), quark.reflect.Field(u"quark.concurrent.Lock", u"lock"), quark.reflect.Field(u"quark.concurrent.TimeoutListener", u"listener")])
        (self).methods = _List([quark_concurrent_Timeout_start_Method(), quark_concurrent_Timeout_cancel_Method(), quark_concurrent_Timeout_onExecute_Method(), quark_concurrent_Timeout_getContext_Method()])

    def construct(self, args):
        return quark.concurrent.Timeout((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_Timeout.singleton = quark_concurrent_Timeout()

class quark_concurrent_TLSContextInitializer_getValue_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_TLSContextInitializer_getValue_Method, self).__init__(u"quark.concurrent.Context", u"getValue", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getValue()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_TLSContextInitializer(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_TLSContextInitializer, self).__init__(u"quark.concurrent.TLSContextInitializer");
        (self).name = u"quark.concurrent.TLSContextInitializer"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([quark_concurrent_TLSContextInitializer_getValue_Method()])

    def construct(self, args):
        return quark.concurrent.TLSContextInitializer()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_TLSContextInitializer.singleton = quark_concurrent_TLSContextInitializer()

class quark_concurrent_Context_current_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Context_current_Method, self).__init__(u"quark.concurrent.Context", u"current", _List([]));

    def invoke(self, object, args):
        obj = object;
        return quark.concurrent.Context.current()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Context_global_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Context_global_Method, self).__init__(u"quark.concurrent.Context", u"global", _List([]));

    def invoke(self, object, args):
        obj = object;
        return quark.concurrent.Context.global_()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Context_runtime_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Context_runtime_Method, self).__init__(u"quark.Runtime", u"runtime", _List([]));

    def invoke(self, object, args):
        obj = object;
        return quark.concurrent.Context.runtime()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Context_swap_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_concurrent_Context_swap_Method, self).__init__(u"quark.void", u"swap", _List([u"quark.concurrent.Context"]));

    def invoke(self, object, args):
        obj = object;
        quark.concurrent.Context.swap((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_concurrent_Context(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_concurrent_Context, self).__init__(u"quark.concurrent.Context");
        (self).name = u"quark.concurrent.Context"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Context", u"_global"), quark.reflect.Field(u"quark.concurrent.TLS<quark.concurrent.Context>", u"_current"), quark.reflect.Field(u"quark.concurrent.Context", u"_parent"), quark.reflect.Field(u"quark.Runtime", u"_runtime"), quark.reflect.Field(u"quark.concurrent.Collector", u"collector")])
        (self).methods = _List([quark_concurrent_Context_current_Method(), quark_concurrent_Context_global_Method(), quark_concurrent_Context_runtime_Method(), quark_concurrent_Context_swap_Method()])

    def construct(self, args):
        return quark.concurrent.Context((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_concurrent_Context.singleton = quark_concurrent_Context()

class Root(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Root.quark_List_quark_String__md = quark_List_quark_String_.singleton
Root.quark_List_quark_Object__md = quark_List_quark_Object_.singleton
Root.quark_List_quark_reflect_Class__md = quark_List_quark_reflect_Class_.singleton
Root.quark_List_quark_concurrent_FutureCompletion__md = quark_List_quark_concurrent_FutureCompletion_.singleton
Root.quark_Map_quark_Object_quark_Object__md = quark_Map_quark_Object_quark_Object_.singleton
Root.quark_Map_quark_String_quark_ServiceInstance__md = quark_Map_quark_String_quark_ServiceInstance_.singleton
Root.quark_Resolver_md = quark_Resolver.singleton
Root.quark_ResponseHolder_md = quark_ResponseHolder.singleton
Root.quark_Service_md = quark_Service.singleton
Root.quark_BaseService_md = quark_BaseService.singleton
Root.quark_ServiceInstance_md = quark_ServiceInstance.singleton
Root.quark_DegenerateResolver_md = quark_DegenerateResolver.singleton
Root.quark_Client_md = quark_Client.singleton
Root.quark_ServerResponder_md = quark_ServerResponder.singleton
Root.quark_Server_quark_Object__md = quark_Server_quark_Object_.singleton
Root.quark_behaviors_RPC_md = quark_behaviors_RPC.singleton
Root.quark_behaviors_RPCRequest_md = quark_behaviors_RPCRequest.singleton
Root.quark_behaviors_CircuitBreaker_md = quark_behaviors_CircuitBreaker.singleton
Root.quark_concurrent_Event_md = quark_concurrent_Event.singleton
Root.quark_concurrent_FutureListener_md = quark_concurrent_FutureListener.singleton
Root.quark_concurrent_FutureCompletion_md = quark_concurrent_FutureCompletion.singleton
Root.quark_concurrent_EventContext_md = quark_concurrent_EventContext.singleton
Root.quark_concurrent_Future_md = quark_concurrent_Future.singleton
Root.quark_concurrent_FutureWait_md = quark_concurrent_FutureWait.singleton
Root.quark_concurrent_Queue_quark_concurrent_Event__md = quark_concurrent_Queue_quark_concurrent_Event_.singleton
Root.quark_concurrent_CollectorExecutor_md = quark_concurrent_CollectorExecutor.singleton
Root.quark_concurrent_Collector_md = quark_concurrent_Collector.singleton
Root.quark_concurrent_TimeoutListener_md = quark_concurrent_TimeoutListener.singleton
Root.quark_concurrent_TimeoutExpiry_md = quark_concurrent_TimeoutExpiry.singleton
Root.quark_concurrent_Timeout_md = quark_concurrent_Timeout.singleton
Root.quark_concurrent_TLSContextInitializer_md = quark_concurrent_TLSContextInitializer.singleton
Root.quark_concurrent_Context_md = quark_concurrent_Context.singleton
