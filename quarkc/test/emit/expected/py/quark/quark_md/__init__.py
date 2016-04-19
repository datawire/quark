from quark_runtime import *

import quark.reflect


class quark_Task(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Task, self).__init__(u"quark.Task");
        (self).name = u"quark.Task"
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
quark_Task.singleton = quark_Task()

class quark_Runtime(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Runtime, self).__init__(u"quark.Runtime");
        (self).name = u"quark.Runtime"
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
quark_Runtime.singleton = quark_Runtime()

class quark_ListUtil_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_ListUtil_quark_Object_, self).__init__(u"quark.ListUtil<quark.Object>");
        (self).name = u"quark.ListUtil"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return quark.ListUtil()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_ListUtil_quark_Object_.singleton = quark_ListUtil_quark_Object_()

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

class quark_List_quark_test_Test_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_test_Test_, self).__init__(u"quark.List<quark.test.Test>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.test.Test"])
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
quark_List_quark_test_Test_.singleton = quark_List_quark_test_Test_()

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

class quark_logging_Appender(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_logging_Appender, self).__init__(u"quark.logging.Appender");
        (self).name = u"quark.logging.Appender"
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
quark_logging_Appender.singleton = quark_logging_Appender()

class quark_logging_Config_setAppender_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_logging_Config_setAppender_Method, self).__init__(u"quark.logging.Config", u"setAppender", _List([u"quark.logging.Appender"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).setAppender((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_logging_Config_setLevel_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_logging_Config_setLevel_Method, self).__init__(u"quark.logging.Config", u"setLevel", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).setLevel((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_logging_Config_configure_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_logging_Config_configure_Method, self).__init__(u"quark.void", u"configure", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).configure();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_logging_Config(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_logging_Config, self).__init__(u"quark.logging.Config");
        (self).name = u"quark.logging.Config"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([quark_logging_Config_setAppender_Method(), quark_logging_Config_setLevel_Method(), quark_logging_Config_configure_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_logging_Config.singleton = quark_logging_Config()

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

class quark_Servlet(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_Servlet, self).__init__(u"quark.Servlet");
        (self).name = u"quark.Servlet"
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
quark_Servlet.singleton = quark_Servlet()

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
        (self).fields = _List([quark.reflect.Field(u"quark.bool", u"sendCORS"), quark.reflect.Field(u"quark.HTTPRequest", u"request"), quark.reflect.Field(u"quark.HTTPResponse", u"response")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.ServerResponder((args)[0], (args)[1], (args)[2])

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
        (self).fields = _List([quark.reflect.Field(u"quark.Object", u"impl"), quark.reflect.Field(u"quark.bool", u"_sendCORS")])
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

class quark_behaviors_RPCRequest_onHTTPInit_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPCRequest_onHTTPInit_Method, self).__init__(u"quark.void", u"onHTTPInit", _List([u"quark.HTTPRequest"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPInit((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_RPCRequest_onHTTPError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPCRequest_onHTTPError_Method, self).__init__(u"quark.void", u"onHTTPError", _List([u"quark.HTTPRequest", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_behaviors_RPCRequest_onHTTPFinal_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_behaviors_RPCRequest_onHTTPFinal_Method, self).__init__(u"quark.void", u"onHTTPFinal", _List([u"quark.HTTPRequest"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPFinal((args)[0]);
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
        (self).methods = _List([quark_behaviors_RPCRequest_call_Method(), quark_behaviors_RPCRequest_onHTTPResponse_Method(), quark_behaviors_RPCRequest_onTimeout_Method(), quark_behaviors_RPCRequest_onHTTPInit_Method(), quark_behaviors_RPCRequest_onHTTPError_Method(), quark_behaviors_RPCRequest_onHTTPFinal_Method()])

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

class quark_HTTPHandler(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_HTTPHandler, self).__init__(u"quark.HTTPHandler");
        (self).name = u"quark.HTTPHandler"
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
quark_HTTPHandler.singleton = quark_HTTPHandler()

class quark_HTTPRequest(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_HTTPRequest, self).__init__(u"quark.HTTPRequest");
        (self).name = u"quark.HTTPRequest"
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
quark_HTTPRequest.singleton = quark_HTTPRequest()

class quark_HTTPResponse(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_HTTPResponse, self).__init__(u"quark.HTTPResponse");
        (self).name = u"quark.HTTPResponse"
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
quark_HTTPResponse.singleton = quark_HTTPResponse()

class quark_HTTPServlet(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_HTTPServlet, self).__init__(u"quark.HTTPServlet");
        (self).name = u"quark.HTTPServlet"
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
quark_HTTPServlet.singleton = quark_HTTPServlet()

class quark_WSHandler(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_WSHandler, self).__init__(u"quark.WSHandler");
        (self).name = u"quark.WSHandler"
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
quark_WSHandler.singleton = quark_WSHandler()

class quark_WebSocket(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_WebSocket, self).__init__(u"quark.WebSocket");
        (self).name = u"quark.WebSocket"
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
quark_WebSocket.singleton = quark_WebSocket()

class quark_WSServlet(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_WSServlet, self).__init__(u"quark.WSServlet");
        (self).name = u"quark.WSServlet"
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
quark_WSServlet.singleton = quark_WSServlet()

class quark_test_TestInitializer_getValue_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_TestInitializer_getValue_Method, self).__init__(u"quark.test.Test", u"getValue", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getValue()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_TestInitializer(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_test_TestInitializer, self).__init__(u"quark.test.TestInitializer");
        (self).name = u"quark.test.TestInitializer"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([quark_test_TestInitializer_getValue_Method()])

    def construct(self, args):
        return quark.test.TestInitializer()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_test_TestInitializer.singleton = quark_test_TestInitializer()

class quark_test_Test_current_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Test_current_Method, self).__init__(u"quark.test.Test", u"current", _List([]));

    def invoke(self, object, args):
        obj = object;
        return quark.test.Test.current()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_Test_match_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Test_match_Method, self).__init__(u"quark.bool", u"match", _List([u"quark.List<quark.String>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).match((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_Test_start_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Test_start_Method, self).__init__(u"quark.void", u"start", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).start();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_Test_stop_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Test_stop_Method, self).__init__(u"quark.void", u"stop", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).stop();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_Test_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Test_check_Method, self).__init__(u"quark.bool", u"check", _List([u"quark.bool", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).check((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_Test_fail_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Test_fail_Method, self).__init__(u"quark.void", u"fail", _List([u"quark.String"]));

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

class quark_test_Test_run_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Test_run_Method, self).__init__(u"quark.void", u"run", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).run();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_test_Test, self).__init__(u"quark.test.Test");
        (self).name = u"quark.test.Test"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.TLS<quark.test.Test>", u"ctx"), quark.reflect.Field(u"quark.String", u"name"), quark.reflect.Field(u"quark.int", u"checks"), quark.reflect.Field(u"quark.List<quark.String>", u"failures")])
        (self).methods = _List([quark_test_Test_current_Method(), quark_test_Test_match_Method(), quark_test_Test_start_Method(), quark_test_Test_stop_Method(), quark_test_Test_check_Method(), quark_test_Test_fail_Method(), quark_test_Test_run_Method()])

    def construct(self, args):
        return quark.test.Test((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_test_Test.singleton = quark_test_Test()

class quark_test_MethodTest_run_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_MethodTest_run_Method, self).__init__(u"quark.void", u"run", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).run();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_MethodTest_current_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_MethodTest_current_Method, self).__init__(u"quark.test.Test", u"current", _List([]));

    def invoke(self, object, args):
        obj = object;
        return quark.test.Test.current()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_MethodTest_match_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_MethodTest_match_Method, self).__init__(u"quark.bool", u"match", _List([u"quark.List<quark.String>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).match((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_MethodTest_start_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_MethodTest_start_Method, self).__init__(u"quark.void", u"start", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).start();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_MethodTest_stop_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_MethodTest_stop_Method, self).__init__(u"quark.void", u"stop", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).stop();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_MethodTest_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_MethodTest_check_Method, self).__init__(u"quark.bool", u"check", _List([u"quark.bool", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).check((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_MethodTest_fail_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_MethodTest_fail_Method, self).__init__(u"quark.void", u"fail", _List([u"quark.String"]));

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

class quark_test_MethodTest(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_test_MethodTest, self).__init__(u"quark.test.MethodTest");
        (self).name = u"quark.test.MethodTest"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.TLS<quark.test.Test>", u"ctx"), quark.reflect.Field(u"quark.String", u"name"), quark.reflect.Field(u"quark.int", u"checks"), quark.reflect.Field(u"quark.List<quark.String>", u"failures"), quark.reflect.Field(u"quark.reflect.Class", u"klass"), quark.reflect.Field(u"quark.reflect.Method", u"method")])
        (self).methods = _List([quark_test_MethodTest_run_Method(), quark_test_MethodTest_current_Method(), quark_test_MethodTest_match_Method(), quark_test_MethodTest_start_Method(), quark_test_MethodTest_stop_Method(), quark_test_MethodTest_check_Method(), quark_test_MethodTest_fail_Method()])

    def construct(self, args):
        return quark.test.MethodTest((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_test_MethodTest.singleton = quark_test_MethodTest()

class quark_test_Harness_collect_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Harness_collect_Method, self).__init__(u"quark.void", u"collect", _List([u"quark.List<quark.String>"]));

    def invoke(self, object, args):
        obj = object;
        (obj).collect((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_Harness_list_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Harness_list_Method, self).__init__(u"quark.void", u"list", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).list();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_Harness_run_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_test_Harness_run_Method, self).__init__(u"quark.void", u"run", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).run();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_test_Harness(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_test_Harness, self).__init__(u"quark.test.Harness");
        (self).name = u"quark.test.Harness"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"pkg"), quark.reflect.Field(u"quark.List<quark.test.Test>", u"tests"), quark.reflect.Field(u"quark.int", u"filtered")])
        (self).methods = _List([quark_test_Harness_collect_Method(), quark_test_Harness_list_Method(), quark_test_Harness_run_Method()])

    def construct(self, args):
        return quark.test.Harness((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_test_Harness.singleton = quark_test_Harness()

class quark_URL(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_URL, self).__init__(u"quark.URL");
        (self).name = u"quark.URL"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"scheme"), quark.reflect.Field(u"quark.String", u"host"), quark.reflect.Field(u"quark.String", u"port"), quark.reflect.Field(u"quark.String", u"path")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.URL()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_URL.singleton = quark_URL()

class quark_spi_RuntimeSpi_open_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi_open_Method, self).__init__(u"quark.void", u"open", _List([u"quark.String", u"quark.WSHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).open((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_RuntimeSpi_request_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi_request_Method, self).__init__(u"quark.void", u"request", _List([u"quark.HTTPRequest", u"quark.HTTPHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).request((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_RuntimeSpi_schedule_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi_schedule_Method, self).__init__(u"quark.void", u"schedule", _List([u"quark.Task", u"quark.float"]));

    def invoke(self, object, args):
        obj = object;
        (obj).schedule((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_RuntimeSpi_codec_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi_codec_Method, self).__init__(u"quark.Codec", u"codec", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).codec()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_RuntimeSpi_serveHTTP_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi_serveHTTP_Method, self).__init__(u"quark.void", u"serveHTTP", _List([u"quark.String", u"quark.HTTPServlet"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveHTTP((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_RuntimeSpi_serveWS_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi_serveWS_Method, self).__init__(u"quark.void", u"serveWS", _List([u"quark.String", u"quark.WSServlet"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveWS((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_RuntimeSpi_respond_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi_respond_Method, self).__init__(u"quark.void", u"respond", _List([u"quark.HTTPRequest", u"quark.HTTPResponse"]));

    def invoke(self, object, args):
        obj = object;
        (obj).respond((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_RuntimeSpi_fail_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi_fail_Method, self).__init__(u"quark.void", u"fail", _List([u"quark.String"]));

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

class quark_spi_RuntimeSpi_logger_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi_logger_Method, self).__init__(u"quark.Logger", u"logger", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).logger((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_RuntimeSpi(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_RuntimeSpi, self).__init__(u"quark.spi.RuntimeSpi");
        (self).name = u"quark.spi.RuntimeSpi"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([quark_spi_RuntimeSpi_open_Method(), quark_spi_RuntimeSpi_request_Method(), quark_spi_RuntimeSpi_schedule_Method(), quark_spi_RuntimeSpi_codec_Method(), quark_spi_RuntimeSpi_serveHTTP_Method(), quark_spi_RuntimeSpi_serveWS_Method(), quark_spi_RuntimeSpi_respond_Method(), quark_spi_RuntimeSpi_fail_Method(), quark_spi_RuntimeSpi_logger_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_RuntimeSpi.singleton = quark_spi_RuntimeSpi()

class quark_spi_RuntimeFactory_makeRuntime_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_RuntimeFactory_makeRuntime_Method, self).__init__(u"quark.Runtime", u"makeRuntime", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).makeRuntime()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_RuntimeFactory(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_RuntimeFactory, self).__init__(u"quark.spi.RuntimeFactory");
        (self).name = u"quark.spi.RuntimeFactory"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi.RuntimeFactory", u"factory"), quark.reflect.Field(u"quark.bool", u"enable_tracing")])
        (self).methods = _List([quark_spi_RuntimeFactory_makeRuntime_Method()])

    def construct(self, args):
        return quark.spi.RuntimeFactory()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_RuntimeFactory.singleton = quark_spi_RuntimeFactory()

class quark_spi_api_ServletProxy_onServletInit_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_ServletProxy_onServletInit_Method, self).__init__(u"quark.void", u"onServletInit", _List([u"quark.String", u"quark.Runtime"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletInit((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_ServletProxy_onServletError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_ServletProxy_onServletError_Method, self).__init__(u"quark.void", u"onServletError", _List([u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_ServletProxy_onServletEnd_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_ServletProxy_onServletEnd_Method, self).__init__(u"quark.void", u"onServletEnd", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletEnd((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_ServletProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_ServletProxy, self).__init__(u"quark.spi_api.ServletProxy");
        (self).name = u"quark.spi_api.ServletProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.Servlet", u"servlet_impl"), quark.reflect.Field(u"quark.Runtime", u"real_runtime")])
        (self).methods = _List([quark_spi_api_ServletProxy_onServletInit_Method(), quark_spi_api_ServletProxy_onServletError_Method(), quark_spi_api_ServletProxy_onServletEnd_Method()])

    def construct(self, args):
        return quark.spi_api.ServletProxy((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_ServletProxy.singleton = quark_spi_api_ServletProxy()

class quark_spi_api_HTTPServletProxy_onHTTPRequest_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_HTTPServletProxy_onHTTPRequest_Method, self).__init__(u"quark.void", u"onHTTPRequest", _List([u"quark.HTTPRequest", u"quark.HTTPResponse"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPRequest((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_HTTPServletProxy_onServletInit_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_HTTPServletProxy_onServletInit_Method, self).__init__(u"quark.void", u"onServletInit", _List([u"quark.String", u"quark.Runtime"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletInit((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_HTTPServletProxy_onServletError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_HTTPServletProxy_onServletError_Method, self).__init__(u"quark.void", u"onServletError", _List([u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_HTTPServletProxy_onServletEnd_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_HTTPServletProxy_onServletEnd_Method, self).__init__(u"quark.void", u"onServletEnd", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletEnd((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_HTTPServletProxy_serveHTTP_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_HTTPServletProxy_serveHTTP_Method, self).__init__(u"quark.void", u"serveHTTP", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveHTTP((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_HTTPServletProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_HTTPServletProxy, self).__init__(u"quark.spi_api.HTTPServletProxy");
        (self).name = u"quark.spi_api.HTTPServletProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.Servlet", u"servlet_impl"), quark.reflect.Field(u"quark.Runtime", u"real_runtime"), quark.reflect.Field(u"quark.HTTPServlet", u"http_servlet_impl")])
        (self).methods = _List([quark_spi_api_HTTPServletProxy_onHTTPRequest_Method(), quark_spi_api_HTTPServletProxy_onServletInit_Method(), quark_spi_api_HTTPServletProxy_onServletError_Method(), quark_spi_api_HTTPServletProxy_onServletEnd_Method(), quark_spi_api_HTTPServletProxy_serveHTTP_Method()])

    def construct(self, args):
        return quark.spi_api.HTTPServletProxy((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_HTTPServletProxy.singleton = quark_spi_api_HTTPServletProxy()

class quark_spi_api_WSServletProxy_onWSConnect_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_WSServletProxy_onWSConnect_Method, self).__init__(u"quark.WSHandler", u"onWSConnect", _List([u"quark.HTTPRequest"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).onWSConnect((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_WSServletProxy_onServletInit_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_WSServletProxy_onServletInit_Method, self).__init__(u"quark.void", u"onServletInit", _List([u"quark.String", u"quark.Runtime"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletInit((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_WSServletProxy_onServletError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_WSServletProxy_onServletError_Method, self).__init__(u"quark.void", u"onServletError", _List([u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_WSServletProxy_onServletEnd_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_WSServletProxy_onServletEnd_Method, self).__init__(u"quark.void", u"onServletEnd", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletEnd((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_WSServletProxy_serveWS_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_WSServletProxy_serveWS_Method, self).__init__(u"quark.void", u"serveWS", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveWS((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_WSServletProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_WSServletProxy, self).__init__(u"quark.spi_api.WSServletProxy");
        (self).name = u"quark.spi_api.WSServletProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.Servlet", u"servlet_impl"), quark.reflect.Field(u"quark.Runtime", u"real_runtime"), quark.reflect.Field(u"quark.WSServlet", u"ws_servlet_impl")])
        (self).methods = _List([quark_spi_api_WSServletProxy_onWSConnect_Method(), quark_spi_api_WSServletProxy_onServletInit_Method(), quark_spi_api_WSServletProxy_onServletError_Method(), quark_spi_api_WSServletProxy_onServletEnd_Method(), quark_spi_api_WSServletProxy_serveWS_Method()])

    def construct(self, args):
        return quark.spi_api.WSServletProxy((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_WSServletProxy.singleton = quark_spi_api_WSServletProxy()

class quark_spi_api_TaskProxy_onExecute_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_TaskProxy_onExecute_Method, self).__init__(u"quark.void", u"onExecute", _List([u"quark.Runtime"]));

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

class quark_spi_api_TaskProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_TaskProxy, self).__init__(u"quark.spi_api.TaskProxy");
        (self).name = u"quark.spi_api.TaskProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.Task", u"task_impl"), quark.reflect.Field(u"quark.Runtime", u"real_runtime")])
        (self).methods = _List([quark_spi_api_TaskProxy_onExecute_Method()])

    def construct(self, args):
        return quark.spi_api.TaskProxy((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_TaskProxy.singleton = quark_spi_api_TaskProxy()

class quark_spi_api_RuntimeProxy_open_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy_open_Method, self).__init__(u"quark.void", u"open", _List([u"quark.String", u"quark.WSHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).open((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_RuntimeProxy_request_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy_request_Method, self).__init__(u"quark.void", u"request", _List([u"quark.HTTPRequest", u"quark.HTTPHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).request((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_RuntimeProxy_schedule_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy_schedule_Method, self).__init__(u"quark.void", u"schedule", _List([u"quark.Task", u"quark.float"]));

    def invoke(self, object, args):
        obj = object;
        (obj).schedule((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_RuntimeProxy_codec_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy_codec_Method, self).__init__(u"quark.Codec", u"codec", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).codec()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_RuntimeProxy_serveHTTP_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy_serveHTTP_Method, self).__init__(u"quark.void", u"serveHTTP", _List([u"quark.String", u"quark.HTTPServlet"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveHTTP((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_RuntimeProxy_serveWS_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy_serveWS_Method, self).__init__(u"quark.void", u"serveWS", _List([u"quark.String", u"quark.WSServlet"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveWS((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_RuntimeProxy_respond_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy_respond_Method, self).__init__(u"quark.void", u"respond", _List([u"quark.HTTPRequest", u"quark.HTTPResponse"]));

    def invoke(self, object, args):
        obj = object;
        (obj).respond((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_RuntimeProxy_fail_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy_fail_Method, self).__init__(u"quark.void", u"fail", _List([u"quark.String"]));

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

class quark_spi_api_RuntimeProxy_logger_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy_logger_Method, self).__init__(u"quark.Logger", u"logger", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).logger((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_RuntimeProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_RuntimeProxy, self).__init__(u"quark.spi_api.RuntimeProxy");
        (self).name = u"quark.spi_api.RuntimeProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.Runtime", u"impl")])
        (self).methods = _List([quark_spi_api_RuntimeProxy_open_Method(), quark_spi_api_RuntimeProxy_request_Method(), quark_spi_api_RuntimeProxy_schedule_Method(), quark_spi_api_RuntimeProxy_codec_Method(), quark_spi_api_RuntimeProxy_serveHTTP_Method(), quark_spi_api_RuntimeProxy_serveWS_Method(), quark_spi_api_RuntimeProxy_respond_Method(), quark_spi_api_RuntimeProxy_fail_Method(), quark_spi_api_RuntimeProxy_logger_Method()])

    def construct(self, args):
        return quark.spi_api.RuntimeProxy((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_RuntimeProxy.singleton = quark_spi_api_RuntimeProxy()

class quark_spi_api_tracing_Identificator_next_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_Identificator_next_Method, self).__init__(u"quark.String", u"next", _List([u"quark.Object"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).next((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_Identificator(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_Identificator, self).__init__(u"quark.spi_api_tracing.Identificator");
        (self).name = u"quark.spi_api_tracing.Identificator"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.concurrent.Lock", u"lock"), quark.reflect.Field(u"quark.int", u"seq")])
        (self).methods = _List([quark_spi_api_tracing_Identificator_next_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.Identificator()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_Identificator.singleton = quark_spi_api_tracing_Identificator()

class quark_spi_api_tracing_Identifiable(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_Identifiable, self).__init__(u"quark.spi_api_tracing.Identifiable");
        (self).name = u"quark.spi_api_tracing.Identifiable"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log")])
        (self).methods = _List([])

    def construct(self, args):
        return quark.spi_api_tracing.Identifiable((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_Identifiable.singleton = quark_spi_api_tracing_Identifiable()

class quark_spi_api_tracing_ServletProxy_onServletInit_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_ServletProxy_onServletInit_Method, self).__init__(u"quark.void", u"onServletInit", _List([u"quark.String", u"quark.Runtime"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletInit((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_ServletProxy_onServletError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_ServletProxy_onServletError_Method, self).__init__(u"quark.void", u"onServletError", _List([u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_ServletProxy_onServletEnd_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_ServletProxy_onServletEnd_Method, self).__init__(u"quark.void", u"onServletEnd", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletEnd((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_ServletProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_ServletProxy, self).__init__(u"quark.spi_api_tracing.ServletProxy");
        (self).name = u"quark.spi_api_tracing.ServletProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.Servlet", u"servlet_impl"), quark.reflect.Field(u"quark.spi_api_tracing.RuntimeProxy", u"real_runtime")])
        (self).methods = _List([quark_spi_api_tracing_ServletProxy_onServletInit_Method(), quark_spi_api_tracing_ServletProxy_onServletError_Method(), quark_spi_api_tracing_ServletProxy_onServletEnd_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.ServletProxy((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_ServletProxy.singleton = quark_spi_api_tracing_ServletProxy()

class quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method, self).__init__(u"quark.String", u"getUrl", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getUrl()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method, self).__init__(u"quark.void", u"setMethod", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).setMethod((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method, self).__init__(u"quark.String", u"getMethod", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getMethod()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPRequestProxy_setBody_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPRequestProxy_setBody_Method, self).__init__(u"quark.void", u"setBody", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).setBody((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPRequestProxy_getBody_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPRequestProxy_getBody_Method, self).__init__(u"quark.String", u"getBody", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getBody()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method, self).__init__(u"quark.void", u"setHeader", _List([u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).setHeader((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method, self).__init__(u"quark.String", u"getHeader", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getHeader((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method, self).__init__(u"quark.List<quark.String>", u"getHeaders", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getHeaders()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPRequestProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPRequestProxy, self).__init__(u"quark.spi_api_tracing.HTTPRequestProxy");
        (self).name = u"quark.spi_api_tracing.HTTPRequestProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.HTTPRequest", u"request_impl")])
        (self).methods = _List([quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method(), quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method(), quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method(), quark_spi_api_tracing_HTTPRequestProxy_setBody_Method(), quark_spi_api_tracing_HTTPRequestProxy_getBody_Method(), quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method(), quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method(), quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.HTTPRequestProxy((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_HTTPRequestProxy.singleton = quark_spi_api_tracing_HTTPRequestProxy()

class quark_spi_api_tracing_HTTPResponseProxy_getCode_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPResponseProxy_getCode_Method, self).__init__(u"quark.int", u"getCode", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getCode()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPResponseProxy_setCode_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPResponseProxy_setCode_Method, self).__init__(u"quark.void", u"setCode", _List([u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        (obj).setCode((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPResponseProxy_setBody_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPResponseProxy_setBody_Method, self).__init__(u"quark.void", u"setBody", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).setBody((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPResponseProxy_getBody_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPResponseProxy_getBody_Method, self).__init__(u"quark.String", u"getBody", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getBody()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method, self).__init__(u"quark.void", u"setHeader", _List([u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).setHeader((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method, self).__init__(u"quark.String", u"getHeader", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getHeader((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method, self).__init__(u"quark.List<quark.String>", u"getHeaders", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getHeaders()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPResponseProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPResponseProxy, self).__init__(u"quark.spi_api_tracing.HTTPResponseProxy");
        (self).name = u"quark.spi_api_tracing.HTTPResponseProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.HTTPResponse", u"response_impl")])
        (self).methods = _List([quark_spi_api_tracing_HTTPResponseProxy_getCode_Method(), quark_spi_api_tracing_HTTPResponseProxy_setCode_Method(), quark_spi_api_tracing_HTTPResponseProxy_setBody_Method(), quark_spi_api_tracing_HTTPResponseProxy_getBody_Method(), quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method(), quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method(), quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.HTTPResponseProxy((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_HTTPResponseProxy.singleton = quark_spi_api_tracing_HTTPResponseProxy()

class quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method, self).__init__(u"quark.void", u"onHTTPRequest", _List([u"quark.HTTPRequest", u"quark.HTTPResponse"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPRequest((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method, self).__init__(u"quark.void", u"onServletInit", _List([u"quark.String", u"quark.Runtime"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletInit((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPServletProxy_onServletError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPServletProxy_onServletError_Method, self).__init__(u"quark.void", u"onServletError", _List([u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method, self).__init__(u"quark.void", u"onServletEnd", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletEnd((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method, self).__init__(u"quark.void", u"serveHTTP", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveHTTP((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPServletProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPServletProxy, self).__init__(u"quark.spi_api_tracing.HTTPServletProxy");
        (self).name = u"quark.spi_api_tracing.HTTPServletProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.Servlet", u"servlet_impl"), quark.reflect.Field(u"quark.spi_api_tracing.RuntimeProxy", u"real_runtime"), quark.reflect.Field(u"quark.HTTPServlet", u"http_servlet_impl")])
        (self).methods = _List([quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method(), quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method(), quark_spi_api_tracing_HTTPServletProxy_onServletError_Method(), quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method(), quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.HTTPServletProxy((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_HTTPServletProxy.singleton = quark_spi_api_tracing_HTTPServletProxy()

class quark_spi_api_tracing_WSServletProxy_onWSConnect_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSServletProxy_onWSConnect_Method, self).__init__(u"quark.WSHandler", u"onWSConnect", _List([u"quark.HTTPRequest"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).onWSConnect((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSServletProxy_onServletInit_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSServletProxy_onServletInit_Method, self).__init__(u"quark.void", u"onServletInit", _List([u"quark.String", u"quark.Runtime"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletInit((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSServletProxy_onServletError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSServletProxy_onServletError_Method, self).__init__(u"quark.void", u"onServletError", _List([u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSServletProxy_onServletEnd_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSServletProxy_onServletEnd_Method, self).__init__(u"quark.void", u"onServletEnd", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletEnd((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSServletProxy_serveWS_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSServletProxy_serveWS_Method, self).__init__(u"quark.void", u"serveWS", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveWS((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSServletProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSServletProxy, self).__init__(u"quark.spi_api_tracing.WSServletProxy");
        (self).name = u"quark.spi_api_tracing.WSServletProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.Servlet", u"servlet_impl"), quark.reflect.Field(u"quark.spi_api_tracing.RuntimeProxy", u"real_runtime"), quark.reflect.Field(u"quark.WSServlet", u"ws_servlet_impl")])
        (self).methods = _List([quark_spi_api_tracing_WSServletProxy_onWSConnect_Method(), quark_spi_api_tracing_WSServletProxy_onServletInit_Method(), quark_spi_api_tracing_WSServletProxy_onServletError_Method(), quark_spi_api_tracing_WSServletProxy_onServletEnd_Method(), quark_spi_api_tracing_WSServletProxy_serveWS_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.WSServletProxy((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_WSServletProxy.singleton = quark_spi_api_tracing_WSServletProxy()

class quark_spi_api_tracing_TaskProxy_onExecute_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_TaskProxy_onExecute_Method, self).__init__(u"quark.void", u"onExecute", _List([u"quark.Runtime"]));

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

class quark_spi_api_tracing_TaskProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_TaskProxy, self).__init__(u"quark.spi_api_tracing.TaskProxy");
        (self).name = u"quark.spi_api_tracing.TaskProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.Task", u"task_impl"), quark.reflect.Field(u"quark.spi_api_tracing.RuntimeProxy", u"real_runtime")])
        (self).methods = _List([quark_spi_api_tracing_TaskProxy_onExecute_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.TaskProxy((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_TaskProxy.singleton = quark_spi_api_tracing_TaskProxy()

class quark_spi_api_tracing_WebSocketProxy_send_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WebSocketProxy_send_Method, self).__init__(u"quark.bool", u"send", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).send((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WebSocketProxy_sendBinary_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WebSocketProxy_sendBinary_Method, self).__init__(u"quark.bool", u"sendBinary", _List([u"quark.Buffer"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).sendBinary((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WebSocketProxy_close_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WebSocketProxy_close_Method, self).__init__(u"quark.bool", u"close", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).close()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WebSocketProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WebSocketProxy, self).__init__(u"quark.spi_api_tracing.WebSocketProxy");
        (self).name = u"quark.spi_api_tracing.WebSocketProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.WebSocket", u"socket_impl")])
        (self).methods = _List([quark_spi_api_tracing_WebSocketProxy_send_Method(), quark_spi_api_tracing_WebSocketProxy_sendBinary_Method(), quark_spi_api_tracing_WebSocketProxy_close_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.WebSocketProxy((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_WebSocketProxy.singleton = quark_spi_api_tracing_WebSocketProxy()

class quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method, self).__init__(u"quark.void", u"onWSInit", _List([u"quark.WebSocket"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onWSInit((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method, self).__init__(u"quark.void", u"onWSConnected", _List([u"quark.WebSocket"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onWSConnected((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method, self).__init__(u"quark.void", u"onWSMessage", _List([u"quark.WebSocket", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onWSMessage((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method, self).__init__(u"quark.void", u"onWSBinary", _List([u"quark.WebSocket", u"quark.Buffer"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onWSBinary((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method, self).__init__(u"quark.void", u"onWSClosed", _List([u"quark.WebSocket"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onWSClosed((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSHandlerProxy_onWSError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSHandlerProxy_onWSError_Method, self).__init__(u"quark.void", u"onWSError", _List([u"quark.WebSocket"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onWSError((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method, self).__init__(u"quark.void", u"onWSFinal", _List([u"quark.WebSocket"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onWSFinal((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_WSHandlerProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_WSHandlerProxy, self).__init__(u"quark.spi_api_tracing.WSHandlerProxy");
        (self).name = u"quark.spi_api_tracing.WSHandlerProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.WSHandler", u"handler_impl"), quark.reflect.Field(u"quark.spi_api_tracing.WebSocketProxy", u"wrapped_socket")])
        (self).methods = _List([quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method(), quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method(), quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method(), quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method(), quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method(), quark_spi_api_tracing_WSHandlerProxy_onWSError_Method(), quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.WSHandlerProxy((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_WSHandlerProxy.singleton = quark_spi_api_tracing_WSHandlerProxy()

class quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method, self).__init__(u"quark.void", u"onHTTPInit", _List([u"quark.HTTPRequest"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPInit((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method, self).__init__(u"quark.void", u"onHTTPResponse", _List([u"quark.HTTPRequest", u"quark.HTTPResponse"]));

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

class quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method, self).__init__(u"quark.void", u"onHTTPError", _List([u"quark.HTTPRequest", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method, self).__init__(u"quark.void", u"onHTTPFinal", _List([u"quark.HTTPRequest"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPFinal((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_HTTPHandlerProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_HTTPHandlerProxy, self).__init__(u"quark.spi_api_tracing.HTTPHandlerProxy");
        (self).name = u"quark.spi_api_tracing.HTTPHandlerProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.HTTPHandler", u"handler_impl")])
        (self).methods = _List([quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method(), quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method(), quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method(), quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.HTTPHandlerProxy((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_HTTPHandlerProxy.singleton = quark_spi_api_tracing_HTTPHandlerProxy()

class quark_spi_api_tracing_RuntimeProxy_open_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy_open_Method, self).__init__(u"quark.void", u"open", _List([u"quark.String", u"quark.WSHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).open((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_RuntimeProxy_request_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy_request_Method, self).__init__(u"quark.void", u"request", _List([u"quark.HTTPRequest", u"quark.HTTPHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).request((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_RuntimeProxy_schedule_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy_schedule_Method, self).__init__(u"quark.void", u"schedule", _List([u"quark.Task", u"quark.float"]));

    def invoke(self, object, args):
        obj = object;
        (obj).schedule((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_RuntimeProxy_codec_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy_codec_Method, self).__init__(u"quark.Codec", u"codec", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).codec()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method, self).__init__(u"quark.void", u"serveHTTP", _List([u"quark.String", u"quark.HTTPServlet"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveHTTP((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_RuntimeProxy_serveWS_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy_serveWS_Method, self).__init__(u"quark.void", u"serveWS", _List([u"quark.String", u"quark.WSServlet"]));

    def invoke(self, object, args):
        obj = object;
        (obj).serveWS((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_RuntimeProxy_respond_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy_respond_Method, self).__init__(u"quark.void", u"respond", _List([u"quark.HTTPRequest", u"quark.HTTPResponse"]));

    def invoke(self, object, args):
        obj = object;
        (obj).respond((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_RuntimeProxy_fail_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy_fail_Method, self).__init__(u"quark.void", u"fail", _List([u"quark.String"]));

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

class quark_spi_api_tracing_RuntimeProxy_logger_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy_logger_Method, self).__init__(u"quark.Logger", u"logger", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).logger((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class quark_spi_api_tracing_RuntimeProxy(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_spi_api_tracing_RuntimeProxy, self).__init__(u"quark.spi_api_tracing.RuntimeProxy");
        (self).name = u"quark.spi_api_tracing.RuntimeProxy"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.spi_api_tracing.Identificator", u"namer"), quark.reflect.Field(u"quark.String", u"id"), quark.reflect.Field(u"quark.Logger", u"log"), quark.reflect.Field(u"quark.Runtime", u"impl")])
        (self).methods = _List([quark_spi_api_tracing_RuntimeProxy_open_Method(), quark_spi_api_tracing_RuntimeProxy_request_Method(), quark_spi_api_tracing_RuntimeProxy_schedule_Method(), quark_spi_api_tracing_RuntimeProxy_codec_Method(), quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method(), quark_spi_api_tracing_RuntimeProxy_serveWS_Method(), quark_spi_api_tracing_RuntimeProxy_respond_Method(), quark_spi_api_tracing_RuntimeProxy_fail_Method(), quark_spi_api_tracing_RuntimeProxy_logger_Method()])

    def construct(self, args):
        return quark.spi_api_tracing.RuntimeProxy((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_spi_api_tracing_RuntimeProxy.singleton = quark_spi_api_tracing_RuntimeProxy()

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
Root.quark_Task_md = quark_Task.singleton
Root.quark_Runtime_md = quark_Runtime.singleton
Root.quark_ListUtil_quark_Object__md = quark_ListUtil_quark_Object_.singleton
Root.quark_List_quark_String__md = quark_List_quark_String_.singleton
Root.quark_List_quark_Object__md = quark_List_quark_Object_.singleton
Root.quark_List_quark_concurrent_FutureCompletion__md = quark_List_quark_concurrent_FutureCompletion_.singleton
Root.quark_List_quark_test_Test__md = quark_List_quark_test_Test_.singleton
Root.quark_Map_quark_Object_quark_Object__md = quark_Map_quark_Object_quark_Object_.singleton
Root.quark_Map_quark_String_quark_ServiceInstance__md = quark_Map_quark_String_quark_ServiceInstance_.singleton
Root.quark_logging_Appender_md = quark_logging_Appender.singleton
Root.quark_logging_Config_md = quark_logging_Config.singleton
Root.quark_Servlet_md = quark_Servlet.singleton
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
Root.quark_HTTPHandler_md = quark_HTTPHandler.singleton
Root.quark_HTTPRequest_md = quark_HTTPRequest.singleton
Root.quark_HTTPResponse_md = quark_HTTPResponse.singleton
Root.quark_HTTPServlet_md = quark_HTTPServlet.singleton
Root.quark_WSHandler_md = quark_WSHandler.singleton
Root.quark_WebSocket_md = quark_WebSocket.singleton
Root.quark_WSServlet_md = quark_WSServlet.singleton
Root.quark_test_TestInitializer_md = quark_test_TestInitializer.singleton
Root.quark_test_Test_md = quark_test_Test.singleton
Root.quark_test_MethodTest_md = quark_test_MethodTest.singleton
Root.quark_test_Harness_md = quark_test_Harness.singleton
Root.quark_URL_md = quark_URL.singleton
Root.quark_spi_RuntimeSpi_md = quark_spi_RuntimeSpi.singleton
Root.quark_spi_RuntimeFactory_md = quark_spi_RuntimeFactory.singleton
Root.quark_spi_api_ServletProxy_md = quark_spi_api_ServletProxy.singleton
Root.quark_spi_api_HTTPServletProxy_md = quark_spi_api_HTTPServletProxy.singleton
Root.quark_spi_api_WSServletProxy_md = quark_spi_api_WSServletProxy.singleton
Root.quark_spi_api_TaskProxy_md = quark_spi_api_TaskProxy.singleton
Root.quark_spi_api_RuntimeProxy_md = quark_spi_api_RuntimeProxy.singleton
Root.quark_spi_api_tracing_Identificator_md = quark_spi_api_tracing_Identificator.singleton
Root.quark_spi_api_tracing_Identifiable_md = quark_spi_api_tracing_Identifiable.singleton
Root.quark_spi_api_tracing_ServletProxy_md = quark_spi_api_tracing_ServletProxy.singleton
Root.quark_spi_api_tracing_HTTPRequestProxy_md = quark_spi_api_tracing_HTTPRequestProxy.singleton
Root.quark_spi_api_tracing_HTTPResponseProxy_md = quark_spi_api_tracing_HTTPResponseProxy.singleton
Root.quark_spi_api_tracing_HTTPServletProxy_md = quark_spi_api_tracing_HTTPServletProxy.singleton
Root.quark_spi_api_tracing_WSServletProxy_md = quark_spi_api_tracing_WSServletProxy.singleton
Root.quark_spi_api_tracing_TaskProxy_md = quark_spi_api_tracing_TaskProxy.singleton
Root.quark_spi_api_tracing_WebSocketProxy_md = quark_spi_api_tracing_WebSocketProxy.singleton
Root.quark_spi_api_tracing_WSHandlerProxy_md = quark_spi_api_tracing_WSHandlerProxy.singleton
Root.quark_spi_api_tracing_HTTPHandlerProxy_md = quark_spi_api_tracing_HTTPHandlerProxy.singleton
Root.quark_spi_api_tracing_RuntimeProxy_md = quark_spi_api_tracing_RuntimeProxy.singleton

import quark
import quark.concurrent
import quark.test
import quark.logging
import quark.behaviors
import quark.spi
import quark.spi_api
import quark.spi_api_tracing
