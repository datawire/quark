from quark_runtime import *

import builtin.reflect
import builtin.concurrent
import builtin
import builtin.behaviors


class builtin_List_builtin_String_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_String_, self).__init__(u"builtin.List<builtin.String>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.String"])
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
builtin_List_builtin_String_.singleton = builtin_List_builtin_String_()

class builtin_List_builtin_Object_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_Object_, self).__init__(u"builtin.List<builtin.Object>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.Object"])
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
builtin_List_builtin_Object_.singleton = builtin_List_builtin_Object_()

class builtin_List_builtin_reflect_Field_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_reflect_Field_, self).__init__(u"builtin.List<builtin.reflect.Field>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.reflect.Field"])
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
builtin_List_builtin_reflect_Field_.singleton = builtin_List_builtin_reflect_Field_()

class builtin_List_builtin_reflect_Class_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_reflect_Class_, self).__init__(u"builtin.List<builtin.reflect.Class>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.reflect.Class"])
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
builtin_List_builtin_reflect_Class_.singleton = builtin_List_builtin_reflect_Class_()

class builtin_List_builtin_reflect_Method_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_reflect_Method_, self).__init__(u"builtin.List<builtin.reflect.Method>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.reflect.Method"])
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
builtin_List_builtin_reflect_Method_.singleton = builtin_List_builtin_reflect_Method_()

class builtin_List_builtin_concurrent_FutureCompletion_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_concurrent_FutureCompletion_, self).__init__(u"builtin.List<builtin.concurrent.FutureCompletion>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.concurrent.FutureCompletion"])
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
builtin_List_builtin_concurrent_FutureCompletion_.singleton = builtin_List_builtin_concurrent_FutureCompletion_()

class builtin_Map_builtin_Object_builtin_Object_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Map_builtin_Object_builtin_Object_, self).__init__(u"builtin.Map<builtin.Object,builtin.Object>");
        (self).name = u"builtin.Map"
        (self).parameters = _List([u"builtin.Object", u"builtin.Object"])
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
builtin_Map_builtin_Object_builtin_Object_.singleton = builtin_Map_builtin_Object_builtin_Object_()

class builtin_Map_builtin_String_builtin_Object_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Map_builtin_String_builtin_Object_, self).__init__(u"builtin.Map<builtin.String,builtin.Object>");
        (self).name = u"builtin.Map"
        (self).parameters = _List([u"builtin.String", u"builtin.Object"])
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
builtin_Map_builtin_String_builtin_Object_.singleton = builtin_Map_builtin_String_builtin_Object_()

class builtin_Map_builtin_String_builtin_ServiceInstance_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Map_builtin_String_builtin_ServiceInstance_, self).__init__(u"builtin.Map<builtin.String,builtin.ServiceInstance>");
        (self).name = u"builtin.Map"
        (self).parameters = _List([u"builtin.String", u"builtin.ServiceInstance"])
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
builtin_Map_builtin_String_builtin_ServiceInstance_.singleton = builtin_Map_builtin_String_builtin_ServiceInstance_()

class builtin_Map_builtin_String_builtin_reflect_Class_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Map_builtin_String_builtin_reflect_Class_, self).__init__(u"builtin.Map<builtin.String,builtin.reflect.Class>");
        (self).name = u"builtin.Map"
        (self).parameters = _List([u"builtin.String", u"builtin.reflect.Class"])
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
builtin_Map_builtin_String_builtin_reflect_Class_.singleton = builtin_Map_builtin_String_builtin_reflect_Class_()

class builtin_Resolver(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Resolver, self).__init__(u"builtin.Resolver");
        (self).name = u"builtin.Resolver"
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
builtin_Resolver.singleton = builtin_Resolver()

class builtin_ResponseHolder(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_ResponseHolder, self).__init__(u"builtin.ResponseHolder");
        (self).name = u"builtin.ResponseHolder"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.HTTPResponse", u"response"), builtin.reflect.Field(u"builtin.String", u"failure")])
        (self).methods = _List([])

    def construct(self, args):
        return builtin.ResponseHolder()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_ResponseHolder.singleton = builtin_ResponseHolder()

class builtin_Service(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Service, self).__init__(u"builtin.Service");
        (self).name = u"builtin.Service"
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
builtin_Service.singleton = builtin_Service()

class builtin_BaseService(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_BaseService, self).__init__(u"builtin.BaseService");
        (self).name = u"builtin.BaseService"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return builtin.BaseService()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_BaseService.singleton = builtin_BaseService()

class builtin_ServiceInstance(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_ServiceInstance, self).__init__(u"builtin.ServiceInstance");
        (self).name = u"builtin.ServiceInstance"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"serviceName"), builtin.reflect.Field(u"builtin.String", u"url"), builtin.reflect.Field(u"builtin.behaviors.CircuitBreaker", u"breaker")])
        (self).methods = _List([])

    def construct(self, args):
        return builtin.ServiceInstance((args)[0], (args)[1], (args)[2], (args)[3])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_ServiceInstance.singleton = builtin_ServiceInstance()

class builtin_DegenerateResolver(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_DegenerateResolver, self).__init__(u"builtin.DegenerateResolver");
        (self).name = u"builtin.DegenerateResolver"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return builtin.DegenerateResolver()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_DegenerateResolver.singleton = builtin_DegenerateResolver()

class builtin_Client(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Client, self).__init__(u"builtin.Client");
        (self).name = u"builtin.Client"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.Resolver", u"resolver"), builtin.reflect.Field(u"builtin.String", u"serviceName"), builtin.reflect.Field(u"builtin.float", u"_timeout"), builtin.reflect.Field(u"builtin.int", u"_failureLimit"), builtin.reflect.Field(u"builtin.float", u"_retestDelay"), builtin.reflect.Field(u"builtin.concurrent.Lock", u"mutex"), builtin.reflect.Field(u"builtin.Map<builtin.String,builtin.ServiceInstance>", u"instanceMap"), builtin.reflect.Field(u"builtin.int", u"counter")])
        (self).methods = _List([])

    def construct(self, args):
        return builtin.Client((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Client.singleton = builtin_Client()

class builtin_ServerResponder(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_ServerResponder, self).__init__(u"builtin.ServerResponder");
        (self).name = u"builtin.ServerResponder"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.HTTPRequest", u"request"), builtin.reflect.Field(u"builtin.HTTPResponse", u"response")])
        (self).methods = _List([])

    def construct(self, args):
        return builtin.ServerResponder((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_ServerResponder.singleton = builtin_ServerResponder()

class builtin_Server_builtin_Object_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_Server_builtin_Object_, self).__init__(u"builtin.Server<builtin.Object>");
        (self).name = u"builtin.Server"
        (self).parameters = _List([u"builtin.Object"])
        (self).fields = _List([builtin.reflect.Field(u"builtin.Object", u"impl")])
        (self).methods = _List([])

    def construct(self, args):
        return builtin.Server((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Server_builtin_Object_.singleton = builtin_Server_builtin_Object_()

class builtin_reflect_Class(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_reflect_Class, self).__init__(u"builtin.reflect.Class");
        (self).name = u"builtin.reflect.Class"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.Map<builtin.String,builtin.reflect.Class>", u"classes"), builtin.reflect.Field(u"builtin.reflect.Class", u"VOID"), builtin.reflect.Field(u"builtin.reflect.Class", u"BOOL"), builtin.reflect.Field(u"builtin.reflect.Class", u"INT"), builtin.reflect.Field(u"builtin.reflect.Class", u"LONG"), builtin.reflect.Field(u"builtin.reflect.Class", u"STRING"), builtin.reflect.Field(u"builtin.String", u"id"), builtin.reflect.Field(u"builtin.String", u"name"), builtin.reflect.Field(u"builtin.List<builtin.String>", u"parameters"), builtin.reflect.Field(u"builtin.List<builtin.reflect.Field>", u"fields"), builtin.reflect.Field(u"builtin.List<builtin.reflect.Method>", u"methods")])
        (self).methods = _List([])

    def construct(self, args):
        return builtin.reflect.Class((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_reflect_Class.singleton = builtin_reflect_Class()

class builtin_reflect_Field(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_reflect_Field, self).__init__(u"builtin.reflect.Field");
        (self).name = u"builtin.reflect.Field"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"type"), builtin.reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return builtin.reflect.Field((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_reflect_Field.singleton = builtin_reflect_Field()

class builtin_behaviors_RPC_call_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_RPC_call_Method, self).__init__(u"builtin.concurrent.Future", u"call", _List([u"builtin.List<builtin.Object>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).call((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_behaviors_RPC_succeed_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_RPC_succeed_Method, self).__init__(u"builtin.void", u"succeed", _List([u"builtin.String"]));

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

class builtin_behaviors_RPC_fail_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_RPC_fail_Method, self).__init__(u"builtin.void", u"fail", _List([u"builtin.String"]));

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

class builtin_behaviors_RPC_toString_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_RPC_toString_Method, self).__init__(u"builtin.String", u"toString", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).toString()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_behaviors_RPC(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_behaviors_RPC, self).__init__(u"builtin.behaviors.RPC");
        (self).name = u"builtin.behaviors.RPC"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.Service", u"service"), builtin.reflect.Field(u"builtin.reflect.Class", u"returned"), builtin.reflect.Field(u"builtin.float", u"timeout"), builtin.reflect.Field(u"builtin.String", u"methodName"), builtin.reflect.Field(u"builtin.ServiceInstance", u"instance")])
        (self).methods = _List([builtin_behaviors_RPC_call_Method(), builtin_behaviors_RPC_succeed_Method(), builtin_behaviors_RPC_fail_Method(), builtin_behaviors_RPC_toString_Method()])

    def construct(self, args):
        return builtin.behaviors.RPC((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_behaviors_RPC.singleton = builtin_behaviors_RPC()

class builtin_behaviors_RPCRequest_call_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_RPCRequest_call_Method, self).__init__(u"builtin.concurrent.Future", u"call", _List([u"builtin.HTTPRequest"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).call((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_behaviors_RPCRequest_onHTTPResponse_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_RPCRequest_onHTTPResponse_Method, self).__init__(u"builtin.void", u"onHTTPResponse", _List([u"builtin.HTTPRequest", u"builtin.HTTPResponse"]));

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

class builtin_behaviors_RPCRequest_onTimeout_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_RPCRequest_onTimeout_Method, self).__init__(u"builtin.void", u"onTimeout", _List([u"builtin.concurrent.Timeout"]));

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

class builtin_behaviors_RPCRequest(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_behaviors_RPCRequest, self).__init__(u"builtin.behaviors.RPCRequest");
        (self).name = u"builtin.behaviors.RPCRequest"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.behaviors.RPC", u"rpc"), builtin.reflect.Field(u"builtin.concurrent.Future", u"retval"), builtin.reflect.Field(u"builtin.List<builtin.Object>", u"args"), builtin.reflect.Field(u"builtin.concurrent.Timeout", u"timeout")])
        (self).methods = _List([builtin_behaviors_RPCRequest_call_Method(), builtin_behaviors_RPCRequest_onHTTPResponse_Method(), builtin_behaviors_RPCRequest_onTimeout_Method()])

    def construct(self, args):
        return builtin.behaviors.RPCRequest((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_behaviors_RPCRequest.singleton = builtin_behaviors_RPCRequest()

class builtin_behaviors_CircuitBreaker_succeed_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_CircuitBreaker_succeed_Method, self).__init__(u"builtin.void", u"succeed", _List([]));

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

class builtin_behaviors_CircuitBreaker_fail_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_CircuitBreaker_fail_Method, self).__init__(u"builtin.void", u"fail", _List([]));

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

class builtin_behaviors_CircuitBreaker_onExecute_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_behaviors_CircuitBreaker_onExecute_Method, self).__init__(u"builtin.void", u"onExecute", _List([u"builtin.Runtime"]));

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

class builtin_behaviors_CircuitBreaker(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_behaviors_CircuitBreaker, self).__init__(u"builtin.behaviors.CircuitBreaker");
        (self).name = u"builtin.behaviors.CircuitBreaker"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"id"), builtin.reflect.Field(u"builtin.int", u"failureLimit"), builtin.reflect.Field(u"builtin.float", u"retestDelay"), builtin.reflect.Field(u"builtin.bool", u"active"), builtin.reflect.Field(u"builtin.int", u"failureCount"), builtin.reflect.Field(u"builtin.concurrent.Lock", u"mutex")])
        (self).methods = _List([builtin_behaviors_CircuitBreaker_succeed_Method(), builtin_behaviors_CircuitBreaker_fail_Method(), builtin_behaviors_CircuitBreaker_onExecute_Method()])

    def construct(self, args):
        return builtin.behaviors.CircuitBreaker((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_behaviors_CircuitBreaker.singleton = builtin_behaviors_CircuitBreaker()

class builtin_concurrent_Event_getContext_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Event_getContext_Method, self).__init__(u"builtin.concurrent.EventContext", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Event_fireEvent_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Event_fireEvent_Method, self).__init__(u"builtin.void", u"fireEvent", _List([]));

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

class builtin_concurrent_Event(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_Event, self).__init__(u"builtin.concurrent.Event");
        (self).name = u"builtin.concurrent.Event"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([builtin_concurrent_Event_getContext_Method(), builtin_concurrent_Event_fireEvent_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_Event.singleton = builtin_concurrent_Event()

class builtin_concurrent_FutureListener_onFuture_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_FutureListener_onFuture_Method, self).__init__(u"builtin.void", u"onFuture", _List([u"builtin.concurrent.Future"]));

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

class builtin_concurrent_FutureListener(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_FutureListener, self).__init__(u"builtin.concurrent.FutureListener");
        (self).name = u"builtin.concurrent.FutureListener"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([builtin_concurrent_FutureListener_onFuture_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_FutureListener.singleton = builtin_concurrent_FutureListener()

class builtin_concurrent_FutureCompletion_getContext_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_FutureCompletion_getContext_Method, self).__init__(u"builtin.concurrent.EventContext", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_FutureCompletion_fireEvent_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_FutureCompletion_fireEvent_Method, self).__init__(u"builtin.void", u"fireEvent", _List([]));

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

class builtin_concurrent_FutureCompletion(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_FutureCompletion, self).__init__(u"builtin.concurrent.FutureCompletion");
        (self).name = u"builtin.concurrent.FutureCompletion"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.concurrent.Future", u"future"), builtin.reflect.Field(u"builtin.concurrent.FutureListener", u"listener")])
        (self).methods = _List([builtin_concurrent_FutureCompletion_getContext_Method(), builtin_concurrent_FutureCompletion_fireEvent_Method()])

    def construct(self, args):
        return builtin.concurrent.FutureCompletion((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_FutureCompletion.singleton = builtin_concurrent_FutureCompletion()

class builtin_concurrent_EventContext_getContext_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_EventContext_getContext_Method, self).__init__(u"builtin.concurrent.Context", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_EventContext(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_EventContext, self).__init__(u"builtin.concurrent.EventContext");
        (self).name = u"builtin.concurrent.EventContext"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.concurrent.Context", u"_context")])
        (self).methods = _List([builtin_concurrent_EventContext_getContext_Method()])

    def construct(self, args):
        return builtin.concurrent.EventContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_EventContext.singleton = builtin_concurrent_EventContext()

class builtin_concurrent_Future_onFinished_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Future_onFinished_Method, self).__init__(u"builtin.void", u"onFinished", _List([u"builtin.concurrent.FutureListener"]));

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

class builtin_concurrent_Future_finish_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Future_finish_Method, self).__init__(u"builtin.void", u"finish", _List([u"builtin.String"]));

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

class builtin_concurrent_Future_isFinished_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Future_isFinished_Method, self).__init__(u"builtin.bool", u"isFinished", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).isFinished()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Future_getError_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Future_getError_Method, self).__init__(u"builtin.String", u"getError", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getError()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Future_await_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Future_await_Method, self).__init__(u"builtin.void", u"await", _List([u"builtin.float"]));

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

class builtin_concurrent_Future_getContext_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Future_getContext_Method, self).__init__(u"builtin.concurrent.Context", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Future(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_Future, self).__init__(u"builtin.concurrent.Future");
        (self).name = u"builtin.concurrent.Future"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.concurrent.Context", u"_context"), builtin.reflect.Field(u"builtin.bool", u"_finished"), builtin.reflect.Field(u"builtin.String", u"_error"), builtin.reflect.Field(u"builtin.List<builtin.concurrent.FutureCompletion>", u"_callbacks"), builtin.reflect.Field(u"builtin.concurrent.Lock", u"_lock")])
        (self).methods = _List([builtin_concurrent_Future_onFinished_Method(), builtin_concurrent_Future_finish_Method(), builtin_concurrent_Future_isFinished_Method(), builtin_concurrent_Future_getError_Method(), builtin_concurrent_Future_await_Method(), builtin_concurrent_Future_getContext_Method()])

    def construct(self, args):
        return builtin.concurrent.Future()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_Future.singleton = builtin_concurrent_Future()

class builtin_concurrent_FutureWait_wait_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_FutureWait_wait_Method, self).__init__(u"builtin.void", u"wait", _List([u"builtin.concurrent.Future", u"builtin.float"]));

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

class builtin_concurrent_FutureWait_onFuture_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_FutureWait_onFuture_Method, self).__init__(u"builtin.void", u"onFuture", _List([u"builtin.concurrent.Future"]));

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

class builtin_concurrent_FutureWait_waitFor_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_FutureWait_waitFor_Method, self).__init__(u"builtin.concurrent.Future", u"waitFor", _List([u"builtin.concurrent.Future", u"builtin.float"]));

    def invoke(self, object, args):
        obj = object;
        return builtin.concurrent.FutureWait.waitFor((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_FutureWait(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_FutureWait, self).__init__(u"builtin.concurrent.FutureWait");
        (self).name = u"builtin.concurrent.FutureWait"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.concurrent.Condition", u"_lock"), builtin.reflect.Field(u"builtin.concurrent.Future", u"_future")])
        (self).methods = _List([builtin_concurrent_FutureWait_wait_Method(), builtin_concurrent_FutureWait_onFuture_Method(), builtin_concurrent_FutureWait_waitFor_Method()])

    def construct(self, args):
        return builtin.concurrent.FutureWait()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_FutureWait.singleton = builtin_concurrent_FutureWait()

class builtin_concurrent_Queue_builtin_concurrent_Event__put_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Queue_builtin_concurrent_Event__put_Method, self).__init__(u"builtin.void", u"put", _List([u"builtin.concurrent.Event"]));

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

class builtin_concurrent_Queue_builtin_concurrent_Event__get_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Queue_builtin_concurrent_Event__get_Method, self).__init__(u"builtin.concurrent.Event", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Queue_builtin_concurrent_Event__size_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Queue_builtin_concurrent_Event__size_Method, self).__init__(u"builtin.int", u"size", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).size()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Queue_builtin_concurrent_Event_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_Queue_builtin_concurrent_Event_, self).__init__(u"builtin.concurrent.Queue<builtin.concurrent.Event>");
        (self).name = u"builtin.concurrent.Queue"
        (self).parameters = _List([u"builtin.concurrent.Event"])
        (self).fields = _List([builtin.reflect.Field(u"builtin.List<builtin.Object>", u"items"), builtin.reflect.Field(u"builtin.int", u"head"), builtin.reflect.Field(u"builtin.int", u"tail")])
        (self).methods = _List([builtin_concurrent_Queue_builtin_concurrent_Event__put_Method(), builtin_concurrent_Queue_builtin_concurrent_Event__get_Method(), builtin_concurrent_Queue_builtin_concurrent_Event__size_Method()])

    def construct(self, args):
        return builtin.concurrent.Queue()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_Queue_builtin_concurrent_Event_.singleton = builtin_concurrent_Queue_builtin_concurrent_Event_()

class builtin_concurrent_CollectorExecutor__start_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_CollectorExecutor__start_Method, self).__init__(u"builtin.void", u"_start", _List([]));

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

class builtin_concurrent_CollectorExecutor_onExecute_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_CollectorExecutor_onExecute_Method, self).__init__(u"builtin.void", u"onExecute", _List([u"builtin.Runtime"]));

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

class builtin_concurrent_CollectorExecutor(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_CollectorExecutor, self).__init__(u"builtin.concurrent.CollectorExecutor");
        (self).name = u"builtin.concurrent.CollectorExecutor"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.concurrent.Queue<builtin.concurrent.Event>", u"events"), builtin.reflect.Field(u"builtin.concurrent.Collector", u"collector")])
        (self).methods = _List([builtin_concurrent_CollectorExecutor__start_Method(), builtin_concurrent_CollectorExecutor_onExecute_Method()])

    def construct(self, args):
        return builtin.concurrent.CollectorExecutor((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_CollectorExecutor.singleton = builtin_concurrent_CollectorExecutor()

class builtin_concurrent_Collector_put_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Collector_put_Method, self).__init__(u"builtin.void", u"put", _List([u"builtin.concurrent.Event"]));

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

class builtin_concurrent_Collector__swap_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Collector__swap_Method, self).__init__(u"builtin.concurrent.Queue<builtin.concurrent.Event>", u"_swap", _List([u"builtin.concurrent.Queue<builtin.concurrent.Event>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj)._swap((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Collector__poll_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Collector__poll_Method, self).__init__(u"builtin.void", u"_poll", _List([]));

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

class builtin_concurrent_Collector(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_Collector, self).__init__(u"builtin.concurrent.Collector");
        (self).name = u"builtin.concurrent.Collector"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.concurrent.Lock", u"lock"), builtin.reflect.Field(u"builtin.concurrent.Queue<builtin.concurrent.Event>", u"pending"), builtin.reflect.Field(u"builtin.concurrent.CollectorExecutor", u"executor"), builtin.reflect.Field(u"builtin.bool", u"idle")])
        (self).methods = _List([builtin_concurrent_Collector_put_Method(), builtin_concurrent_Collector__swap_Method(), builtin_concurrent_Collector__poll_Method()])

    def construct(self, args):
        return builtin.concurrent.Collector()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_Collector.singleton = builtin_concurrent_Collector()

class builtin_concurrent_TimeoutListener_onTimeout_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_TimeoutListener_onTimeout_Method, self).__init__(u"builtin.void", u"onTimeout", _List([u"builtin.concurrent.Timeout"]));

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

class builtin_concurrent_TimeoutListener(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_TimeoutListener, self).__init__(u"builtin.concurrent.TimeoutListener");
        (self).name = u"builtin.concurrent.TimeoutListener"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([builtin_concurrent_TimeoutListener_onTimeout_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_TimeoutListener.singleton = builtin_concurrent_TimeoutListener()

class builtin_concurrent_TimeoutExpiry_getContext_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_TimeoutExpiry_getContext_Method, self).__init__(u"builtin.concurrent.EventContext", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_TimeoutExpiry_fireEvent_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_TimeoutExpiry_fireEvent_Method, self).__init__(u"builtin.void", u"fireEvent", _List([]));

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

class builtin_concurrent_TimeoutExpiry(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_TimeoutExpiry, self).__init__(u"builtin.concurrent.TimeoutExpiry");
        (self).name = u"builtin.concurrent.TimeoutExpiry"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.concurrent.Timeout", u"timeout"), builtin.reflect.Field(u"builtin.concurrent.TimeoutListener", u"listener")])
        (self).methods = _List([builtin_concurrent_TimeoutExpiry_getContext_Method(), builtin_concurrent_TimeoutExpiry_fireEvent_Method()])

    def construct(self, args):
        return builtin.concurrent.TimeoutExpiry((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_TimeoutExpiry.singleton = builtin_concurrent_TimeoutExpiry()

class builtin_concurrent_Timeout_start_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Timeout_start_Method, self).__init__(u"builtin.void", u"start", _List([u"builtin.concurrent.TimeoutListener"]));

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

class builtin_concurrent_Timeout_cancel_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Timeout_cancel_Method, self).__init__(u"builtin.void", u"cancel", _List([]));

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

class builtin_concurrent_Timeout_onExecute_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Timeout_onExecute_Method, self).__init__(u"builtin.void", u"onExecute", _List([u"builtin.Runtime"]));

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

class builtin_concurrent_Timeout_getContext_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Timeout_getContext_Method, self).__init__(u"builtin.concurrent.Context", u"getContext", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getContext()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Timeout(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_Timeout, self).__init__(u"builtin.concurrent.Timeout");
        (self).name = u"builtin.concurrent.Timeout"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.concurrent.Context", u"_context"), builtin.reflect.Field(u"builtin.float", u"timeout"), builtin.reflect.Field(u"builtin.concurrent.Lock", u"lock"), builtin.reflect.Field(u"builtin.concurrent.TimeoutListener", u"listener")])
        (self).methods = _List([builtin_concurrent_Timeout_start_Method(), builtin_concurrent_Timeout_cancel_Method(), builtin_concurrent_Timeout_onExecute_Method(), builtin_concurrent_Timeout_getContext_Method()])

    def construct(self, args):
        return builtin.concurrent.Timeout((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_Timeout.singleton = builtin_concurrent_Timeout()

class builtin_concurrent_TLSContextInitializer_getValue_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_TLSContextInitializer_getValue_Method, self).__init__(u"builtin.concurrent.Context", u"getValue", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getValue()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_TLSContextInitializer(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_TLSContextInitializer, self).__init__(u"builtin.concurrent.TLSContextInitializer");
        (self).name = u"builtin.concurrent.TLSContextInitializer"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([builtin_concurrent_TLSContextInitializer_getValue_Method()])

    def construct(self, args):
        return builtin.concurrent.TLSContextInitializer()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_TLSContextInitializer.singleton = builtin_concurrent_TLSContextInitializer()

class builtin_concurrent_Context_current_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Context_current_Method, self).__init__(u"builtin.concurrent.Context", u"current", _List([]));

    def invoke(self, object, args):
        obj = object;
        return builtin.concurrent.Context.current()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Context_global_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Context_global_Method, self).__init__(u"builtin.concurrent.Context", u"global", _List([]));

    def invoke(self, object, args):
        obj = object;
        return builtin.concurrent.Context.global_()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Context_runtime_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Context_runtime_Method, self).__init__(u"builtin.Runtime", u"runtime", _List([]));

    def invoke(self, object, args):
        obj = object;
        return builtin.concurrent.Context.runtime()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Context_swap_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(builtin_concurrent_Context_swap_Method, self).__init__(u"builtin.void", u"swap", _List([u"builtin.concurrent.Context"]));

    def invoke(self, object, args):
        obj = object;
        builtin.concurrent.Context.swap((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_concurrent_Context(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_concurrent_Context, self).__init__(u"builtin.concurrent.Context");
        (self).name = u"builtin.concurrent.Context"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.concurrent.Context", u"_global"), builtin.reflect.Field(u"builtin.concurrent.TLS<builtin.concurrent.Context>", u"_current"), builtin.reflect.Field(u"builtin.concurrent.Context", u"_parent"), builtin.reflect.Field(u"builtin.Runtime", u"_runtime"), builtin.reflect.Field(u"builtin.concurrent.Collector", u"collector")])
        (self).methods = _List([builtin_concurrent_Context_current_Method(), builtin_concurrent_Context_global_Method(), builtin_concurrent_Context_runtime_Method(), builtin_concurrent_Context_swap_Method()])

    def construct(self, args):
        return builtin.concurrent.Context((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_concurrent_Context.singleton = builtin_concurrent_Context()

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
Root.builtin_List_builtin_String__md = builtin_List_builtin_String_.singleton
Root.builtin_List_builtin_Object__md = builtin_List_builtin_Object_.singleton
Root.builtin_List_builtin_reflect_Class__md = builtin_List_builtin_reflect_Class_.singleton
Root.builtin_List_builtin_concurrent_FutureCompletion__md = builtin_List_builtin_concurrent_FutureCompletion_.singleton
Root.builtin_Map_builtin_Object_builtin_Object__md = builtin_Map_builtin_Object_builtin_Object_.singleton
Root.builtin_Map_builtin_String_builtin_ServiceInstance__md = builtin_Map_builtin_String_builtin_ServiceInstance_.singleton
Root.builtin_Resolver_md = builtin_Resolver.singleton
Root.builtin_ResponseHolder_md = builtin_ResponseHolder.singleton
Root.builtin_Service_md = builtin_Service.singleton
Root.builtin_BaseService_md = builtin_BaseService.singleton
Root.builtin_ServiceInstance_md = builtin_ServiceInstance.singleton
Root.builtin_DegenerateResolver_md = builtin_DegenerateResolver.singleton
Root.builtin_Client_md = builtin_Client.singleton
Root.builtin_ServerResponder_md = builtin_ServerResponder.singleton
Root.builtin_Server_builtin_Object__md = builtin_Server_builtin_Object_.singleton
Root.builtin_behaviors_RPC_md = builtin_behaviors_RPC.singleton
Root.builtin_behaviors_RPCRequest_md = builtin_behaviors_RPCRequest.singleton
Root.builtin_behaviors_CircuitBreaker_md = builtin_behaviors_CircuitBreaker.singleton
Root.builtin_concurrent_Event_md = builtin_concurrent_Event.singleton
Root.builtin_concurrent_FutureListener_md = builtin_concurrent_FutureListener.singleton
Root.builtin_concurrent_FutureCompletion_md = builtin_concurrent_FutureCompletion.singleton
Root.builtin_concurrent_EventContext_md = builtin_concurrent_EventContext.singleton
Root.builtin_concurrent_Future_md = builtin_concurrent_Future.singleton
Root.builtin_concurrent_FutureWait_md = builtin_concurrent_FutureWait.singleton
Root.builtin_concurrent_Queue_builtin_concurrent_Event__md = builtin_concurrent_Queue_builtin_concurrent_Event_.singleton
Root.builtin_concurrent_CollectorExecutor_md = builtin_concurrent_CollectorExecutor.singleton
Root.builtin_concurrent_Collector_md = builtin_concurrent_Collector.singleton
Root.builtin_concurrent_TimeoutListener_md = builtin_concurrent_TimeoutListener.singleton
Root.builtin_concurrent_TimeoutExpiry_md = builtin_concurrent_TimeoutExpiry.singleton
Root.builtin_concurrent_Timeout_md = builtin_concurrent_Timeout.singleton
Root.builtin_concurrent_TLSContextInitializer_md = builtin_concurrent_TLSContextInitializer.singleton
Root.builtin_concurrent_Context_md = builtin_concurrent_Context.singleton
