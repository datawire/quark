from quark_runtime import *

import reflect


class slack_event_SlackEvent_load_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_event_SlackEvent_load_Method, self).__init__(u"builtin.void", u"load", _List([u"slack.Client", u"builtin.JSONObject"]));

    def invoke(self, object, args):
        obj = object;
        (obj).load((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_event_SlackEvent_dispatch_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_event_SlackEvent_dispatch_Method, self).__init__(u"builtin.void", u"dispatch", _List([u"slack.SlackHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).dispatch((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_event_SlackEvent(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(slack_event_SlackEvent, self).__init__(u"slack.event.SlackEvent");
        (self).name = u"SlackEvent"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"type"), reflect.Field(u"slack.User", u"user"), reflect.Field(u"slack.Channel", u"channel"), reflect.Field(u"builtin.String", u"timestamp")])
        (self).methods = _List([slack_event_SlackEvent_load_Method(), slack_event_SlackEvent_dispatch_Method()])

    def construct(self, args):
        return slack.event.SlackEvent()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
slack_event_SlackEvent.singleton = slack_event_SlackEvent()

class slack_event_SlackError_load_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_event_SlackError_load_Method, self).__init__(u"builtin.void", u"load", _List([u"slack.Client", u"builtin.JSONObject"]));

    def invoke(self, object, args):
        obj = object;
        (obj).load((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_event_SlackError_dispatch_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_event_SlackError_dispatch_Method, self).__init__(u"builtin.void", u"dispatch", _List([u"slack.SlackHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).dispatch((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_event_SlackError(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(slack_event_SlackError, self).__init__(u"slack.event.SlackError");
        (self).name = u"SlackError"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"type"), reflect.Field(u"slack.User", u"user"), reflect.Field(u"slack.Channel", u"channel"), reflect.Field(u"builtin.String", u"timestamp"), reflect.Field(u"builtin.int", u"code"), reflect.Field(u"builtin.String", u"text")])
        (self).methods = _List([slack_event_SlackError_load_Method(), slack_event_SlackError_dispatch_Method()])

    def construct(self, args):
        return slack.event.SlackError()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
slack_event_SlackError.singleton = slack_event_SlackError()

class slack_event_Hello_dispatch_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_event_Hello_dispatch_Method, self).__init__(u"builtin.void", u"dispatch", _List([u"slack.SlackHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).dispatch((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_event_Hello_load_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_event_Hello_load_Method, self).__init__(u"builtin.void", u"load", _List([u"slack.Client", u"builtin.JSONObject"]));

    def invoke(self, object, args):
        obj = object;
        (obj).load((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_event_Hello(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(slack_event_Hello, self).__init__(u"slack.event.Hello");
        (self).name = u"Hello"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"type"), reflect.Field(u"slack.User", u"user"), reflect.Field(u"slack.Channel", u"channel"), reflect.Field(u"builtin.String", u"timestamp")])
        (self).methods = _List([slack_event_Hello_dispatch_Method(), slack_event_Hello_load_Method()])

    def construct(self, args):
        return slack.event.Hello()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
slack_event_Hello.singleton = slack_event_Hello()

class slack_event_Message_load_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_event_Message_load_Method, self).__init__(u"builtin.void", u"load", _List([u"slack.Client", u"builtin.JSONObject"]));

    def invoke(self, object, args):
        obj = object;
        (obj).load((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_event_Message_dispatch_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_event_Message_dispatch_Method, self).__init__(u"builtin.void", u"dispatch", _List([u"slack.SlackHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).dispatch((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_event_Message(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(slack_event_Message, self).__init__(u"slack.event.Message");
        (self).name = u"Message"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"type"), reflect.Field(u"slack.User", u"user"), reflect.Field(u"slack.Channel", u"channel"), reflect.Field(u"builtin.String", u"timestamp"), reflect.Field(u"builtin.String", u"subtype"), reflect.Field(u"builtin.bool", u"hidden"), reflect.Field(u"builtin.String", u"text"), reflect.Field(u"slack.event.Edited", u"edited")])
        (self).methods = _List([slack_event_Message_load_Method(), slack_event_Message_dispatch_Method()])

    def construct(self, args):
        return slack.event.Message()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
slack_event_Message.singleton = slack_event_Message()

class slack_event_Edited(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(slack_event_Edited, self).__init__(u"slack.event.Edited");
        (self).name = u"Edited"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"slack.User", u"user"), reflect.Field(u"builtin.String", u"timestamp")])
        (self).methods = _List([])

    def construct(self, args):
        return slack.event.Edited()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
slack_event_Edited.singleton = slack_event_Edited()

class slack_SlackHandler_onSlackEvent_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_SlackHandler_onSlackEvent_Method, self).__init__(u"builtin.void", u"onSlackEvent", _List([u"slack.event.SlackEvent"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onSlackEvent((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_SlackHandler_onHello_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_SlackHandler_onHello_Method, self).__init__(u"builtin.void", u"onHello", _List([u"slack.event.Hello"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHello((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_SlackHandler_onSlackError_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_SlackHandler_onSlackError_Method, self).__init__(u"builtin.void", u"onSlackError", _List([u"slack.event.SlackError"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onSlackError((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_SlackHandler_onMessage_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_SlackHandler_onMessage_Method, self).__init__(u"builtin.void", u"onMessage", _List([u"slack.event.Message"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onMessage((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_SlackHandler(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(slack_SlackHandler, self).__init__(u"slack.SlackHandler");
        (self).name = u"SlackHandler"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([slack_SlackHandler_onSlackEvent_Method(), slack_SlackHandler_onHello_Method(), slack_SlackHandler_onSlackError_Method(), slack_SlackHandler_onMessage_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
slack_SlackHandler.singleton = slack_SlackHandler()

class slack_User(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(slack_User, self).__init__(u"slack.User");
        (self).name = u"User"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"slack.Client", u"client"), reflect.Field(u"builtin.String", u"user")])
        (self).methods = _List([])

    def construct(self, args):
        return slack.User((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
slack_User.singleton = slack_User()

class slack_Channel_send_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Channel_send_Method, self).__init__(u"builtin.void", u"send", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).send((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_Channel(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(slack_Channel, self).__init__(u"slack.Channel");
        (self).name = u"Channel"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"slack.Client", u"client"), reflect.Field(u"builtin.String", u"channel")])
        (self).methods = _List([slack_Channel_send_Method()])

    def construct(self, args):
        return slack.Channel((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
slack_Channel.singleton = slack_Channel()

class slack_Client_connect_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_connect_Method, self).__init__(u"builtin.void", u"connect", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).connect();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_Client_request_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_request_Method, self).__init__(u"builtin.void", u"request", _List([u"builtin.String", u"builtin.Map<builtin.String,builtin.Object>", u"builtin.HTTPHandler"]));

    def invoke(self, object, args):
        obj = object;
        (obj).request((args)[0], (args)[1], (args)[2]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_Client_ws_connect_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_ws_connect_Method, self).__init__(u"builtin.void", u"ws_connect", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).ws_connect((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_Client_ws_send_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_ws_send_Method, self).__init__(u"builtin.void", u"ws_send", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).ws_send((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_Client_onWSConnected_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_onWSConnected_Method, self).__init__(u"builtin.void", u"onWSConnected", _List([u"builtin.WebSocket"]));

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

class slack_Client_onWSClose_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_onWSClose_Method, self).__init__(u"builtin.void", u"onWSClose", _List([u"builtin.WebSocket"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onWSClose((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_Client_onWSError_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_onWSError_Method, self).__init__(u"builtin.void", u"onWSError", _List([u"builtin.WebSocket"]));

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

class slack_Client_construct_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_construct_Method, self).__init__(u"slack.event.SlackEvent", u"construct", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).construct((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class slack_Client_onWSMessage_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_onWSMessage_Method, self).__init__(u"builtin.void", u"onWSMessage", _List([u"builtin.WebSocket", u"builtin.String"]));

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

class slack_Client_onHTTPResponse_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(slack_Client_onHTTPResponse_Method, self).__init__(u"builtin.void", u"onHTTPResponse", _List([u"builtin.HTTPRequest", u"builtin.HTTPResponse"]));

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

class slack_Client(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(slack_Client, self).__init__(u"slack.Client");
        (self).name = u"Client"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.Runtime", u"runtime"), reflect.Field(u"builtin.String", u"token"), reflect.Field(u"slack.SlackHandler", u"handler"), reflect.Field(u"builtin.int", u"event_id"), reflect.Field(u"builtin.WebSocket", u"socket")])
        (self).methods = _List([slack_Client_connect_Method(), slack_Client_request_Method(), slack_Client_ws_connect_Method(), slack_Client_ws_send_Method(), slack_Client_onWSConnected_Method(), slack_Client_onWSClose_Method(), slack_Client_onWSError_Method(), slack_Client_construct_Method(), slack_Client_onWSMessage_Method(), slack_Client_onHTTPResponse_Method()])

    def construct(self, args):
        return slack.Client((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
slack_Client.singleton = slack_Client()

class pkg_Handler_onSlackEvent_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(pkg_Handler_onSlackEvent_Method, self).__init__(u"builtin.void", u"onSlackEvent", _List([u"slack.event.SlackEvent"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onSlackEvent((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_Handler(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(pkg_Handler, self).__init__(u"pkg.Handler");
        (self).name = u"Handler"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([pkg_Handler_onSlackEvent_Method()])

    def construct(self, args):
        return pkg.Handler()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_Handler.singleton = pkg_Handler()

class builtin_ResponseHolder_onHTTPResponse_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_ResponseHolder_onHTTPResponse_Method, self).__init__(u"builtin.void", u"onHTTPResponse", _List([u"builtin.HTTPRequest", u"builtin.HTTPResponse"]));

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

class builtin_ResponseHolder_onHTTPError_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_ResponseHolder_onHTTPError_Method, self).__init__(u"builtin.void", u"onHTTPError", _List([u"builtin.HTTPRequest", u"builtin.String"]));

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

class builtin_ResponseHolder(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(builtin_ResponseHolder, self).__init__(u"builtin.ResponseHolder");
        (self).name = u"ResponseHolder"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.HTTPResponse", u"response"), reflect.Field(u"builtin.String", u"failure")])
        (self).methods = _List([builtin_ResponseHolder_onHTTPResponse_Method(), builtin_ResponseHolder_onHTTPError_Method()])

    def construct(self, args):
        return builtin.ResponseHolder()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_ResponseHolder.singleton = builtin_ResponseHolder()

class builtin_Service_getURL_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Service_getURL_Method, self).__init__(u"builtin.String", u"getURL", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getURL()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Service_getRuntime_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Service_getRuntime_Method, self).__init__(u"builtin.Runtime", u"getRuntime", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getRuntime()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Service_getTimeout_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Service_getTimeout_Method, self).__init__(u"builtin.long", u"getTimeout", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getTimeout()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Service_rpc_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Service_rpc_Method, self).__init__(u"builtin.Object", u"rpc", _List([u"builtin.String", u"builtin.Object", u"builtin.List<builtin.Object>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).rpc((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Service(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(builtin_Service, self).__init__(u"builtin.Service");
        (self).name = u"Service"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([builtin_Service_getURL_Method(), builtin_Service_getRuntime_Method(), builtin_Service_getTimeout_Method(), builtin_Service_rpc_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Service.singleton = builtin_Service()

class builtin_Client_getRuntime_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Client_getRuntime_Method, self).__init__(u"builtin.Runtime", u"getRuntime", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getRuntime()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Client_getURL_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Client_getURL_Method, self).__init__(u"builtin.String", u"getURL", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getURL()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Client_getTimeout_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Client_getTimeout_Method, self).__init__(u"builtin.long", u"getTimeout", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getTimeout()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Client_setTimeout_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Client_setTimeout_Method, self).__init__(u"builtin.void", u"setTimeout", _List([u"builtin.long"]));

    def invoke(self, object, args):
        obj = object;
        (obj).setTimeout((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Client(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(builtin_Client, self).__init__(u"builtin.Client");
        (self).name = u"Client"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.Runtime", u"runtime"), reflect.Field(u"builtin.String", u"url"), reflect.Field(u"builtin.long", u"timeout")])
        (self).methods = _List([builtin_Client_getRuntime_Method(), builtin_Client_getURL_Method(), builtin_Client_getTimeout_Method(), builtin_Client_setTimeout_Method()])

    def construct(self, args):
        return builtin.Client((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Client.singleton = builtin_Client()

class builtin_Server_Object__getRuntime_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Server_Object__getRuntime_Method, self).__init__(u"builtin.Runtime", u"getRuntime", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getRuntime()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Server_Object__onHTTPRequest_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Server_Object__onHTTPRequest_Method, self).__init__(u"builtin.void", u"onHTTPRequest", _List([u"builtin.HTTPRequest", u"builtin.HTTPResponse"]));

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

class builtin_Server_Object__onServletError_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Server_Object__onServletError_Method, self).__init__(u"builtin.void", u"onServletError", _List([u"builtin.String", u"builtin.String"]));

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

class builtin_Server_Object_(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(builtin_Server_Object_, self).__init__(u"builtin.Server<Object>");
        (self).name = u"Server"
        (self).parameters = _List([u"Object"])
        (self).fields = _List([reflect.Field(u"builtin.Runtime", u"runtime"), reflect.Field(u"Object", u"impl")])
        (self).methods = _List([builtin_Server_Object__getRuntime_Method(), builtin_Server_Object__onHTTPRequest_Method(), builtin_Server_Object__onServletError_Method()])

    def construct(self, args):
        return builtin.Server((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Server_Object_.singleton = builtin_Server_Object_()

class reflect_Class(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(reflect_Class, self).__init__(u"reflect.Class");
        (self).name = u"Class"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.Map<builtin.String,reflect.Class>", u"classes"), reflect.Field(u"reflect.Class", u"VOID"), reflect.Field(u"reflect.Class", u"BOOL"), reflect.Field(u"reflect.Class", u"INT"), reflect.Field(u"reflect.Class", u"LONG"), reflect.Field(u"reflect.Class", u"STRING"), reflect.Field(u"builtin.String", u"id"), reflect.Field(u"builtin.String", u"name"), reflect.Field(u"builtin.List<reflect.Class>", u"parameters"), reflect.Field(u"builtin.List<reflect.Field>", u"fields"), reflect.Field(u"builtin.List<reflect.Method>", u"methods")])
        (self).methods = _List([])

    def construct(self, args):
        return reflect.Class((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
reflect_Class.singleton = reflect_Class()

class reflect_Field(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(reflect_Field, self).__init__(u"reflect.Field");
        (self).name = u"Field"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"type"), reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return reflect.Field((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
reflect_Field.singleton = reflect_Field()

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
Root.slack_event_SlackEvent_md = slack_event_SlackEvent.singleton
Root.slack_event_SlackError_md = slack_event_SlackError.singleton
Root.slack_event_Hello_md = slack_event_Hello.singleton
Root.slack_event_Message_md = slack_event_Message.singleton
Root.slack_event_Edited_md = slack_event_Edited.singleton
Root.slack_SlackHandler_md = slack_SlackHandler.singleton
Root.slack_User_md = slack_User.singleton
Root.slack_Channel_md = slack_Channel.singleton
Root.slack_Client_md = slack_Client.singleton
Root.pkg_Handler_md = pkg_Handler.singleton
Root.builtin_ResponseHolder_md = builtin_ResponseHolder.singleton
Root.builtin_Service_md = builtin_Service.singleton
Root.builtin_Client_md = builtin_Client.singleton
Root.builtin_Server_Object__md = builtin_Server_Object_.singleton

import slack.event
import slack
import pkg
import builtin
