var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS slack_event_SlackEvent_load_Method

function slack_event_SlackEvent_load_Method() {
    slack_event_SlackEvent_load_Method.super_.call(this, "quark.void", "load", ["slack.Client", "quark.JSONObject"]);
}
exports.slack_event_SlackEvent_load_Method = slack_event_SlackEvent_load_Method;
_qrt.util.inherits(slack_event_SlackEvent_load_Method, quark.reflect.Method);

function slack_event_SlackEvent_load_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_event_SlackEvent_load_Method.prototype.__init_fields__ = slack_event_SlackEvent_load_Method__init_fields__;

function slack_event_SlackEvent_load_Method_invoke(object, args) {
    var obj = object;
    (obj).load((args)[0], (args)[1]);
    return null;
}
slack_event_SlackEvent_load_Method.prototype.invoke = slack_event_SlackEvent_load_Method_invoke;

function slack_event_SlackEvent_load_Method__getClass() {
    return null;
}
slack_event_SlackEvent_load_Method.prototype._getClass = slack_event_SlackEvent_load_Method__getClass;

function slack_event_SlackEvent_load_Method__getField(name) {
    return null;
}
slack_event_SlackEvent_load_Method.prototype._getField = slack_event_SlackEvent_load_Method__getField;

function slack_event_SlackEvent_load_Method__setField(name, value) {}
slack_event_SlackEvent_load_Method.prototype._setField = slack_event_SlackEvent_load_Method__setField;

// CLASS slack_event_SlackEvent_dispatch_Method

function slack_event_SlackEvent_dispatch_Method() {
    slack_event_SlackEvent_dispatch_Method.super_.call(this, "quark.void", "dispatch", ["slack.SlackHandler"]);
}
exports.slack_event_SlackEvent_dispatch_Method = slack_event_SlackEvent_dispatch_Method;
_qrt.util.inherits(slack_event_SlackEvent_dispatch_Method, quark.reflect.Method);

function slack_event_SlackEvent_dispatch_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_event_SlackEvent_dispatch_Method.prototype.__init_fields__ = slack_event_SlackEvent_dispatch_Method__init_fields__;

function slack_event_SlackEvent_dispatch_Method_invoke(object, args) {
    var obj = object;
    (obj).dispatch((args)[0]);
    return null;
}
slack_event_SlackEvent_dispatch_Method.prototype.invoke = slack_event_SlackEvent_dispatch_Method_invoke;

function slack_event_SlackEvent_dispatch_Method__getClass() {
    return null;
}
slack_event_SlackEvent_dispatch_Method.prototype._getClass = slack_event_SlackEvent_dispatch_Method__getClass;

function slack_event_SlackEvent_dispatch_Method__getField(name) {
    return null;
}
slack_event_SlackEvent_dispatch_Method.prototype._getField = slack_event_SlackEvent_dispatch_Method__getField;

function slack_event_SlackEvent_dispatch_Method__setField(name, value) {}
slack_event_SlackEvent_dispatch_Method.prototype._setField = slack_event_SlackEvent_dispatch_Method__setField;

// CLASS slack_event_SlackEvent

function slack_event_SlackEvent() {
    slack_event_SlackEvent.super_.call(this, "slack.event.SlackEvent");
    (this).name = "slack.event.SlackEvent";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "type"), new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("slack.Channel", "channel"), new quark.reflect.Field("quark.String", "timestamp")];
    (this).methods = [new slack_event_SlackEvent_load_Method(), new slack_event_SlackEvent_dispatch_Method()];
}
exports.slack_event_SlackEvent = slack_event_SlackEvent;
_qrt.util.inherits(slack_event_SlackEvent, quark.reflect.Class);

function slack_event_SlackEvent__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slack_event_SlackEvent.prototype.__init_fields__ = slack_event_SlackEvent__init_fields__;
slack_event_SlackEvent.singleton = new slack_event_SlackEvent();
function slack_event_SlackEvent_construct(args) {
    return new slack.event.SlackEvent();
}
slack_event_SlackEvent.prototype.construct = slack_event_SlackEvent_construct;

function slack_event_SlackEvent__getClass() {
    return null;
}
slack_event_SlackEvent.prototype._getClass = slack_event_SlackEvent__getClass;

function slack_event_SlackEvent__getField(name) {
    return null;
}
slack_event_SlackEvent.prototype._getField = slack_event_SlackEvent__getField;

function slack_event_SlackEvent__setField(name, value) {}
slack_event_SlackEvent.prototype._setField = slack_event_SlackEvent__setField;


// CLASS slack_event_SlackError_load_Method

function slack_event_SlackError_load_Method() {
    slack_event_SlackError_load_Method.super_.call(this, "quark.void", "load", ["slack.Client", "quark.JSONObject"]);
}
exports.slack_event_SlackError_load_Method = slack_event_SlackError_load_Method;
_qrt.util.inherits(slack_event_SlackError_load_Method, quark.reflect.Method);

function slack_event_SlackError_load_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_event_SlackError_load_Method.prototype.__init_fields__ = slack_event_SlackError_load_Method__init_fields__;

function slack_event_SlackError_load_Method_invoke(object, args) {
    var obj = object;
    (obj).load((args)[0], (args)[1]);
    return null;
}
slack_event_SlackError_load_Method.prototype.invoke = slack_event_SlackError_load_Method_invoke;

function slack_event_SlackError_load_Method__getClass() {
    return null;
}
slack_event_SlackError_load_Method.prototype._getClass = slack_event_SlackError_load_Method__getClass;

function slack_event_SlackError_load_Method__getField(name) {
    return null;
}
slack_event_SlackError_load_Method.prototype._getField = slack_event_SlackError_load_Method__getField;

function slack_event_SlackError_load_Method__setField(name, value) {}
slack_event_SlackError_load_Method.prototype._setField = slack_event_SlackError_load_Method__setField;

// CLASS slack_event_SlackError_dispatch_Method

function slack_event_SlackError_dispatch_Method() {
    slack_event_SlackError_dispatch_Method.super_.call(this, "quark.void", "dispatch", ["slack.SlackHandler"]);
}
exports.slack_event_SlackError_dispatch_Method = slack_event_SlackError_dispatch_Method;
_qrt.util.inherits(slack_event_SlackError_dispatch_Method, quark.reflect.Method);

function slack_event_SlackError_dispatch_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_event_SlackError_dispatch_Method.prototype.__init_fields__ = slack_event_SlackError_dispatch_Method__init_fields__;

function slack_event_SlackError_dispatch_Method_invoke(object, args) {
    var obj = object;
    (obj).dispatch((args)[0]);
    return null;
}
slack_event_SlackError_dispatch_Method.prototype.invoke = slack_event_SlackError_dispatch_Method_invoke;

function slack_event_SlackError_dispatch_Method__getClass() {
    return null;
}
slack_event_SlackError_dispatch_Method.prototype._getClass = slack_event_SlackError_dispatch_Method__getClass;

function slack_event_SlackError_dispatch_Method__getField(name) {
    return null;
}
slack_event_SlackError_dispatch_Method.prototype._getField = slack_event_SlackError_dispatch_Method__getField;

function slack_event_SlackError_dispatch_Method__setField(name, value) {}
slack_event_SlackError_dispatch_Method.prototype._setField = slack_event_SlackError_dispatch_Method__setField;

// CLASS slack_event_SlackError

function slack_event_SlackError() {
    slack_event_SlackError.super_.call(this, "slack.event.SlackError");
    (this).name = "slack.event.SlackError";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "type"), new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("slack.Channel", "channel"), new quark.reflect.Field("quark.String", "timestamp"), new quark.reflect.Field("quark.int", "code"), new quark.reflect.Field("quark.String", "text")];
    (this).methods = [new slack_event_SlackError_load_Method(), new slack_event_SlackError_dispatch_Method()];
}
exports.slack_event_SlackError = slack_event_SlackError;
_qrt.util.inherits(slack_event_SlackError, quark.reflect.Class);

function slack_event_SlackError__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slack_event_SlackError.prototype.__init_fields__ = slack_event_SlackError__init_fields__;
slack_event_SlackError.singleton = new slack_event_SlackError();
function slack_event_SlackError_construct(args) {
    return new slack.event.SlackError();
}
slack_event_SlackError.prototype.construct = slack_event_SlackError_construct;

function slack_event_SlackError__getClass() {
    return null;
}
slack_event_SlackError.prototype._getClass = slack_event_SlackError__getClass;

function slack_event_SlackError__getField(name) {
    return null;
}
slack_event_SlackError.prototype._getField = slack_event_SlackError__getField;

function slack_event_SlackError__setField(name, value) {}
slack_event_SlackError.prototype._setField = slack_event_SlackError__setField;


// CLASS slack_event_Hello_dispatch_Method

function slack_event_Hello_dispatch_Method() {
    slack_event_Hello_dispatch_Method.super_.call(this, "quark.void", "dispatch", ["slack.SlackHandler"]);
}
exports.slack_event_Hello_dispatch_Method = slack_event_Hello_dispatch_Method;
_qrt.util.inherits(slack_event_Hello_dispatch_Method, quark.reflect.Method);

function slack_event_Hello_dispatch_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_event_Hello_dispatch_Method.prototype.__init_fields__ = slack_event_Hello_dispatch_Method__init_fields__;

function slack_event_Hello_dispatch_Method_invoke(object, args) {
    var obj = object;
    (obj).dispatch((args)[0]);
    return null;
}
slack_event_Hello_dispatch_Method.prototype.invoke = slack_event_Hello_dispatch_Method_invoke;

function slack_event_Hello_dispatch_Method__getClass() {
    return null;
}
slack_event_Hello_dispatch_Method.prototype._getClass = slack_event_Hello_dispatch_Method__getClass;

function slack_event_Hello_dispatch_Method__getField(name) {
    return null;
}
slack_event_Hello_dispatch_Method.prototype._getField = slack_event_Hello_dispatch_Method__getField;

function slack_event_Hello_dispatch_Method__setField(name, value) {}
slack_event_Hello_dispatch_Method.prototype._setField = slack_event_Hello_dispatch_Method__setField;

// CLASS slack_event_Hello_load_Method

function slack_event_Hello_load_Method() {
    slack_event_Hello_load_Method.super_.call(this, "quark.void", "load", ["slack.Client", "quark.JSONObject"]);
}
exports.slack_event_Hello_load_Method = slack_event_Hello_load_Method;
_qrt.util.inherits(slack_event_Hello_load_Method, quark.reflect.Method);

function slack_event_Hello_load_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_event_Hello_load_Method.prototype.__init_fields__ = slack_event_Hello_load_Method__init_fields__;

function slack_event_Hello_load_Method_invoke(object, args) {
    var obj = object;
    (obj).load((args)[0], (args)[1]);
    return null;
}
slack_event_Hello_load_Method.prototype.invoke = slack_event_Hello_load_Method_invoke;

function slack_event_Hello_load_Method__getClass() {
    return null;
}
slack_event_Hello_load_Method.prototype._getClass = slack_event_Hello_load_Method__getClass;

function slack_event_Hello_load_Method__getField(name) {
    return null;
}
slack_event_Hello_load_Method.prototype._getField = slack_event_Hello_load_Method__getField;

function slack_event_Hello_load_Method__setField(name, value) {}
slack_event_Hello_load_Method.prototype._setField = slack_event_Hello_load_Method__setField;

// CLASS slack_event_Hello

function slack_event_Hello() {
    slack_event_Hello.super_.call(this, "slack.event.Hello");
    (this).name = "slack.event.Hello";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "type"), new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("slack.Channel", "channel"), new quark.reflect.Field("quark.String", "timestamp")];
    (this).methods = [new slack_event_Hello_dispatch_Method(), new slack_event_Hello_load_Method()];
}
exports.slack_event_Hello = slack_event_Hello;
_qrt.util.inherits(slack_event_Hello, quark.reflect.Class);

function slack_event_Hello__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slack_event_Hello.prototype.__init_fields__ = slack_event_Hello__init_fields__;
slack_event_Hello.singleton = new slack_event_Hello();
function slack_event_Hello_construct(args) {
    return new slack.event.Hello();
}
slack_event_Hello.prototype.construct = slack_event_Hello_construct;

function slack_event_Hello__getClass() {
    return null;
}
slack_event_Hello.prototype._getClass = slack_event_Hello__getClass;

function slack_event_Hello__getField(name) {
    return null;
}
slack_event_Hello.prototype._getField = slack_event_Hello__getField;

function slack_event_Hello__setField(name, value) {}
slack_event_Hello.prototype._setField = slack_event_Hello__setField;


// CLASS slack_event_Message_load_Method

function slack_event_Message_load_Method() {
    slack_event_Message_load_Method.super_.call(this, "quark.void", "load", ["slack.Client", "quark.JSONObject"]);
}
exports.slack_event_Message_load_Method = slack_event_Message_load_Method;
_qrt.util.inherits(slack_event_Message_load_Method, quark.reflect.Method);

function slack_event_Message_load_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_event_Message_load_Method.prototype.__init_fields__ = slack_event_Message_load_Method__init_fields__;

function slack_event_Message_load_Method_invoke(object, args) {
    var obj = object;
    (obj).load((args)[0], (args)[1]);
    return null;
}
slack_event_Message_load_Method.prototype.invoke = slack_event_Message_load_Method_invoke;

function slack_event_Message_load_Method__getClass() {
    return null;
}
slack_event_Message_load_Method.prototype._getClass = slack_event_Message_load_Method__getClass;

function slack_event_Message_load_Method__getField(name) {
    return null;
}
slack_event_Message_load_Method.prototype._getField = slack_event_Message_load_Method__getField;

function slack_event_Message_load_Method__setField(name, value) {}
slack_event_Message_load_Method.prototype._setField = slack_event_Message_load_Method__setField;

// CLASS slack_event_Message_dispatch_Method

function slack_event_Message_dispatch_Method() {
    slack_event_Message_dispatch_Method.super_.call(this, "quark.void", "dispatch", ["slack.SlackHandler"]);
}
exports.slack_event_Message_dispatch_Method = slack_event_Message_dispatch_Method;
_qrt.util.inherits(slack_event_Message_dispatch_Method, quark.reflect.Method);

function slack_event_Message_dispatch_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_event_Message_dispatch_Method.prototype.__init_fields__ = slack_event_Message_dispatch_Method__init_fields__;

function slack_event_Message_dispatch_Method_invoke(object, args) {
    var obj = object;
    (obj).dispatch((args)[0]);
    return null;
}
slack_event_Message_dispatch_Method.prototype.invoke = slack_event_Message_dispatch_Method_invoke;

function slack_event_Message_dispatch_Method__getClass() {
    return null;
}
slack_event_Message_dispatch_Method.prototype._getClass = slack_event_Message_dispatch_Method__getClass;

function slack_event_Message_dispatch_Method__getField(name) {
    return null;
}
slack_event_Message_dispatch_Method.prototype._getField = slack_event_Message_dispatch_Method__getField;

function slack_event_Message_dispatch_Method__setField(name, value) {}
slack_event_Message_dispatch_Method.prototype._setField = slack_event_Message_dispatch_Method__setField;

// CLASS slack_event_Message

function slack_event_Message() {
    slack_event_Message.super_.call(this, "slack.event.Message");
    (this).name = "slack.event.Message";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "type"), new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("slack.Channel", "channel"), new quark.reflect.Field("quark.String", "timestamp"), new quark.reflect.Field("quark.String", "subtype"), new quark.reflect.Field("quark.bool", "hidden"), new quark.reflect.Field("quark.String", "text"), new quark.reflect.Field("slack.event.Edited", "edited")];
    (this).methods = [new slack_event_Message_load_Method(), new slack_event_Message_dispatch_Method()];
}
exports.slack_event_Message = slack_event_Message;
_qrt.util.inherits(slack_event_Message, quark.reflect.Class);

function slack_event_Message__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slack_event_Message.prototype.__init_fields__ = slack_event_Message__init_fields__;
slack_event_Message.singleton = new slack_event_Message();
function slack_event_Message_construct(args) {
    return new slack.event.Message();
}
slack_event_Message.prototype.construct = slack_event_Message_construct;

function slack_event_Message__getClass() {
    return null;
}
slack_event_Message.prototype._getClass = slack_event_Message__getClass;

function slack_event_Message__getField(name) {
    return null;
}
slack_event_Message.prototype._getField = slack_event_Message__getField;

function slack_event_Message__setField(name, value) {}
slack_event_Message.prototype._setField = slack_event_Message__setField;


// CLASS slack_event_Edited

function slack_event_Edited() {
    slack_event_Edited.super_.call(this, "slack.event.Edited");
    (this).name = "slack.event.Edited";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("quark.String", "timestamp")];
    (this).methods = [];
}
exports.slack_event_Edited = slack_event_Edited;
_qrt.util.inherits(slack_event_Edited, quark.reflect.Class);

function slack_event_Edited__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slack_event_Edited.prototype.__init_fields__ = slack_event_Edited__init_fields__;
slack_event_Edited.singleton = new slack_event_Edited();
function slack_event_Edited_construct(args) {
    return new slack.event.Edited();
}
slack_event_Edited.prototype.construct = slack_event_Edited_construct;

function slack_event_Edited__getClass() {
    return null;
}
slack_event_Edited.prototype._getClass = slack_event_Edited__getClass;

function slack_event_Edited__getField(name) {
    return null;
}
slack_event_Edited.prototype._getField = slack_event_Edited__getField;

function slack_event_Edited__setField(name, value) {}
slack_event_Edited.prototype._setField = slack_event_Edited__setField;


// CLASS slack_SlackHandler_onSlackEvent_Method

function slack_SlackHandler_onSlackEvent_Method() {
    slack_SlackHandler_onSlackEvent_Method.super_.call(this, "quark.void", "onSlackEvent", ["slack.event.SlackEvent"]);
}
exports.slack_SlackHandler_onSlackEvent_Method = slack_SlackHandler_onSlackEvent_Method;
_qrt.util.inherits(slack_SlackHandler_onSlackEvent_Method, quark.reflect.Method);

function slack_SlackHandler_onSlackEvent_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_SlackHandler_onSlackEvent_Method.prototype.__init_fields__ = slack_SlackHandler_onSlackEvent_Method__init_fields__;

function slack_SlackHandler_onSlackEvent_Method_invoke(object, args) {
    var obj = object;
    (obj).onSlackEvent((args)[0]);
    return null;
}
slack_SlackHandler_onSlackEvent_Method.prototype.invoke = slack_SlackHandler_onSlackEvent_Method_invoke;

function slack_SlackHandler_onSlackEvent_Method__getClass() {
    return null;
}
slack_SlackHandler_onSlackEvent_Method.prototype._getClass = slack_SlackHandler_onSlackEvent_Method__getClass;

function slack_SlackHandler_onSlackEvent_Method__getField(name) {
    return null;
}
slack_SlackHandler_onSlackEvent_Method.prototype._getField = slack_SlackHandler_onSlackEvent_Method__getField;

function slack_SlackHandler_onSlackEvent_Method__setField(name, value) {}
slack_SlackHandler_onSlackEvent_Method.prototype._setField = slack_SlackHandler_onSlackEvent_Method__setField;

// CLASS slack_SlackHandler_onHello_Method

function slack_SlackHandler_onHello_Method() {
    slack_SlackHandler_onHello_Method.super_.call(this, "quark.void", "onHello", ["slack.event.Hello"]);
}
exports.slack_SlackHandler_onHello_Method = slack_SlackHandler_onHello_Method;
_qrt.util.inherits(slack_SlackHandler_onHello_Method, quark.reflect.Method);

function slack_SlackHandler_onHello_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_SlackHandler_onHello_Method.prototype.__init_fields__ = slack_SlackHandler_onHello_Method__init_fields__;

function slack_SlackHandler_onHello_Method_invoke(object, args) {
    var obj = object;
    (obj).onHello((args)[0]);
    return null;
}
slack_SlackHandler_onHello_Method.prototype.invoke = slack_SlackHandler_onHello_Method_invoke;

function slack_SlackHandler_onHello_Method__getClass() {
    return null;
}
slack_SlackHandler_onHello_Method.prototype._getClass = slack_SlackHandler_onHello_Method__getClass;

function slack_SlackHandler_onHello_Method__getField(name) {
    return null;
}
slack_SlackHandler_onHello_Method.prototype._getField = slack_SlackHandler_onHello_Method__getField;

function slack_SlackHandler_onHello_Method__setField(name, value) {}
slack_SlackHandler_onHello_Method.prototype._setField = slack_SlackHandler_onHello_Method__setField;

// CLASS slack_SlackHandler_onSlackError_Method

function slack_SlackHandler_onSlackError_Method() {
    slack_SlackHandler_onSlackError_Method.super_.call(this, "quark.void", "onSlackError", ["slack.event.SlackError"]);
}
exports.slack_SlackHandler_onSlackError_Method = slack_SlackHandler_onSlackError_Method;
_qrt.util.inherits(slack_SlackHandler_onSlackError_Method, quark.reflect.Method);

function slack_SlackHandler_onSlackError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_SlackHandler_onSlackError_Method.prototype.__init_fields__ = slack_SlackHandler_onSlackError_Method__init_fields__;

function slack_SlackHandler_onSlackError_Method_invoke(object, args) {
    var obj = object;
    (obj).onSlackError((args)[0]);
    return null;
}
slack_SlackHandler_onSlackError_Method.prototype.invoke = slack_SlackHandler_onSlackError_Method_invoke;

function slack_SlackHandler_onSlackError_Method__getClass() {
    return null;
}
slack_SlackHandler_onSlackError_Method.prototype._getClass = slack_SlackHandler_onSlackError_Method__getClass;

function slack_SlackHandler_onSlackError_Method__getField(name) {
    return null;
}
slack_SlackHandler_onSlackError_Method.prototype._getField = slack_SlackHandler_onSlackError_Method__getField;

function slack_SlackHandler_onSlackError_Method__setField(name, value) {}
slack_SlackHandler_onSlackError_Method.prototype._setField = slack_SlackHandler_onSlackError_Method__setField;

// CLASS slack_SlackHandler_onMessage_Method

function slack_SlackHandler_onMessage_Method() {
    slack_SlackHandler_onMessage_Method.super_.call(this, "quark.void", "onMessage", ["slack.event.Message"]);
}
exports.slack_SlackHandler_onMessage_Method = slack_SlackHandler_onMessage_Method;
_qrt.util.inherits(slack_SlackHandler_onMessage_Method, quark.reflect.Method);

function slack_SlackHandler_onMessage_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_SlackHandler_onMessage_Method.prototype.__init_fields__ = slack_SlackHandler_onMessage_Method__init_fields__;

function slack_SlackHandler_onMessage_Method_invoke(object, args) {
    var obj = object;
    (obj).onMessage((args)[0]);
    return null;
}
slack_SlackHandler_onMessage_Method.prototype.invoke = slack_SlackHandler_onMessage_Method_invoke;

function slack_SlackHandler_onMessage_Method__getClass() {
    return null;
}
slack_SlackHandler_onMessage_Method.prototype._getClass = slack_SlackHandler_onMessage_Method__getClass;

function slack_SlackHandler_onMessage_Method__getField(name) {
    return null;
}
slack_SlackHandler_onMessage_Method.prototype._getField = slack_SlackHandler_onMessage_Method__getField;

function slack_SlackHandler_onMessage_Method__setField(name, value) {}
slack_SlackHandler_onMessage_Method.prototype._setField = slack_SlackHandler_onMessage_Method__setField;

// CLASS slack_SlackHandler

function slack_SlackHandler() {
    slack_SlackHandler.super_.call(this, "slack.SlackHandler");
    (this).name = "slack.SlackHandler";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new slack_SlackHandler_onSlackEvent_Method(), new slack_SlackHandler_onHello_Method(), new slack_SlackHandler_onSlackError_Method(), new slack_SlackHandler_onMessage_Method()];
}
exports.slack_SlackHandler = slack_SlackHandler;
_qrt.util.inherits(slack_SlackHandler, quark.reflect.Class);

function slack_SlackHandler__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slack_SlackHandler.prototype.__init_fields__ = slack_SlackHandler__init_fields__;
slack_SlackHandler.singleton = new slack_SlackHandler();
function slack_SlackHandler_construct(args) {
    return null;
}
slack_SlackHandler.prototype.construct = slack_SlackHandler_construct;

function slack_SlackHandler__getClass() {
    return null;
}
slack_SlackHandler.prototype._getClass = slack_SlackHandler__getClass;

function slack_SlackHandler__getField(name) {
    return null;
}
slack_SlackHandler.prototype._getField = slack_SlackHandler__getField;

function slack_SlackHandler__setField(name, value) {}
slack_SlackHandler.prototype._setField = slack_SlackHandler__setField;


// CLASS slack_User

function slack_User() {
    slack_User.super_.call(this, "slack.User");
    (this).name = "slack.User";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("slack.Client", "client"), new quark.reflect.Field("quark.String", "user")];
    (this).methods = [];
}
exports.slack_User = slack_User;
_qrt.util.inherits(slack_User, quark.reflect.Class);

function slack_User__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slack_User.prototype.__init_fields__ = slack_User__init_fields__;
slack_User.singleton = new slack_User();
function slack_User_construct(args) {
    return new slack.User((args)[0], (args)[1]);
}
slack_User.prototype.construct = slack_User_construct;

function slack_User__getClass() {
    return null;
}
slack_User.prototype._getClass = slack_User__getClass;

function slack_User__getField(name) {
    return null;
}
slack_User.prototype._getField = slack_User__getField;

function slack_User__setField(name, value) {}
slack_User.prototype._setField = slack_User__setField;


// CLASS slack_Channel_send_Method

function slack_Channel_send_Method() {
    slack_Channel_send_Method.super_.call(this, "quark.void", "send", ["quark.String"]);
}
exports.slack_Channel_send_Method = slack_Channel_send_Method;
_qrt.util.inherits(slack_Channel_send_Method, quark.reflect.Method);

function slack_Channel_send_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Channel_send_Method.prototype.__init_fields__ = slack_Channel_send_Method__init_fields__;

function slack_Channel_send_Method_invoke(object, args) {
    var obj = object;
    (obj).send((args)[0]);
    return null;
}
slack_Channel_send_Method.prototype.invoke = slack_Channel_send_Method_invoke;

function slack_Channel_send_Method__getClass() {
    return null;
}
slack_Channel_send_Method.prototype._getClass = slack_Channel_send_Method__getClass;

function slack_Channel_send_Method__getField(name) {
    return null;
}
slack_Channel_send_Method.prototype._getField = slack_Channel_send_Method__getField;

function slack_Channel_send_Method__setField(name, value) {}
slack_Channel_send_Method.prototype._setField = slack_Channel_send_Method__setField;

// CLASS slack_Channel

function slack_Channel() {
    slack_Channel.super_.call(this, "slack.Channel");
    (this).name = "slack.Channel";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("slack.Client", "client"), new quark.reflect.Field("quark.String", "channel")];
    (this).methods = [new slack_Channel_send_Method()];
}
exports.slack_Channel = slack_Channel;
_qrt.util.inherits(slack_Channel, quark.reflect.Class);

function slack_Channel__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slack_Channel.prototype.__init_fields__ = slack_Channel__init_fields__;
slack_Channel.singleton = new slack_Channel();
function slack_Channel_construct(args) {
    return new slack.Channel((args)[0], (args)[1]);
}
slack_Channel.prototype.construct = slack_Channel_construct;

function slack_Channel__getClass() {
    return null;
}
slack_Channel.prototype._getClass = slack_Channel__getClass;

function slack_Channel__getField(name) {
    return null;
}
slack_Channel.prototype._getField = slack_Channel__getField;

function slack_Channel__setField(name, value) {}
slack_Channel.prototype._setField = slack_Channel__setField;


// CLASS slack_Client_connect_Method

function slack_Client_connect_Method() {
    slack_Client_connect_Method.super_.call(this, "quark.void", "connect", []);
}
exports.slack_Client_connect_Method = slack_Client_connect_Method;
_qrt.util.inherits(slack_Client_connect_Method, quark.reflect.Method);

function slack_Client_connect_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_connect_Method.prototype.__init_fields__ = slack_Client_connect_Method__init_fields__;

function slack_Client_connect_Method_invoke(object, args) {
    var obj = object;
    (obj).connect();
    return null;
}
slack_Client_connect_Method.prototype.invoke = slack_Client_connect_Method_invoke;

function slack_Client_connect_Method__getClass() {
    return null;
}
slack_Client_connect_Method.prototype._getClass = slack_Client_connect_Method__getClass;

function slack_Client_connect_Method__getField(name) {
    return null;
}
slack_Client_connect_Method.prototype._getField = slack_Client_connect_Method__getField;

function slack_Client_connect_Method__setField(name, value) {}
slack_Client_connect_Method.prototype._setField = slack_Client_connect_Method__setField;

// CLASS slack_Client_request_Method

function slack_Client_request_Method() {
    slack_Client_request_Method.super_.call(this, "quark.void", "request", ["quark.String", "quark.Map<quark.String,quark.Object>", "quark.HTTPHandler"]);
}
exports.slack_Client_request_Method = slack_Client_request_Method;
_qrt.util.inherits(slack_Client_request_Method, quark.reflect.Method);

function slack_Client_request_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_request_Method.prototype.__init_fields__ = slack_Client_request_Method__init_fields__;

function slack_Client_request_Method_invoke(object, args) {
    var obj = object;
    (obj).request((args)[0], (args)[1], (args)[2]);
    return null;
}
slack_Client_request_Method.prototype.invoke = slack_Client_request_Method_invoke;

function slack_Client_request_Method__getClass() {
    return null;
}
slack_Client_request_Method.prototype._getClass = slack_Client_request_Method__getClass;

function slack_Client_request_Method__getField(name) {
    return null;
}
slack_Client_request_Method.prototype._getField = slack_Client_request_Method__getField;

function slack_Client_request_Method__setField(name, value) {}
slack_Client_request_Method.prototype._setField = slack_Client_request_Method__setField;

// CLASS slack_Client_ws_connect_Method

function slack_Client_ws_connect_Method() {
    slack_Client_ws_connect_Method.super_.call(this, "quark.void", "ws_connect", ["quark.String"]);
}
exports.slack_Client_ws_connect_Method = slack_Client_ws_connect_Method;
_qrt.util.inherits(slack_Client_ws_connect_Method, quark.reflect.Method);

function slack_Client_ws_connect_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_ws_connect_Method.prototype.__init_fields__ = slack_Client_ws_connect_Method__init_fields__;

function slack_Client_ws_connect_Method_invoke(object, args) {
    var obj = object;
    (obj).ws_connect((args)[0]);
    return null;
}
slack_Client_ws_connect_Method.prototype.invoke = slack_Client_ws_connect_Method_invoke;

function slack_Client_ws_connect_Method__getClass() {
    return null;
}
slack_Client_ws_connect_Method.prototype._getClass = slack_Client_ws_connect_Method__getClass;

function slack_Client_ws_connect_Method__getField(name) {
    return null;
}
slack_Client_ws_connect_Method.prototype._getField = slack_Client_ws_connect_Method__getField;

function slack_Client_ws_connect_Method__setField(name, value) {}
slack_Client_ws_connect_Method.prototype._setField = slack_Client_ws_connect_Method__setField;

// CLASS slack_Client_ws_send_Method

function slack_Client_ws_send_Method() {
    slack_Client_ws_send_Method.super_.call(this, "quark.void", "ws_send", ["quark.String"]);
}
exports.slack_Client_ws_send_Method = slack_Client_ws_send_Method;
_qrt.util.inherits(slack_Client_ws_send_Method, quark.reflect.Method);

function slack_Client_ws_send_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_ws_send_Method.prototype.__init_fields__ = slack_Client_ws_send_Method__init_fields__;

function slack_Client_ws_send_Method_invoke(object, args) {
    var obj = object;
    (obj).ws_send((args)[0]);
    return null;
}
slack_Client_ws_send_Method.prototype.invoke = slack_Client_ws_send_Method_invoke;

function slack_Client_ws_send_Method__getClass() {
    return null;
}
slack_Client_ws_send_Method.prototype._getClass = slack_Client_ws_send_Method__getClass;

function slack_Client_ws_send_Method__getField(name) {
    return null;
}
slack_Client_ws_send_Method.prototype._getField = slack_Client_ws_send_Method__getField;

function slack_Client_ws_send_Method__setField(name, value) {}
slack_Client_ws_send_Method.prototype._setField = slack_Client_ws_send_Method__setField;

// CLASS slack_Client_onWSConnected_Method

function slack_Client_onWSConnected_Method() {
    slack_Client_onWSConnected_Method.super_.call(this, "quark.void", "onWSConnected", ["quark.WebSocket"]);
}
exports.slack_Client_onWSConnected_Method = slack_Client_onWSConnected_Method;
_qrt.util.inherits(slack_Client_onWSConnected_Method, quark.reflect.Method);

function slack_Client_onWSConnected_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onWSConnected_Method.prototype.__init_fields__ = slack_Client_onWSConnected_Method__init_fields__;

function slack_Client_onWSConnected_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSConnected((args)[0]);
    return null;
}
slack_Client_onWSConnected_Method.prototype.invoke = slack_Client_onWSConnected_Method_invoke;

function slack_Client_onWSConnected_Method__getClass() {
    return null;
}
slack_Client_onWSConnected_Method.prototype._getClass = slack_Client_onWSConnected_Method__getClass;

function slack_Client_onWSConnected_Method__getField(name) {
    return null;
}
slack_Client_onWSConnected_Method.prototype._getField = slack_Client_onWSConnected_Method__getField;

function slack_Client_onWSConnected_Method__setField(name, value) {}
slack_Client_onWSConnected_Method.prototype._setField = slack_Client_onWSConnected_Method__setField;

// CLASS slack_Client_onWSClose_Method

function slack_Client_onWSClose_Method() {
    slack_Client_onWSClose_Method.super_.call(this, "quark.void", "onWSClose", ["quark.WebSocket"]);
}
exports.slack_Client_onWSClose_Method = slack_Client_onWSClose_Method;
_qrt.util.inherits(slack_Client_onWSClose_Method, quark.reflect.Method);

function slack_Client_onWSClose_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onWSClose_Method.prototype.__init_fields__ = slack_Client_onWSClose_Method__init_fields__;

function slack_Client_onWSClose_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSClose((args)[0]);
    return null;
}
slack_Client_onWSClose_Method.prototype.invoke = slack_Client_onWSClose_Method_invoke;

function slack_Client_onWSClose_Method__getClass() {
    return null;
}
slack_Client_onWSClose_Method.prototype._getClass = slack_Client_onWSClose_Method__getClass;

function slack_Client_onWSClose_Method__getField(name) {
    return null;
}
slack_Client_onWSClose_Method.prototype._getField = slack_Client_onWSClose_Method__getField;

function slack_Client_onWSClose_Method__setField(name, value) {}
slack_Client_onWSClose_Method.prototype._setField = slack_Client_onWSClose_Method__setField;

// CLASS slack_Client_onWSError_Method

function slack_Client_onWSError_Method() {
    slack_Client_onWSError_Method.super_.call(this, "quark.void", "onWSError", ["quark.WebSocket"]);
}
exports.slack_Client_onWSError_Method = slack_Client_onWSError_Method;
_qrt.util.inherits(slack_Client_onWSError_Method, quark.reflect.Method);

function slack_Client_onWSError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onWSError_Method.prototype.__init_fields__ = slack_Client_onWSError_Method__init_fields__;

function slack_Client_onWSError_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSError((args)[0]);
    return null;
}
slack_Client_onWSError_Method.prototype.invoke = slack_Client_onWSError_Method_invoke;

function slack_Client_onWSError_Method__getClass() {
    return null;
}
slack_Client_onWSError_Method.prototype._getClass = slack_Client_onWSError_Method__getClass;

function slack_Client_onWSError_Method__getField(name) {
    return null;
}
slack_Client_onWSError_Method.prototype._getField = slack_Client_onWSError_Method__getField;

function slack_Client_onWSError_Method__setField(name, value) {}
slack_Client_onWSError_Method.prototype._setField = slack_Client_onWSError_Method__setField;

// CLASS slack_Client_construct_Method

function slack_Client_construct_Method() {
    slack_Client_construct_Method.super_.call(this, "slack.event.SlackEvent", "construct", ["quark.String"]);
}
exports.slack_Client_construct_Method = slack_Client_construct_Method;
_qrt.util.inherits(slack_Client_construct_Method, quark.reflect.Method);

function slack_Client_construct_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_construct_Method.prototype.__init_fields__ = slack_Client_construct_Method__init_fields__;

function slack_Client_construct_Method_invoke(object, args) {
    var obj = object;
    return (obj).construct((args)[0]);
}
slack_Client_construct_Method.prototype.invoke = slack_Client_construct_Method_invoke;

function slack_Client_construct_Method__getClass() {
    return null;
}
slack_Client_construct_Method.prototype._getClass = slack_Client_construct_Method__getClass;

function slack_Client_construct_Method__getField(name) {
    return null;
}
slack_Client_construct_Method.prototype._getField = slack_Client_construct_Method__getField;

function slack_Client_construct_Method__setField(name, value) {}
slack_Client_construct_Method.prototype._setField = slack_Client_construct_Method__setField;

// CLASS slack_Client_onWSMessage_Method

function slack_Client_onWSMessage_Method() {
    slack_Client_onWSMessage_Method.super_.call(this, "quark.void", "onWSMessage", ["quark.WebSocket", "quark.String"]);
}
exports.slack_Client_onWSMessage_Method = slack_Client_onWSMessage_Method;
_qrt.util.inherits(slack_Client_onWSMessage_Method, quark.reflect.Method);

function slack_Client_onWSMessage_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onWSMessage_Method.prototype.__init_fields__ = slack_Client_onWSMessage_Method__init_fields__;

function slack_Client_onWSMessage_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSMessage((args)[0], (args)[1]);
    return null;
}
slack_Client_onWSMessage_Method.prototype.invoke = slack_Client_onWSMessage_Method_invoke;

function slack_Client_onWSMessage_Method__getClass() {
    return null;
}
slack_Client_onWSMessage_Method.prototype._getClass = slack_Client_onWSMessage_Method__getClass;

function slack_Client_onWSMessage_Method__getField(name) {
    return null;
}
slack_Client_onWSMessage_Method.prototype._getField = slack_Client_onWSMessage_Method__getField;

function slack_Client_onWSMessage_Method__setField(name, value) {}
slack_Client_onWSMessage_Method.prototype._setField = slack_Client_onWSMessage_Method__setField;

// CLASS slack_Client_onHTTPResponse_Method

function slack_Client_onHTTPResponse_Method() {
    slack_Client_onHTTPResponse_Method.super_.call(this, "quark.void", "onHTTPResponse", ["quark.HTTPRequest", "quark.HTTPResponse"]);
}
exports.slack_Client_onHTTPResponse_Method = slack_Client_onHTTPResponse_Method;
_qrt.util.inherits(slack_Client_onHTTPResponse_Method, quark.reflect.Method);

function slack_Client_onHTTPResponse_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onHTTPResponse_Method.prototype.__init_fields__ = slack_Client_onHTTPResponse_Method__init_fields__;

function slack_Client_onHTTPResponse_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPResponse((args)[0], (args)[1]);
    return null;
}
slack_Client_onHTTPResponse_Method.prototype.invoke = slack_Client_onHTTPResponse_Method_invoke;

function slack_Client_onHTTPResponse_Method__getClass() {
    return null;
}
slack_Client_onHTTPResponse_Method.prototype._getClass = slack_Client_onHTTPResponse_Method__getClass;

function slack_Client_onHTTPResponse_Method__getField(name) {
    return null;
}
slack_Client_onHTTPResponse_Method.prototype._getField = slack_Client_onHTTPResponse_Method__getField;

function slack_Client_onHTTPResponse_Method__setField(name, value) {}
slack_Client_onHTTPResponse_Method.prototype._setField = slack_Client_onHTTPResponse_Method__setField;

// CLASS slack_Client_onWSInit_Method

function slack_Client_onWSInit_Method() {
    slack_Client_onWSInit_Method.super_.call(this, "quark.void", "onWSInit", ["quark.WebSocket"]);
}
exports.slack_Client_onWSInit_Method = slack_Client_onWSInit_Method;
_qrt.util.inherits(slack_Client_onWSInit_Method, quark.reflect.Method);

function slack_Client_onWSInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onWSInit_Method.prototype.__init_fields__ = slack_Client_onWSInit_Method__init_fields__;

function slack_Client_onWSInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSInit((args)[0]);
    return null;
}
slack_Client_onWSInit_Method.prototype.invoke = slack_Client_onWSInit_Method_invoke;

function slack_Client_onWSInit_Method__getClass() {
    return null;
}
slack_Client_onWSInit_Method.prototype._getClass = slack_Client_onWSInit_Method__getClass;

function slack_Client_onWSInit_Method__getField(name) {
    return null;
}
slack_Client_onWSInit_Method.prototype._getField = slack_Client_onWSInit_Method__getField;

function slack_Client_onWSInit_Method__setField(name, value) {}
slack_Client_onWSInit_Method.prototype._setField = slack_Client_onWSInit_Method__setField;

// CLASS slack_Client_onWSBinary_Method

function slack_Client_onWSBinary_Method() {
    slack_Client_onWSBinary_Method.super_.call(this, "quark.void", "onWSBinary", ["quark.WebSocket", "quark.Buffer"]);
}
exports.slack_Client_onWSBinary_Method = slack_Client_onWSBinary_Method;
_qrt.util.inherits(slack_Client_onWSBinary_Method, quark.reflect.Method);

function slack_Client_onWSBinary_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onWSBinary_Method.prototype.__init_fields__ = slack_Client_onWSBinary_Method__init_fields__;

function slack_Client_onWSBinary_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSBinary((args)[0], (args)[1]);
    return null;
}
slack_Client_onWSBinary_Method.prototype.invoke = slack_Client_onWSBinary_Method_invoke;

function slack_Client_onWSBinary_Method__getClass() {
    return null;
}
slack_Client_onWSBinary_Method.prototype._getClass = slack_Client_onWSBinary_Method__getClass;

function slack_Client_onWSBinary_Method__getField(name) {
    return null;
}
slack_Client_onWSBinary_Method.prototype._getField = slack_Client_onWSBinary_Method__getField;

function slack_Client_onWSBinary_Method__setField(name, value) {}
slack_Client_onWSBinary_Method.prototype._setField = slack_Client_onWSBinary_Method__setField;

// CLASS slack_Client_onWSClosed_Method

function slack_Client_onWSClosed_Method() {
    slack_Client_onWSClosed_Method.super_.call(this, "quark.void", "onWSClosed", ["quark.WebSocket"]);
}
exports.slack_Client_onWSClosed_Method = slack_Client_onWSClosed_Method;
_qrt.util.inherits(slack_Client_onWSClosed_Method, quark.reflect.Method);

function slack_Client_onWSClosed_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onWSClosed_Method.prototype.__init_fields__ = slack_Client_onWSClosed_Method__init_fields__;

function slack_Client_onWSClosed_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSClosed((args)[0]);
    return null;
}
slack_Client_onWSClosed_Method.prototype.invoke = slack_Client_onWSClosed_Method_invoke;

function slack_Client_onWSClosed_Method__getClass() {
    return null;
}
slack_Client_onWSClosed_Method.prototype._getClass = slack_Client_onWSClosed_Method__getClass;

function slack_Client_onWSClosed_Method__getField(name) {
    return null;
}
slack_Client_onWSClosed_Method.prototype._getField = slack_Client_onWSClosed_Method__getField;

function slack_Client_onWSClosed_Method__setField(name, value) {}
slack_Client_onWSClosed_Method.prototype._setField = slack_Client_onWSClosed_Method__setField;

// CLASS slack_Client_onWSFinal_Method

function slack_Client_onWSFinal_Method() {
    slack_Client_onWSFinal_Method.super_.call(this, "quark.void", "onWSFinal", ["quark.WebSocket"]);
}
exports.slack_Client_onWSFinal_Method = slack_Client_onWSFinal_Method;
_qrt.util.inherits(slack_Client_onWSFinal_Method, quark.reflect.Method);

function slack_Client_onWSFinal_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onWSFinal_Method.prototype.__init_fields__ = slack_Client_onWSFinal_Method__init_fields__;

function slack_Client_onWSFinal_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSFinal((args)[0]);
    return null;
}
slack_Client_onWSFinal_Method.prototype.invoke = slack_Client_onWSFinal_Method_invoke;

function slack_Client_onWSFinal_Method__getClass() {
    return null;
}
slack_Client_onWSFinal_Method.prototype._getClass = slack_Client_onWSFinal_Method__getClass;

function slack_Client_onWSFinal_Method__getField(name) {
    return null;
}
slack_Client_onWSFinal_Method.prototype._getField = slack_Client_onWSFinal_Method__getField;

function slack_Client_onWSFinal_Method__setField(name, value) {}
slack_Client_onWSFinal_Method.prototype._setField = slack_Client_onWSFinal_Method__setField;

// CLASS slack_Client_onHTTPInit_Method

function slack_Client_onHTTPInit_Method() {
    slack_Client_onHTTPInit_Method.super_.call(this, "quark.void", "onHTTPInit", ["quark.HTTPRequest"]);
}
exports.slack_Client_onHTTPInit_Method = slack_Client_onHTTPInit_Method;
_qrt.util.inherits(slack_Client_onHTTPInit_Method, quark.reflect.Method);

function slack_Client_onHTTPInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onHTTPInit_Method.prototype.__init_fields__ = slack_Client_onHTTPInit_Method__init_fields__;

function slack_Client_onHTTPInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPInit((args)[0]);
    return null;
}
slack_Client_onHTTPInit_Method.prototype.invoke = slack_Client_onHTTPInit_Method_invoke;

function slack_Client_onHTTPInit_Method__getClass() {
    return null;
}
slack_Client_onHTTPInit_Method.prototype._getClass = slack_Client_onHTTPInit_Method__getClass;

function slack_Client_onHTTPInit_Method__getField(name) {
    return null;
}
slack_Client_onHTTPInit_Method.prototype._getField = slack_Client_onHTTPInit_Method__getField;

function slack_Client_onHTTPInit_Method__setField(name, value) {}
slack_Client_onHTTPInit_Method.prototype._setField = slack_Client_onHTTPInit_Method__setField;

// CLASS slack_Client_onHTTPError_Method

function slack_Client_onHTTPError_Method() {
    slack_Client_onHTTPError_Method.super_.call(this, "quark.void", "onHTTPError", ["quark.HTTPRequest", "quark.String"]);
}
exports.slack_Client_onHTTPError_Method = slack_Client_onHTTPError_Method;
_qrt.util.inherits(slack_Client_onHTTPError_Method, quark.reflect.Method);

function slack_Client_onHTTPError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onHTTPError_Method.prototype.__init_fields__ = slack_Client_onHTTPError_Method__init_fields__;

function slack_Client_onHTTPError_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPError((args)[0], (args)[1]);
    return null;
}
slack_Client_onHTTPError_Method.prototype.invoke = slack_Client_onHTTPError_Method_invoke;

function slack_Client_onHTTPError_Method__getClass() {
    return null;
}
slack_Client_onHTTPError_Method.prototype._getClass = slack_Client_onHTTPError_Method__getClass;

function slack_Client_onHTTPError_Method__getField(name) {
    return null;
}
slack_Client_onHTTPError_Method.prototype._getField = slack_Client_onHTTPError_Method__getField;

function slack_Client_onHTTPError_Method__setField(name, value) {}
slack_Client_onHTTPError_Method.prototype._setField = slack_Client_onHTTPError_Method__setField;

// CLASS slack_Client_onHTTPFinal_Method

function slack_Client_onHTTPFinal_Method() {
    slack_Client_onHTTPFinal_Method.super_.call(this, "quark.void", "onHTTPFinal", ["quark.HTTPRequest"]);
}
exports.slack_Client_onHTTPFinal_Method = slack_Client_onHTTPFinal_Method;
_qrt.util.inherits(slack_Client_onHTTPFinal_Method, quark.reflect.Method);

function slack_Client_onHTTPFinal_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slack_Client_onHTTPFinal_Method.prototype.__init_fields__ = slack_Client_onHTTPFinal_Method__init_fields__;

function slack_Client_onHTTPFinal_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPFinal((args)[0]);
    return null;
}
slack_Client_onHTTPFinal_Method.prototype.invoke = slack_Client_onHTTPFinal_Method_invoke;

function slack_Client_onHTTPFinal_Method__getClass() {
    return null;
}
slack_Client_onHTTPFinal_Method.prototype._getClass = slack_Client_onHTTPFinal_Method__getClass;

function slack_Client_onHTTPFinal_Method__getField(name) {
    return null;
}
slack_Client_onHTTPFinal_Method.prototype._getField = slack_Client_onHTTPFinal_Method__getField;

function slack_Client_onHTTPFinal_Method__setField(name, value) {}
slack_Client_onHTTPFinal_Method.prototype._setField = slack_Client_onHTTPFinal_Method__setField;

// CLASS slack_Client

function slack_Client() {
    slack_Client.super_.call(this, "slack.Client");
    (this).name = "slack.Client";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.Runtime", "runtime"), new quark.reflect.Field("quark.String", "token"), new quark.reflect.Field("slack.SlackHandler", "handler"), new quark.reflect.Field("quark.int", "event_id"), new quark.reflect.Field("quark.WebSocket", "socket")];
    (this).methods = [new slack_Client_connect_Method(), new slack_Client_request_Method(), new slack_Client_ws_connect_Method(), new slack_Client_ws_send_Method(), new slack_Client_onWSConnected_Method(), new slack_Client_onWSClose_Method(), new slack_Client_onWSError_Method(), new slack_Client_construct_Method(), new slack_Client_onWSMessage_Method(), new slack_Client_onHTTPResponse_Method(), new slack_Client_onWSInit_Method(), new slack_Client_onWSBinary_Method(), new slack_Client_onWSClosed_Method(), new slack_Client_onWSFinal_Method(), new slack_Client_onHTTPInit_Method(), new slack_Client_onHTTPError_Method(), new slack_Client_onHTTPFinal_Method()];
}
exports.slack_Client = slack_Client;
_qrt.util.inherits(slack_Client, quark.reflect.Class);

function slack_Client__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slack_Client.prototype.__init_fields__ = slack_Client__init_fields__;
slack_Client.singleton = new slack_Client();
function slack_Client_construct(args) {
    return new slack.Client((args)[0], (args)[1], (args)[2]);
}
slack_Client.prototype.construct = slack_Client_construct;

function slack_Client__getClass() {
    return null;
}
slack_Client.prototype._getClass = slack_Client__getClass;

function slack_Client__getField(name) {
    return null;
}
slack_Client.prototype._getField = slack_Client__getField;

function slack_Client__setField(name, value) {}
slack_Client.prototype._setField = slack_Client__setField;


// CLASS slackpack_Handler_onSlackEvent_Method

function slackpack_Handler_onSlackEvent_Method() {
    slackpack_Handler_onSlackEvent_Method.super_.call(this, "quark.void", "onSlackEvent", ["slack.event.SlackEvent"]);
}
exports.slackpack_Handler_onSlackEvent_Method = slackpack_Handler_onSlackEvent_Method;
_qrt.util.inherits(slackpack_Handler_onSlackEvent_Method, quark.reflect.Method);

function slackpack_Handler_onSlackEvent_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slackpack_Handler_onSlackEvent_Method.prototype.__init_fields__ = slackpack_Handler_onSlackEvent_Method__init_fields__;

function slackpack_Handler_onSlackEvent_Method_invoke(object, args) {
    var obj = object;
    (obj).onSlackEvent((args)[0]);
    return null;
}
slackpack_Handler_onSlackEvent_Method.prototype.invoke = slackpack_Handler_onSlackEvent_Method_invoke;

function slackpack_Handler_onSlackEvent_Method__getClass() {
    return null;
}
slackpack_Handler_onSlackEvent_Method.prototype._getClass = slackpack_Handler_onSlackEvent_Method__getClass;

function slackpack_Handler_onSlackEvent_Method__getField(name) {
    return null;
}
slackpack_Handler_onSlackEvent_Method.prototype._getField = slackpack_Handler_onSlackEvent_Method__getField;

function slackpack_Handler_onSlackEvent_Method__setField(name, value) {}
slackpack_Handler_onSlackEvent_Method.prototype._setField = slackpack_Handler_onSlackEvent_Method__setField;

// CLASS slackpack_Handler_onHello_Method

function slackpack_Handler_onHello_Method() {
    slackpack_Handler_onHello_Method.super_.call(this, "quark.void", "onHello", ["slack.event.Hello"]);
}
exports.slackpack_Handler_onHello_Method = slackpack_Handler_onHello_Method;
_qrt.util.inherits(slackpack_Handler_onHello_Method, quark.reflect.Method);

function slackpack_Handler_onHello_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slackpack_Handler_onHello_Method.prototype.__init_fields__ = slackpack_Handler_onHello_Method__init_fields__;

function slackpack_Handler_onHello_Method_invoke(object, args) {
    var obj = object;
    (obj).onHello((args)[0]);
    return null;
}
slackpack_Handler_onHello_Method.prototype.invoke = slackpack_Handler_onHello_Method_invoke;

function slackpack_Handler_onHello_Method__getClass() {
    return null;
}
slackpack_Handler_onHello_Method.prototype._getClass = slackpack_Handler_onHello_Method__getClass;

function slackpack_Handler_onHello_Method__getField(name) {
    return null;
}
slackpack_Handler_onHello_Method.prototype._getField = slackpack_Handler_onHello_Method__getField;

function slackpack_Handler_onHello_Method__setField(name, value) {}
slackpack_Handler_onHello_Method.prototype._setField = slackpack_Handler_onHello_Method__setField;

// CLASS slackpack_Handler_onSlackError_Method

function slackpack_Handler_onSlackError_Method() {
    slackpack_Handler_onSlackError_Method.super_.call(this, "quark.void", "onSlackError", ["slack.event.SlackError"]);
}
exports.slackpack_Handler_onSlackError_Method = slackpack_Handler_onSlackError_Method;
_qrt.util.inherits(slackpack_Handler_onSlackError_Method, quark.reflect.Method);

function slackpack_Handler_onSlackError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slackpack_Handler_onSlackError_Method.prototype.__init_fields__ = slackpack_Handler_onSlackError_Method__init_fields__;

function slackpack_Handler_onSlackError_Method_invoke(object, args) {
    var obj = object;
    (obj).onSlackError((args)[0]);
    return null;
}
slackpack_Handler_onSlackError_Method.prototype.invoke = slackpack_Handler_onSlackError_Method_invoke;

function slackpack_Handler_onSlackError_Method__getClass() {
    return null;
}
slackpack_Handler_onSlackError_Method.prototype._getClass = slackpack_Handler_onSlackError_Method__getClass;

function slackpack_Handler_onSlackError_Method__getField(name) {
    return null;
}
slackpack_Handler_onSlackError_Method.prototype._getField = slackpack_Handler_onSlackError_Method__getField;

function slackpack_Handler_onSlackError_Method__setField(name, value) {}
slackpack_Handler_onSlackError_Method.prototype._setField = slackpack_Handler_onSlackError_Method__setField;

// CLASS slackpack_Handler_onMessage_Method

function slackpack_Handler_onMessage_Method() {
    slackpack_Handler_onMessage_Method.super_.call(this, "quark.void", "onMessage", ["slack.event.Message"]);
}
exports.slackpack_Handler_onMessage_Method = slackpack_Handler_onMessage_Method;
_qrt.util.inherits(slackpack_Handler_onMessage_Method, quark.reflect.Method);

function slackpack_Handler_onMessage_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
slackpack_Handler_onMessage_Method.prototype.__init_fields__ = slackpack_Handler_onMessage_Method__init_fields__;

function slackpack_Handler_onMessage_Method_invoke(object, args) {
    var obj = object;
    (obj).onMessage((args)[0]);
    return null;
}
slackpack_Handler_onMessage_Method.prototype.invoke = slackpack_Handler_onMessage_Method_invoke;

function slackpack_Handler_onMessage_Method__getClass() {
    return null;
}
slackpack_Handler_onMessage_Method.prototype._getClass = slackpack_Handler_onMessage_Method__getClass;

function slackpack_Handler_onMessage_Method__getField(name) {
    return null;
}
slackpack_Handler_onMessage_Method.prototype._getField = slackpack_Handler_onMessage_Method__getField;

function slackpack_Handler_onMessage_Method__setField(name, value) {}
slackpack_Handler_onMessage_Method.prototype._setField = slackpack_Handler_onMessage_Method__setField;

// CLASS slackpack_Handler

function slackpack_Handler() {
    slackpack_Handler.super_.call(this, "slackpack.Handler");
    (this).name = "slackpack.Handler";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new slackpack_Handler_onSlackEvent_Method(), new slackpack_Handler_onHello_Method(), new slackpack_Handler_onSlackError_Method(), new slackpack_Handler_onMessage_Method()];
}
exports.slackpack_Handler = slackpack_Handler;
_qrt.util.inherits(slackpack_Handler, quark.reflect.Class);

function slackpack_Handler__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
slackpack_Handler.prototype.__init_fields__ = slackpack_Handler__init_fields__;
slackpack_Handler.singleton = new slackpack_Handler();
function slackpack_Handler_construct(args) {
    return new slackpack.Handler();
}
slackpack_Handler.prototype.construct = slackpack_Handler_construct;

function slackpack_Handler__getClass() {
    return null;
}
slackpack_Handler.prototype._getClass = slackpack_Handler__getClass;

function slackpack_Handler__getField(name) {
    return null;
}
slackpack_Handler.prototype._getField = slackpack_Handler__getField;

function slackpack_Handler__setField(name, value) {}
slackpack_Handler.prototype._setField = slackpack_Handler__setField;


// CLASS quark_Map_quark_String_quark_Object_

function quark_Map_quark_String_quark_Object_() {
    quark_Map_quark_String_quark_Object_.super_.call(this, "quark.Map<quark.String,quark.Object>");
    (this).name = "quark.Map";
    (this).parameters = ["quark.String", "quark.Object"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Map_quark_String_quark_Object_ = quark_Map_quark_String_quark_Object_;
_qrt.util.inherits(quark_Map_quark_String_quark_Object_, quark.reflect.Class);

function quark_Map_quark_String_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Map_quark_String_quark_Object_.prototype.__init_fields__ = quark_Map_quark_String_quark_Object___init_fields__;
quark_Map_quark_String_quark_Object_.singleton = new quark_Map_quark_String_quark_Object_();
function quark_Map_quark_String_quark_Object__construct(args) {
    return new Map();
}
quark_Map_quark_String_quark_Object_.prototype.construct = quark_Map_quark_String_quark_Object__construct;

function quark_Map_quark_String_quark_Object___getClass() {
    return null;
}
quark_Map_quark_String_quark_Object_.prototype._getClass = quark_Map_quark_String_quark_Object___getClass;

function quark_Map_quark_String_quark_Object___getField(name) {
    return null;
}
quark_Map_quark_String_quark_Object_.prototype._getField = quark_Map_quark_String_quark_Object___getField;

function quark_Map_quark_String_quark_Object___setField(name, value) {}
quark_Map_quark_String_quark_Object_.prototype._setField = quark_Map_quark_String_quark_Object___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.slack_event_SlackEvent_md = slack_event_SlackEvent.singleton;
Root.slack_event_SlackError_md = slack_event_SlackError.singleton;
Root.slack_event_Hello_md = slack_event_Hello.singleton;
Root.slack_event_Message_md = slack_event_Message.singleton;
Root.slack_event_Edited_md = slack_event_Edited.singleton;
Root.slack_SlackHandler_md = slack_SlackHandler.singleton;
Root.slack_User_md = slack_User.singleton;
Root.slack_Channel_md = slack_Channel.singleton;
Root.slack_Client_md = slack_Client.singleton;
Root.slackpack_Handler_md = slackpack_Handler.singleton;
Root.quark_Map_quark_String_quark_Object__md = quark_Map_quark_String_quark_Object_.singleton;
function Root__getClass() {
    return null;
}
Root.prototype._getClass = Root__getClass;

function Root__getField(name) {
    return null;
}
Root.prototype._getField = Root__getField;

function Root__setField(name, value) {}
Root.prototype._setField = Root__setField;

var slack = require('../slack/index.js');
exports.slack = slack;
var slack = require('../slack/index.js');
exports.slack = slack;
var quark = require('quark').quark;
exports.quark = quark;
var slackpack = require('../slackpack/index.js');
exports.slackpack = slackpack;
