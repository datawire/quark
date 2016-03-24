var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS macro_native_Native_test_Method

function macro_native_Native_test_Method() {
    macro_native_Native_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.macro_native_Native_test_Method = macro_native_Native_test_Method;
_qrt.util.inherits(macro_native_Native_test_Method, quark.reflect.Method);

function macro_native_Native_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
macro_native_Native_test_Method.prototype.__init_fields__ = macro_native_Native_test_Method__init_fields__;

function macro_native_Native_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
macro_native_Native_test_Method.prototype.invoke = macro_native_Native_test_Method_invoke;

function macro_native_Native_test_Method__getClass() {
    return null;
}
macro_native_Native_test_Method.prototype._getClass = macro_native_Native_test_Method__getClass;

function macro_native_Native_test_Method__getField(name) {
    return null;
}
macro_native_Native_test_Method.prototype._getField = macro_native_Native_test_Method__getField;

function macro_native_Native_test_Method__setField(name, value) {}
macro_native_Native_test_Method.prototype._setField = macro_native_Native_test_Method__setField;

// CLASS macro_native_Native

function macro_native_Native() {
    macro_native_Native.super_.call(this, "macro_native.Native");
    (this).name = "macro_native.Native";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new macro_native_Native_test_Method()];
}
exports.macro_native_Native = macro_native_Native;
_qrt.util.inherits(macro_native_Native, quark.reflect.Class);

function macro_native_Native__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
macro_native_Native.prototype.__init_fields__ = macro_native_Native__init_fields__;
macro_native_Native.singleton = new macro_native_Native();
function macro_native_Native_construct(args) {
    return new macro_native.Native();
}
macro_native_Native.prototype.construct = macro_native_Native_construct;

function macro_native_Native__getClass() {
    return null;
}
macro_native_Native.prototype._getClass = macro_native_Native__getClass;

function macro_native_Native__getField(name) {
    return null;
}
macro_native_Native.prototype._getField = macro_native_Native__getField;

function macro_native_Native__setField(name, value) {}
macro_native_Native.prototype._setField = macro_native_Native__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.macro_native_Native_md = macro_native_Native.singleton;
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

var macro_native = require('../macro_native/index.js');
exports.macro_native = macro_native;
