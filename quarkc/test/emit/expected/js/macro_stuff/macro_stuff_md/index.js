var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS macro_stuff_Macro_test_Method

function macro_stuff_Macro_test_Method() {
    macro_stuff_Macro_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.macro_stuff_Macro_test_Method = macro_stuff_Macro_test_Method;
_qrt.util.inherits(macro_stuff_Macro_test_Method, quark.reflect.Method);

function macro_stuff_Macro_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
macro_stuff_Macro_test_Method.prototype.__init_fields__ = macro_stuff_Macro_test_Method__init_fields__;

function macro_stuff_Macro_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
macro_stuff_Macro_test_Method.prototype.invoke = macro_stuff_Macro_test_Method_invoke;

function macro_stuff_Macro_test_Method__getClass() {
    return null;
}
macro_stuff_Macro_test_Method.prototype._getClass = macro_stuff_Macro_test_Method__getClass;

function macro_stuff_Macro_test_Method__getField(name) {
    return null;
}
macro_stuff_Macro_test_Method.prototype._getField = macro_stuff_Macro_test_Method__getField;

function macro_stuff_Macro_test_Method__setField(name, value) {}
macro_stuff_Macro_test_Method.prototype._setField = macro_stuff_Macro_test_Method__setField;

// CLASS macro_stuff_Macro

function macro_stuff_Macro() {
    macro_stuff_Macro.super_.call(this, "macro_stuff.Macro");
    (this).name = "macro_stuff.Macro";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new macro_stuff_Macro_test_Method()];
}
exports.macro_stuff_Macro = macro_stuff_Macro;
_qrt.util.inherits(macro_stuff_Macro, quark.reflect.Class);

function macro_stuff_Macro__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
macro_stuff_Macro.prototype.__init_fields__ = macro_stuff_Macro__init_fields__;
macro_stuff_Macro.singleton = new macro_stuff_Macro();
function macro_stuff_Macro_construct(args) {
    return new macro_stuff.Macro();
}
macro_stuff_Macro.prototype.construct = macro_stuff_Macro_construct;

function macro_stuff_Macro__getClass() {
    return null;
}
macro_stuff_Macro.prototype._getClass = macro_stuff_Macro__getClass;

function macro_stuff_Macro__getField(name) {
    return null;
}
macro_stuff_Macro.prototype._getField = macro_stuff_Macro__getField;

function macro_stuff_Macro__setField(name, value) {}
macro_stuff_Macro.prototype._setField = macro_stuff_Macro__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.macro_stuff_Macro_md = macro_stuff_Macro.singleton;
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

var macro_stuff = require('../macro_stuff/index.js');
exports.macro_stuff = macro_stuff;
