var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS quark_delegate_Message_encode_Method

function quark_delegate_Message_encode_Method() {
    quark_delegate_Message_encode_Method.super_.call(this, "quark.String", "encode", []);
}
exports.quark_delegate_Message_encode_Method = quark_delegate_Message_encode_Method;
_qrt.util.inherits(quark_delegate_Message_encode_Method, quark.reflect.Method);

function quark_delegate_Message_encode_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_delegate_Message_encode_Method.prototype.__init_fields__ = quark_delegate_Message_encode_Method__init_fields__;

function quark_delegate_Message_encode_Method_invoke(object, args) {
    var obj = object;
    return (obj).encode();
}
quark_delegate_Message_encode_Method.prototype.invoke = quark_delegate_Message_encode_Method_invoke;

function quark_delegate_Message_encode_Method__getClass() {
    return null;
}
quark_delegate_Message_encode_Method.prototype._getClass = quark_delegate_Message_encode_Method__getClass;

function quark_delegate_Message_encode_Method__getField(name) {
    return null;
}
quark_delegate_Message_encode_Method.prototype._getField = quark_delegate_Message_encode_Method__getField;

function quark_delegate_Message_encode_Method__setField(name, value) {}
quark_delegate_Message_encode_Method.prototype._setField = quark_delegate_Message_encode_Method__setField;

// CLASS quark_delegate_Message

function quark_delegate_Message() {
    quark_delegate_Message.super_.call(this, "quark_delegate.Message");
    (this).name = "quark_delegate.Message";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_delegate_Message_encode_Method()];
}
exports.quark_delegate_Message = quark_delegate_Message;
_qrt.util.inherits(quark_delegate_Message, quark.reflect.Class);

function quark_delegate_Message__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_delegate_Message.prototype.__init_fields__ = quark_delegate_Message__init_fields__;
quark_delegate_Message.singleton = new quark_delegate_Message();
function quark_delegate_Message_construct(args) {
    return new quark_delegate.Message();
}
quark_delegate_Message.prototype.construct = quark_delegate_Message_construct;

function quark_delegate_Message__getClass() {
    return null;
}
quark_delegate_Message.prototype._getClass = quark_delegate_Message__getClass;

function quark_delegate_Message__getField(name) {
    return null;
}
quark_delegate_Message.prototype._getField = quark_delegate_Message__getField;

function quark_delegate_Message__setField(name, value) {}
quark_delegate_Message.prototype._setField = quark_delegate_Message__setField;


// CLASS quark_delegate_Ping_encode_Method

function quark_delegate_Ping_encode_Method() {
    quark_delegate_Ping_encode_Method.super_.call(this, "quark.String", "encode", []);
}
exports.quark_delegate_Ping_encode_Method = quark_delegate_Ping_encode_Method;
_qrt.util.inherits(quark_delegate_Ping_encode_Method, quark.reflect.Method);

function quark_delegate_Ping_encode_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_delegate_Ping_encode_Method.prototype.__init_fields__ = quark_delegate_Ping_encode_Method__init_fields__;

function quark_delegate_Ping_encode_Method_invoke(object, args) {
    var obj = object;
    return (obj).encode();
}
quark_delegate_Ping_encode_Method.prototype.invoke = quark_delegate_Ping_encode_Method_invoke;

function quark_delegate_Ping_encode_Method__getClass() {
    return null;
}
quark_delegate_Ping_encode_Method.prototype._getClass = quark_delegate_Ping_encode_Method__getClass;

function quark_delegate_Ping_encode_Method__getField(name) {
    return null;
}
quark_delegate_Ping_encode_Method.prototype._getField = quark_delegate_Ping_encode_Method__getField;

function quark_delegate_Ping_encode_Method__setField(name, value) {}
quark_delegate_Ping_encode_Method.prototype._setField = quark_delegate_Ping_encode_Method__setField;

// CLASS quark_delegate_Ping

function quark_delegate_Ping() {
    quark_delegate_Ping.super_.call(this, "quark_delegate.Ping");
    (this).name = "quark_delegate.Ping";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_delegate_Ping_encode_Method()];
}
exports.quark_delegate_Ping = quark_delegate_Ping;
_qrt.util.inherits(quark_delegate_Ping, quark.reflect.Class);

function quark_delegate_Ping__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_delegate_Ping.prototype.__init_fields__ = quark_delegate_Ping__init_fields__;
quark_delegate_Ping.singleton = new quark_delegate_Ping();
function quark_delegate_Ping_construct(args) {
    return new quark_delegate.Ping();
}
quark_delegate_Ping.prototype.construct = quark_delegate_Ping_construct;

function quark_delegate_Ping__getClass() {
    return null;
}
quark_delegate_Ping.prototype._getClass = quark_delegate_Ping__getClass;

function quark_delegate_Ping__getField(name) {
    return null;
}
quark_delegate_Ping.prototype._getField = quark_delegate_Ping__getField;

function quark_delegate_Ping__setField(name, value) {}
quark_delegate_Ping.prototype._setField = quark_delegate_Ping__setField;


// CLASS quark_delegate_Pong_toString_Method

function quark_delegate_Pong_toString_Method() {
    quark_delegate_Pong_toString_Method.super_.call(this, "quark.String", "toString", []);
}
exports.quark_delegate_Pong_toString_Method = quark_delegate_Pong_toString_Method;
_qrt.util.inherits(quark_delegate_Pong_toString_Method, quark.reflect.Method);

function quark_delegate_Pong_toString_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_delegate_Pong_toString_Method.prototype.__init_fields__ = quark_delegate_Pong_toString_Method__init_fields__;

function quark_delegate_Pong_toString_Method_invoke(object, args) {
    var obj = object;
    return (obj).toString();
}
quark_delegate_Pong_toString_Method.prototype.invoke = quark_delegate_Pong_toString_Method_invoke;

function quark_delegate_Pong_toString_Method__getClass() {
    return null;
}
quark_delegate_Pong_toString_Method.prototype._getClass = quark_delegate_Pong_toString_Method__getClass;

function quark_delegate_Pong_toString_Method__getField(name) {
    return null;
}
quark_delegate_Pong_toString_Method.prototype._getField = quark_delegate_Pong_toString_Method__getField;

function quark_delegate_Pong_toString_Method__setField(name, value) {}
quark_delegate_Pong_toString_Method.prototype._setField = quark_delegate_Pong_toString_Method__setField;

// CLASS quark_delegate_Pong_encode_Method

function quark_delegate_Pong_encode_Method() {
    quark_delegate_Pong_encode_Method.super_.call(this, "quark.String", "encode", []);
}
exports.quark_delegate_Pong_encode_Method = quark_delegate_Pong_encode_Method;
_qrt.util.inherits(quark_delegate_Pong_encode_Method, quark.reflect.Method);

function quark_delegate_Pong_encode_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_delegate_Pong_encode_Method.prototype.__init_fields__ = quark_delegate_Pong_encode_Method__init_fields__;

function quark_delegate_Pong_encode_Method_invoke(object, args) {
    var obj = object;
    return (obj).encode();
}
quark_delegate_Pong_encode_Method.prototype.invoke = quark_delegate_Pong_encode_Method_invoke;

function quark_delegate_Pong_encode_Method__getClass() {
    return null;
}
quark_delegate_Pong_encode_Method.prototype._getClass = quark_delegate_Pong_encode_Method__getClass;

function quark_delegate_Pong_encode_Method__getField(name) {
    return null;
}
quark_delegate_Pong_encode_Method.prototype._getField = quark_delegate_Pong_encode_Method__getField;

function quark_delegate_Pong_encode_Method__setField(name, value) {}
quark_delegate_Pong_encode_Method.prototype._setField = quark_delegate_Pong_encode_Method__setField;

// CLASS quark_delegate_Pong

function quark_delegate_Pong() {
    quark_delegate_Pong.super_.call(this, "quark_delegate.Pong");
    (this).name = "quark_delegate.Pong";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_delegate_Pong_toString_Method(), new quark_delegate_Pong_encode_Method()];
}
exports.quark_delegate_Pong = quark_delegate_Pong;
_qrt.util.inherits(quark_delegate_Pong, quark.reflect.Class);

function quark_delegate_Pong__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_delegate_Pong.prototype.__init_fields__ = quark_delegate_Pong__init_fields__;
quark_delegate_Pong.singleton = new quark_delegate_Pong();
function quark_delegate_Pong_construct(args) {
    return new quark_delegate.Pong();
}
quark_delegate_Pong.prototype.construct = quark_delegate_Pong_construct;

function quark_delegate_Pong__getClass() {
    return null;
}
quark_delegate_Pong.prototype._getClass = quark_delegate_Pong__getClass;

function quark_delegate_Pong__getField(name) {
    return null;
}
quark_delegate_Pong.prototype._getField = quark_delegate_Pong__getField;

function quark_delegate_Pong__setField(name, value) {}
quark_delegate_Pong.prototype._setField = quark_delegate_Pong__setField;


// CLASS quark_delegate_Test_bar_Method

function quark_delegate_Test_bar_Method() {
    quark_delegate_Test_bar_Method.super_.call(this, "quark.Object", "bar", ["quark.String", "quark.List<quark.Object>", "quark.List<quark.Object>"]);
}
exports.quark_delegate_Test_bar_Method = quark_delegate_Test_bar_Method;
_qrt.util.inherits(quark_delegate_Test_bar_Method, quark.reflect.Method);

function quark_delegate_Test_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_delegate_Test_bar_Method.prototype.__init_fields__ = quark_delegate_Test_bar_Method__init_fields__;

function quark_delegate_Test_bar_Method_invoke(object, args) {
    var obj = object;
    return (obj).bar((args)[0], (args)[1], (args)[2]);
}
quark_delegate_Test_bar_Method.prototype.invoke = quark_delegate_Test_bar_Method_invoke;

function quark_delegate_Test_bar_Method__getClass() {
    return null;
}
quark_delegate_Test_bar_Method.prototype._getClass = quark_delegate_Test_bar_Method__getClass;

function quark_delegate_Test_bar_Method__getField(name) {
    return null;
}
quark_delegate_Test_bar_Method.prototype._getField = quark_delegate_Test_bar_Method__getField;

function quark_delegate_Test_bar_Method__setField(name, value) {}
quark_delegate_Test_bar_Method.prototype._setField = quark_delegate_Test_bar_Method__setField;

// CLASS quark_delegate_Test_foo_Method

function quark_delegate_Test_foo_Method() {
    quark_delegate_Test_foo_Method.super_.call(this, "quark.void", "foo", ["quark.String", "quark.String", "quark.int"]);
}
exports.quark_delegate_Test_foo_Method = quark_delegate_Test_foo_Method;
_qrt.util.inherits(quark_delegate_Test_foo_Method, quark.reflect.Method);

function quark_delegate_Test_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_delegate_Test_foo_Method.prototype.__init_fields__ = quark_delegate_Test_foo_Method__init_fields__;

function quark_delegate_Test_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo((args)[0], (args)[1], (args)[2]);
    return null;
}
quark_delegate_Test_foo_Method.prototype.invoke = quark_delegate_Test_foo_Method_invoke;

function quark_delegate_Test_foo_Method__getClass() {
    return null;
}
quark_delegate_Test_foo_Method.prototype._getClass = quark_delegate_Test_foo_Method__getClass;

function quark_delegate_Test_foo_Method__getField(name) {
    return null;
}
quark_delegate_Test_foo_Method.prototype._getField = quark_delegate_Test_foo_Method__getField;

function quark_delegate_Test_foo_Method__setField(name, value) {}
quark_delegate_Test_foo_Method.prototype._setField = quark_delegate_Test_foo_Method__setField;

// CLASS quark_delegate_Test_rpc_Method

function quark_delegate_Test_rpc_Method() {
    quark_delegate_Test_rpc_Method.super_.call(this, "quark_delegate.Message", "rpc", ["quark.String", "quark_delegate.Message", "quark.List<quark.Object>"]);
}
exports.quark_delegate_Test_rpc_Method = quark_delegate_Test_rpc_Method;
_qrt.util.inherits(quark_delegate_Test_rpc_Method, quark.reflect.Method);

function quark_delegate_Test_rpc_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_delegate_Test_rpc_Method.prototype.__init_fields__ = quark_delegate_Test_rpc_Method__init_fields__;

function quark_delegate_Test_rpc_Method_invoke(object, args) {
    var obj = object;
    return (obj).rpc((args)[0], (args)[1], (args)[2]);
}
quark_delegate_Test_rpc_Method.prototype.invoke = quark_delegate_Test_rpc_Method_invoke;

function quark_delegate_Test_rpc_Method__getClass() {
    return null;
}
quark_delegate_Test_rpc_Method.prototype._getClass = quark_delegate_Test_rpc_Method__getClass;

function quark_delegate_Test_rpc_Method__getField(name) {
    return null;
}
quark_delegate_Test_rpc_Method.prototype._getField = quark_delegate_Test_rpc_Method__getField;

function quark_delegate_Test_rpc_Method__setField(name, value) {}
quark_delegate_Test_rpc_Method.prototype._setField = quark_delegate_Test_rpc_Method__setField;

// CLASS quark_delegate_Test_hello_Method

function quark_delegate_Test_hello_Method() {
    quark_delegate_Test_hello_Method.super_.call(this, "quark_delegate.Pong", "hello", ["quark_delegate.Ping"]);
}
exports.quark_delegate_Test_hello_Method = quark_delegate_Test_hello_Method;
_qrt.util.inherits(quark_delegate_Test_hello_Method, quark.reflect.Method);

function quark_delegate_Test_hello_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_delegate_Test_hello_Method.prototype.__init_fields__ = quark_delegate_Test_hello_Method__init_fields__;

function quark_delegate_Test_hello_Method_invoke(object, args) {
    var obj = object;
    return (obj).hello((args)[0]);
}
quark_delegate_Test_hello_Method.prototype.invoke = quark_delegate_Test_hello_Method_invoke;

function quark_delegate_Test_hello_Method__getClass() {
    return null;
}
quark_delegate_Test_hello_Method.prototype._getClass = quark_delegate_Test_hello_Method__getClass;

function quark_delegate_Test_hello_Method__getField(name) {
    return null;
}
quark_delegate_Test_hello_Method.prototype._getField = quark_delegate_Test_hello_Method__getField;

function quark_delegate_Test_hello_Method__setField(name, value) {}
quark_delegate_Test_hello_Method.prototype._setField = quark_delegate_Test_hello_Method__setField;

// CLASS quark_delegate_Test

function quark_delegate_Test() {
    quark_delegate_Test.super_.call(this, "quark_delegate.Test");
    (this).name = "quark_delegate.Test";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_delegate_Test_bar_Method(), new quark_delegate_Test_foo_Method(), new quark_delegate_Test_rpc_Method(), new quark_delegate_Test_hello_Method()];
}
exports.quark_delegate_Test = quark_delegate_Test;
_qrt.util.inherits(quark_delegate_Test, quark.reflect.Class);

function quark_delegate_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_delegate_Test.prototype.__init_fields__ = quark_delegate_Test__init_fields__;
quark_delegate_Test.singleton = new quark_delegate_Test();
function quark_delegate_Test_construct(args) {
    return new quark_delegate.Test();
}
quark_delegate_Test.prototype.construct = quark_delegate_Test_construct;

function quark_delegate_Test__getClass() {
    return null;
}
quark_delegate_Test.prototype._getClass = quark_delegate_Test__getClass;

function quark_delegate_Test__getField(name) {
    return null;
}
quark_delegate_Test.prototype._getField = quark_delegate_Test__getField;

function quark_delegate_Test__setField(name, value) {}
quark_delegate_Test.prototype._setField = quark_delegate_Test__setField;


// CLASS quark_List_quark_Object_

function quark_List_quark_Object_() {
    quark_List_quark_Object_.super_.call(this, "quark.List<quark.Object>");
    (this).name = "quark.List";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_Object_ = quark_List_quark_Object_;
_qrt.util.inherits(quark_List_quark_Object_, quark.reflect.Class);

function quark_List_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_Object_.prototype.__init_fields__ = quark_List_quark_Object___init_fields__;
quark_List_quark_Object_.singleton = new quark_List_quark_Object_();
function quark_List_quark_Object__construct(args) {
    return new Array();
}
quark_List_quark_Object_.prototype.construct = quark_List_quark_Object__construct;

function quark_List_quark_Object___getClass() {
    return null;
}
quark_List_quark_Object_.prototype._getClass = quark_List_quark_Object___getClass;

function quark_List_quark_Object___getField(name) {
    return null;
}
quark_List_quark_Object_.prototype._getField = quark_List_quark_Object___getField;

function quark_List_quark_Object___setField(name, value) {}
quark_List_quark_Object_.prototype._setField = quark_List_quark_Object___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.quark_delegate_Message_md = quark_delegate_Message.singleton;
Root.quark_delegate_Ping_md = quark_delegate_Ping.singleton;
Root.quark_delegate_Pong_md = quark_delegate_Pong.singleton;
Root.quark_delegate_Test_md = quark_delegate_Test.singleton;
Root.quark_List_quark_Object__md = quark_List_quark_Object_.singleton;
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

var quark_delegate = require('../quark_delegate/index.js');
exports.quark_delegate = quark_delegate;
