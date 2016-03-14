var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS operator_overload_Overload___add___Method

function operator_overload_Overload___add___Method() {
    operator_overload_Overload___add___Method.super_.call(this, "operator_overload.Overload", "__add__", ["operator_overload.Overload"]);
}
exports.operator_overload_Overload___add___Method = operator_overload_Overload___add___Method;
_qrt.util.inherits(operator_overload_Overload___add___Method, quark.reflect.Method);

function operator_overload_Overload___add___Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
operator_overload_Overload___add___Method.prototype.__init_fields__ = operator_overload_Overload___add___Method__init_fields__;

function operator_overload_Overload___add___Method_invoke(object, args) {
    var obj = object;
    return (obj).__add__((args)[0]);
}
operator_overload_Overload___add___Method.prototype.invoke = operator_overload_Overload___add___Method_invoke;

function operator_overload_Overload___add___Method__getClass() {
    return null;
}
operator_overload_Overload___add___Method.prototype._getClass = operator_overload_Overload___add___Method__getClass;

function operator_overload_Overload___add___Method__getField(name) {
    return null;
}
operator_overload_Overload___add___Method.prototype._getField = operator_overload_Overload___add___Method__getField;

function operator_overload_Overload___add___Method__setField(name, value) {}
operator_overload_Overload___add___Method.prototype._setField = operator_overload_Overload___add___Method__setField;

// CLASS operator_overload_Overload___mul___Method

function operator_overload_Overload___mul___Method() {
    operator_overload_Overload___mul___Method.super_.call(this, "operator_overload.Overload", "__mul__", ["operator_overload.Overload"]);
}
exports.operator_overload_Overload___mul___Method = operator_overload_Overload___mul___Method;
_qrt.util.inherits(operator_overload_Overload___mul___Method, quark.reflect.Method);

function operator_overload_Overload___mul___Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
operator_overload_Overload___mul___Method.prototype.__init_fields__ = operator_overload_Overload___mul___Method__init_fields__;

function operator_overload_Overload___mul___Method_invoke(object, args) {
    var obj = object;
    return (obj).__mul__((args)[0]);
}
operator_overload_Overload___mul___Method.prototype.invoke = operator_overload_Overload___mul___Method_invoke;

function operator_overload_Overload___mul___Method__getClass() {
    return null;
}
operator_overload_Overload___mul___Method.prototype._getClass = operator_overload_Overload___mul___Method__getClass;

function operator_overload_Overload___mul___Method__getField(name) {
    return null;
}
operator_overload_Overload___mul___Method.prototype._getField = operator_overload_Overload___mul___Method__getField;

function operator_overload_Overload___mul___Method__setField(name, value) {}
operator_overload_Overload___mul___Method.prototype._setField = operator_overload_Overload___mul___Method__setField;

// CLASS operator_overload_Overload_test_Method

function operator_overload_Overload_test_Method() {
    operator_overload_Overload_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.operator_overload_Overload_test_Method = operator_overload_Overload_test_Method;
_qrt.util.inherits(operator_overload_Overload_test_Method, quark.reflect.Method);

function operator_overload_Overload_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
operator_overload_Overload_test_Method.prototype.__init_fields__ = operator_overload_Overload_test_Method__init_fields__;

function operator_overload_Overload_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
operator_overload_Overload_test_Method.prototype.invoke = operator_overload_Overload_test_Method_invoke;

function operator_overload_Overload_test_Method__getClass() {
    return null;
}
operator_overload_Overload_test_Method.prototype._getClass = operator_overload_Overload_test_Method__getClass;

function operator_overload_Overload_test_Method__getField(name) {
    return null;
}
operator_overload_Overload_test_Method.prototype._getField = operator_overload_Overload_test_Method__getField;

function operator_overload_Overload_test_Method__setField(name, value) {}
operator_overload_Overload_test_Method.prototype._setField = operator_overload_Overload_test_Method__setField;

// CLASS operator_overload_Overload

function operator_overload_Overload() {
    operator_overload_Overload.super_.call(this, "operator_overload.Overload");
    (this).name = "operator_overload.Overload";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new operator_overload_Overload___add___Method(), new operator_overload_Overload___mul___Method(), new operator_overload_Overload_test_Method()];
}
exports.operator_overload_Overload = operator_overload_Overload;
_qrt.util.inherits(operator_overload_Overload, quark.reflect.Class);

function operator_overload_Overload__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
operator_overload_Overload.prototype.__init_fields__ = operator_overload_Overload__init_fields__;
operator_overload_Overload.singleton = new operator_overload_Overload();
function operator_overload_Overload_construct(args) {
    return new operator_overload.Overload((args)[0]);
}
operator_overload_Overload.prototype.construct = operator_overload_Overload_construct;

function operator_overload_Overload__getClass() {
    return null;
}
operator_overload_Overload.prototype._getClass = operator_overload_Overload__getClass;

function operator_overload_Overload__getField(name) {
    return null;
}
operator_overload_Overload.prototype._getField = operator_overload_Overload__getField;

function operator_overload_Overload__setField(name, value) {}
operator_overload_Overload.prototype._setField = operator_overload_Overload__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.operator_overload_Overload_md = operator_overload_Overload.singleton;
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

var operator_overload = require('../operator_overload/index.js');
exports.operator_overload = operator_overload;
