var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS macro_pie_Pie_test_Method

function macro_pie_Pie_test_Method() {
    macro_pie_Pie_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.macro_pie_Pie_test_Method = macro_pie_Pie_test_Method;
_qrt.util.inherits(macro_pie_Pie_test_Method, quark.reflect.Method);

function macro_pie_Pie_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
macro_pie_Pie_test_Method.prototype.__init_fields__ = macro_pie_Pie_test_Method__init_fields__;

function macro_pie_Pie_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
macro_pie_Pie_test_Method.prototype.invoke = macro_pie_Pie_test_Method_invoke;

function macro_pie_Pie_test_Method__getClass() {
    return null;
}
macro_pie_Pie_test_Method.prototype._getClass = macro_pie_Pie_test_Method__getClass;

function macro_pie_Pie_test_Method__getField(name) {
    return null;
}
macro_pie_Pie_test_Method.prototype._getField = macro_pie_Pie_test_Method__getField;

function macro_pie_Pie_test_Method__setField(name, value) {}
macro_pie_Pie_test_Method.prototype._setField = macro_pie_Pie_test_Method__setField;

// CLASS macro_pie_Pie

function macro_pie_Pie() {
    macro_pie_Pie.super_.call(this, "macro_pie.Pie");
    (this).name = "macro_pie.Pie";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new macro_pie_Pie_test_Method()];
}
exports.macro_pie_Pie = macro_pie_Pie;
_qrt.util.inherits(macro_pie_Pie, quark.reflect.Class);

function macro_pie_Pie__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
macro_pie_Pie.prototype.__init_fields__ = macro_pie_Pie__init_fields__;
macro_pie_Pie.singleton = new macro_pie_Pie();
function macro_pie_Pie_construct(args) {
    return new macro_pie.Pie();
}
macro_pie_Pie.prototype.construct = macro_pie_Pie_construct;

function macro_pie_Pie__getClass() {
    return null;
}
macro_pie_Pie.prototype._getClass = macro_pie_Pie__getClass;

function macro_pie_Pie__getField(name) {
    return null;
}
macro_pie_Pie.prototype._getField = macro_pie_Pie__getField;

function macro_pie_Pie__setField(name, value) {}
macro_pie_Pie.prototype._setField = macro_pie_Pie__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.macro_pie_Pie_md = macro_pie_Pie.singleton;
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

var macro_pie = require('../macro_pie/index.js');
exports.macro_pie = macro_pie;
