var _qrt = require("datawire-quark-core");
var reflect = require('../reflect');
exports.reflect = reflect;



// CLASS List_reflect_Class_

function List_reflect_Class_() {
    List_reflect_Class_.super_.call(this, "List<reflect.Class>");
    (this).name = "List";
    (this).parameters = ["reflect.Class"];
    (this).fields = [];
    (this).methods = [];
}
exports.List_reflect_Class_ = List_reflect_Class_;
_qrt.util.inherits(List_reflect_Class_, reflect.Class);

function List_reflect_Class___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
List_reflect_Class_.prototype.__init_fields__ = List_reflect_Class___init_fields__;
List_reflect_Class_.singleton = new List_reflect_Class_();
function List_reflect_Class__construct(args) {
    return new Array();
}
List_reflect_Class_.prototype.construct = List_reflect_Class__construct;

function List_reflect_Class___getClass() {
    return null;
}
List_reflect_Class_.prototype._getClass = List_reflect_Class___getClass;

function List_reflect_Class___getField(name) {
    return null;
}
List_reflect_Class_.prototype._getField = List_reflect_Class___getField;

function List_reflect_Class___setField(name, value) {}
List_reflect_Class_.prototype._setField = List_reflect_Class___setField;


// CLASS List_reflect_Method_

function List_reflect_Method_() {
    List_reflect_Method_.super_.call(this, "List<reflect.Method>");
    (this).name = "List";
    (this).parameters = ["reflect.Method"];
    (this).fields = [];
    (this).methods = [];
}
exports.List_reflect_Method_ = List_reflect_Method_;
_qrt.util.inherits(List_reflect_Method_, reflect.Class);

function List_reflect_Method___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
List_reflect_Method_.prototype.__init_fields__ = List_reflect_Method___init_fields__;
List_reflect_Method_.singleton = new List_reflect_Method_();
function List_reflect_Method__construct(args) {
    return new Array();
}
List_reflect_Method_.prototype.construct = List_reflect_Method__construct;

function List_reflect_Method___getClass() {
    return null;
}
List_reflect_Method_.prototype._getClass = List_reflect_Method___getClass;

function List_reflect_Method___getField(name) {
    return null;
}
List_reflect_Method_.prototype._getField = List_reflect_Method___getField;

function List_reflect_Method___setField(name, value) {}
List_reflect_Method_.prototype._setField = List_reflect_Method___setField;


// CLASS Map_String_reflect_Class_

function Map_String_reflect_Class_() {
    Map_String_reflect_Class_.super_.call(this, "Map<String,reflect.Class>");
    (this).name = "Map";
    (this).parameters = ["String", "reflect.Class"];
    (this).fields = [];
    (this).methods = [];
}
exports.Map_String_reflect_Class_ = Map_String_reflect_Class_;
_qrt.util.inherits(Map_String_reflect_Class_, reflect.Class);

function Map_String_reflect_Class___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
Map_String_reflect_Class_.prototype.__init_fields__ = Map_String_reflect_Class___init_fields__;
Map_String_reflect_Class_.singleton = new Map_String_reflect_Class_();
function Map_String_reflect_Class__construct(args) {
    return new Map();
}
Map_String_reflect_Class_.prototype.construct = Map_String_reflect_Class__construct;

function Map_String_reflect_Class___getClass() {
    return null;
}
Map_String_reflect_Class_.prototype._getClass = Map_String_reflect_Class___getClass;

function Map_String_reflect_Class___getField(name) {
    return null;
}
Map_String_reflect_Class_.prototype._getField = Map_String_reflect_Class___getField;

function Map_String_reflect_Class___setField(name, value) {}
Map_String_reflect_Class_.prototype._setField = Map_String_reflect_Class___setField;


// CLASS reflect_Class

function reflect_Class() {
    reflect_Class.super_.call(this, "reflect.Class");
    (this).name = "Class";
    (this).parameters = [];
    (this).fields = [new reflect.Field("Map<String,reflect.Class>", "classes"), new reflect.Field("reflect.Class", "VOID"), new reflect.Field("reflect.Class", "BOOL"), new reflect.Field("reflect.Class", "INT"), new reflect.Field("reflect.Class", "LONG"), new reflect.Field("reflect.Class", "STRING"), new reflect.Field("String", "id"), new reflect.Field("String", "name"), new reflect.Field("List<reflect.Class>", "parameters"), new reflect.Field("List<reflect.Field>", "fields"), new reflect.Field("List<reflect.Method>", "methods")];
    (this).methods = [];
}
exports.reflect_Class = reflect_Class;
_qrt.util.inherits(reflect_Class, reflect.Class);

function reflect_Class__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
reflect_Class.prototype.__init_fields__ = reflect_Class__init_fields__;
reflect_Class.singleton = new reflect_Class();
function reflect_Class_construct(args) {
    return new reflect.Class((args)[0]);
}
reflect_Class.prototype.construct = reflect_Class_construct;

function reflect_Class__getClass() {
    return null;
}
reflect_Class.prototype._getClass = reflect_Class__getClass;

function reflect_Class__getField(name) {
    return null;
}
reflect_Class.prototype._getField = reflect_Class__getField;

function reflect_Class__setField(name, value) {}
reflect_Class.prototype._setField = reflect_Class__setField;


// CLASS reflect_Field

function reflect_Field() {
    reflect_Field.super_.call(this, "reflect.Field");
    (this).name = "Field";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "type"), new reflect.Field("String", "name")];
    (this).methods = [];
}
exports.reflect_Field = reflect_Field;
_qrt.util.inherits(reflect_Field, reflect.Class);

function reflect_Field__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
reflect_Field.prototype.__init_fields__ = reflect_Field__init_fields__;
reflect_Field.singleton = new reflect_Field();
function reflect_Field_construct(args) {
    return new reflect.Field((args)[0], (args)[1]);
}
reflect_Field.prototype.construct = reflect_Field_construct;

function reflect_Field__getClass() {
    return null;
}
reflect_Field.prototype._getClass = reflect_Field__getClass;

function reflect_Field__getField(name) {
    return null;
}
reflect_Field.prototype._getField = reflect_Field__getField;

function reflect_Field__setField(name, value) {}
reflect_Field.prototype._setField = reflect_Field__setField;


// CLASS slack_event_SlackEvent_load_Method

function slack_event_SlackEvent_load_Method() {
    slack_event_SlackEvent_load_Method.super_.call(this, "void", "load", ["slack.Client", "JSONObject"]);
}
exports.slack_event_SlackEvent_load_Method = slack_event_SlackEvent_load_Method;
_qrt.util.inherits(slack_event_SlackEvent_load_Method, reflect.Method);

function slack_event_SlackEvent_load_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_event_SlackEvent_dispatch_Method.super_.call(this, "void", "dispatch", ["slack.SlackHandler"]);
}
exports.slack_event_SlackEvent_dispatch_Method = slack_event_SlackEvent_dispatch_Method;
_qrt.util.inherits(slack_event_SlackEvent_dispatch_Method, reflect.Method);

function slack_event_SlackEvent_dispatch_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    (this).name = "SlackEvent";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "type"), new reflect.Field("slack.User", "user"), new reflect.Field("slack.Channel", "channel"), new reflect.Field("String", "timestamp")];
    (this).methods = [new slack_event_SlackEvent_load_Method(), new slack_event_SlackEvent_dispatch_Method()];
}
exports.slack_event_SlackEvent = slack_event_SlackEvent;
_qrt.util.inherits(slack_event_SlackEvent, reflect.Class);

function slack_event_SlackEvent__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
    slack_event_SlackError_load_Method.super_.call(this, "void", "load", ["slack.Client", "JSONObject"]);
}
exports.slack_event_SlackError_load_Method = slack_event_SlackError_load_Method;
_qrt.util.inherits(slack_event_SlackError_load_Method, reflect.Method);

function slack_event_SlackError_load_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_event_SlackError_dispatch_Method.super_.call(this, "void", "dispatch", ["slack.SlackHandler"]);
}
exports.slack_event_SlackError_dispatch_Method = slack_event_SlackError_dispatch_Method;
_qrt.util.inherits(slack_event_SlackError_dispatch_Method, reflect.Method);

function slack_event_SlackError_dispatch_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    (this).name = "SlackError";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "type"), new reflect.Field("slack.User", "user"), new reflect.Field("slack.Channel", "channel"), new reflect.Field("String", "timestamp"), new reflect.Field("int", "code"), new reflect.Field("String", "text")];
    (this).methods = [new slack_event_SlackError_load_Method(), new slack_event_SlackError_dispatch_Method()];
}
exports.slack_event_SlackError = slack_event_SlackError;
_qrt.util.inherits(slack_event_SlackError, reflect.Class);

function slack_event_SlackError__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
    slack_event_Hello_dispatch_Method.super_.call(this, "void", "dispatch", ["slack.SlackHandler"]);
}
exports.slack_event_Hello_dispatch_Method = slack_event_Hello_dispatch_Method;
_qrt.util.inherits(slack_event_Hello_dispatch_Method, reflect.Method);

function slack_event_Hello_dispatch_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_event_Hello_load_Method.super_.call(this, "void", "load", ["slack.Client", "JSONObject"]);
}
exports.slack_event_Hello_load_Method = slack_event_Hello_load_Method;
_qrt.util.inherits(slack_event_Hello_load_Method, reflect.Method);

function slack_event_Hello_load_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    (this).name = "Hello";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "type"), new reflect.Field("slack.User", "user"), new reflect.Field("slack.Channel", "channel"), new reflect.Field("String", "timestamp")];
    (this).methods = [new slack_event_Hello_dispatch_Method(), new slack_event_Hello_load_Method()];
}
exports.slack_event_Hello = slack_event_Hello;
_qrt.util.inherits(slack_event_Hello, reflect.Class);

function slack_event_Hello__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
    slack_event_Message_load_Method.super_.call(this, "void", "load", ["slack.Client", "JSONObject"]);
}
exports.slack_event_Message_load_Method = slack_event_Message_load_Method;
_qrt.util.inherits(slack_event_Message_load_Method, reflect.Method);

function slack_event_Message_load_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_event_Message_dispatch_Method.super_.call(this, "void", "dispatch", ["slack.SlackHandler"]);
}
exports.slack_event_Message_dispatch_Method = slack_event_Message_dispatch_Method;
_qrt.util.inherits(slack_event_Message_dispatch_Method, reflect.Method);

function slack_event_Message_dispatch_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    (this).name = "Message";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "type"), new reflect.Field("slack.User", "user"), new reflect.Field("slack.Channel", "channel"), new reflect.Field("String", "timestamp"), new reflect.Field("String", "subtype"), new reflect.Field("bool", "hidden"), new reflect.Field("String", "text"), new reflect.Field("slack.event.Edited", "edited")];
    (this).methods = [new slack_event_Message_load_Method(), new slack_event_Message_dispatch_Method()];
}
exports.slack_event_Message = slack_event_Message;
_qrt.util.inherits(slack_event_Message, reflect.Class);

function slack_event_Message__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
    (this).name = "Edited";
    (this).parameters = [];
    (this).fields = [new reflect.Field("slack.User", "user"), new reflect.Field("String", "timestamp")];
    (this).methods = [];
}
exports.slack_event_Edited = slack_event_Edited;
_qrt.util.inherits(slack_event_Edited, reflect.Class);

function slack_event_Edited__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
    slack_SlackHandler_onSlackEvent_Method.super_.call(this, "void", "onSlackEvent", ["slack.event.SlackEvent"]);
}
exports.slack_SlackHandler_onSlackEvent_Method = slack_SlackHandler_onSlackEvent_Method;
_qrt.util.inherits(slack_SlackHandler_onSlackEvent_Method, reflect.Method);

function slack_SlackHandler_onSlackEvent_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_SlackHandler_onHello_Method.super_.call(this, "void", "onHello", ["slack.event.Hello"]);
}
exports.slack_SlackHandler_onHello_Method = slack_SlackHandler_onHello_Method;
_qrt.util.inherits(slack_SlackHandler_onHello_Method, reflect.Method);

function slack_SlackHandler_onHello_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_SlackHandler_onSlackError_Method.super_.call(this, "void", "onSlackError", ["slack.event.SlackError"]);
}
exports.slack_SlackHandler_onSlackError_Method = slack_SlackHandler_onSlackError_Method;
_qrt.util.inherits(slack_SlackHandler_onSlackError_Method, reflect.Method);

function slack_SlackHandler_onSlackError_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_SlackHandler_onMessage_Method.super_.call(this, "void", "onMessage", ["slack.event.Message"]);
}
exports.slack_SlackHandler_onMessage_Method = slack_SlackHandler_onMessage_Method;
_qrt.util.inherits(slack_SlackHandler_onMessage_Method, reflect.Method);

function slack_SlackHandler_onMessage_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    (this).name = "SlackHandler";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new slack_SlackHandler_onSlackEvent_Method(), new slack_SlackHandler_onHello_Method(), new slack_SlackHandler_onSlackError_Method(), new slack_SlackHandler_onMessage_Method()];
}
exports.slack_SlackHandler = slack_SlackHandler;
_qrt.util.inherits(slack_SlackHandler, reflect.Class);

function slack_SlackHandler__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
    (this).name = "User";
    (this).parameters = [];
    (this).fields = [new reflect.Field("slack.Client", "client"), new reflect.Field("String", "user")];
    (this).methods = [];
}
exports.slack_User = slack_User;
_qrt.util.inherits(slack_User, reflect.Class);

function slack_User__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
    slack_Channel_send_Method.super_.call(this, "void", "send", ["String"]);
}
exports.slack_Channel_send_Method = slack_Channel_send_Method;
_qrt.util.inherits(slack_Channel_send_Method, reflect.Method);

function slack_Channel_send_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    (this).name = "Channel";
    (this).parameters = [];
    (this).fields = [new reflect.Field("slack.Client", "client"), new reflect.Field("String", "channel")];
    (this).methods = [new slack_Channel_send_Method()];
}
exports.slack_Channel = slack_Channel;
_qrt.util.inherits(slack_Channel, reflect.Class);

function slack_Channel__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
    slack_Client_connect_Method.super_.call(this, "void", "connect", []);
}
exports.slack_Client_connect_Method = slack_Client_connect_Method;
_qrt.util.inherits(slack_Client_connect_Method, reflect.Method);

function slack_Client_connect_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_Client_request_Method.super_.call(this, "void", "request", ["String", "Map<String,Object>", "HTTPHandler"]);
}
exports.slack_Client_request_Method = slack_Client_request_Method;
_qrt.util.inherits(slack_Client_request_Method, reflect.Method);

function slack_Client_request_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_Client_ws_connect_Method.super_.call(this, "void", "ws_connect", ["String"]);
}
exports.slack_Client_ws_connect_Method = slack_Client_ws_connect_Method;
_qrt.util.inherits(slack_Client_ws_connect_Method, reflect.Method);

function slack_Client_ws_connect_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_Client_ws_send_Method.super_.call(this, "void", "ws_send", ["String"]);
}
exports.slack_Client_ws_send_Method = slack_Client_ws_send_Method;
_qrt.util.inherits(slack_Client_ws_send_Method, reflect.Method);

function slack_Client_ws_send_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_Client_onWSConnected_Method.super_.call(this, "void", "onWSConnected", ["WebSocket"]);
}
exports.slack_Client_onWSConnected_Method = slack_Client_onWSConnected_Method;
_qrt.util.inherits(slack_Client_onWSConnected_Method, reflect.Method);

function slack_Client_onWSConnected_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_Client_onWSClose_Method.super_.call(this, "void", "onWSClose", ["WebSocket"]);
}
exports.slack_Client_onWSClose_Method = slack_Client_onWSClose_Method;
_qrt.util.inherits(slack_Client_onWSClose_Method, reflect.Method);

function slack_Client_onWSClose_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_Client_onWSError_Method.super_.call(this, "void", "onWSError", ["WebSocket"]);
}
exports.slack_Client_onWSError_Method = slack_Client_onWSError_Method;
_qrt.util.inherits(slack_Client_onWSError_Method, reflect.Method);

function slack_Client_onWSError_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_Client_construct_Method.super_.call(this, "slack.event.SlackEvent", "construct", ["String"]);
}
exports.slack_Client_construct_Method = slack_Client_construct_Method;
_qrt.util.inherits(slack_Client_construct_Method, reflect.Method);

function slack_Client_construct_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_Client_onWSMessage_Method.super_.call(this, "void", "onWSMessage", ["WebSocket", "String"]);
}
exports.slack_Client_onWSMessage_Method = slack_Client_onWSMessage_Method;
_qrt.util.inherits(slack_Client_onWSMessage_Method, reflect.Method);

function slack_Client_onWSMessage_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    slack_Client_onHTTPResponse_Method.super_.call(this, "void", "onHTTPResponse", ["HTTPRequest", "HTTPResponse"]);
}
exports.slack_Client_onHTTPResponse_Method = slack_Client_onHTTPResponse_Method;
_qrt.util.inherits(slack_Client_onHTTPResponse_Method, reflect.Method);

function slack_Client_onHTTPResponse_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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

// CLASS slack_Client

function slack_Client() {
    slack_Client.super_.call(this, "slack.Client");
    (this).name = "Client";
    (this).parameters = [];
    (this).fields = [new reflect.Field("Runtime", "runtime"), new reflect.Field("String", "token"), new reflect.Field("slack.SlackHandler", "handler"), new reflect.Field("int", "event_id"), new reflect.Field("WebSocket", "socket")];
    (this).methods = [new slack_Client_connect_Method(), new slack_Client_request_Method(), new slack_Client_ws_connect_Method(), new slack_Client_ws_send_Method(), new slack_Client_onWSConnected_Method(), new slack_Client_onWSClose_Method(), new slack_Client_onWSError_Method(), new slack_Client_construct_Method(), new slack_Client_onWSMessage_Method(), new slack_Client_onHTTPResponse_Method()];
}
exports.slack_Client = slack_Client;
_qrt.util.inherits(slack_Client, reflect.Class);

function slack_Client__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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


// CLASS pkg_Handler_onSlackEvent_Method

function pkg_Handler_onSlackEvent_Method() {
    pkg_Handler_onSlackEvent_Method.super_.call(this, "void", "onSlackEvent", ["slack.event.SlackEvent"]);
}
exports.pkg_Handler_onSlackEvent_Method = pkg_Handler_onSlackEvent_Method;
_qrt.util.inherits(pkg_Handler_onSlackEvent_Method, reflect.Method);

function pkg_Handler_onSlackEvent_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_Handler_onSlackEvent_Method.prototype.__init_fields__ = pkg_Handler_onSlackEvent_Method__init_fields__;

function pkg_Handler_onSlackEvent_Method_invoke(object, args) {
    var obj = object;
    (obj).onSlackEvent((args)[0]);
    return null;
}
pkg_Handler_onSlackEvent_Method.prototype.invoke = pkg_Handler_onSlackEvent_Method_invoke;

function pkg_Handler_onSlackEvent_Method__getClass() {
    return null;
}
pkg_Handler_onSlackEvent_Method.prototype._getClass = pkg_Handler_onSlackEvent_Method__getClass;

function pkg_Handler_onSlackEvent_Method__getField(name) {
    return null;
}
pkg_Handler_onSlackEvent_Method.prototype._getField = pkg_Handler_onSlackEvent_Method__getField;

function pkg_Handler_onSlackEvent_Method__setField(name, value) {}
pkg_Handler_onSlackEvent_Method.prototype._setField = pkg_Handler_onSlackEvent_Method__setField;

// CLASS pkg_Handler

function pkg_Handler() {
    pkg_Handler.super_.call(this, "pkg.Handler");
    (this).name = "Handler";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_Handler_onSlackEvent_Method()];
}
exports.pkg_Handler = pkg_Handler;
_qrt.util.inherits(pkg_Handler, reflect.Class);

function pkg_Handler__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_Handler.prototype.__init_fields__ = pkg_Handler__init_fields__;
pkg_Handler.singleton = new pkg_Handler();
function pkg_Handler_construct(args) {
    return new pkg.Handler();
}
pkg_Handler.prototype.construct = pkg_Handler_construct;

function pkg_Handler__getClass() {
    return null;
}
pkg_Handler.prototype._getClass = pkg_Handler__getClass;

function pkg_Handler__getField(name) {
    return null;
}
pkg_Handler.prototype._getField = pkg_Handler__getField;

function pkg_Handler__setField(name, value) {}
pkg_Handler.prototype._setField = pkg_Handler__setField;


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
Root.pkg_Handler_md = pkg_Handler.singleton;
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

var slack = require('../slack');
exports.slack = slack;
var slack = require('../slack');
exports.slack = slack;
var pkg = require('../pkg');
exports.pkg = pkg;
