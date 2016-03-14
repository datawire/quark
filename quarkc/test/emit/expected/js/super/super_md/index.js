var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS super_A_greet_Method

function super_A_greet_Method() {
    super_A_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.super_A_greet_Method = super_A_greet_Method;
_qrt.util.inherits(super_A_greet_Method, quark.reflect.Method);

function super_A_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
super_A_greet_Method.prototype.__init_fields__ = super_A_greet_Method__init_fields__;

function super_A_greet_Method_invoke(object, args) {
    var obj = object;
    (obj).greet();
    return null;
}
super_A_greet_Method.prototype.invoke = super_A_greet_Method_invoke;

function super_A_greet_Method__getClass() {
    return null;
}
super_A_greet_Method.prototype._getClass = super_A_greet_Method__getClass;

function super_A_greet_Method__getField(name) {
    return null;
}
super_A_greet_Method.prototype._getField = super_A_greet_Method__getField;

function super_A_greet_Method__setField(name, value) {}
super_A_greet_Method.prototype._setField = super_A_greet_Method__setField;

// CLASS super_A

function super_A() {
    super_A.super_.call(this, "super.A");
    (this).name = "super.A";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new super_A_greet_Method()];
}
exports.super_A = super_A;
_qrt.util.inherits(super_A, quark.reflect.Class);

function super_A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
super_A.prototype.__init_fields__ = super_A__init_fields__;
super_A.singleton = new super_A();
function super_A_construct(args) {
    return new super_.A((args)[0]);
}
super_A.prototype.construct = super_A_construct;

function super_A__getClass() {
    return null;
}
super_A.prototype._getClass = super_A__getClass;

function super_A__getField(name) {
    return null;
}
super_A.prototype._getField = super_A__getField;

function super_A__setField(name, value) {}
super_A.prototype._setField = super_A__setField;


// CLASS super_B_greet_Method

function super_B_greet_Method() {
    super_B_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.super_B_greet_Method = super_B_greet_Method;
_qrt.util.inherits(super_B_greet_Method, quark.reflect.Method);

function super_B_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
super_B_greet_Method.prototype.__init_fields__ = super_B_greet_Method__init_fields__;

function super_B_greet_Method_invoke(object, args) {
    var obj = object;
    (obj).greet();
    return null;
}
super_B_greet_Method.prototype.invoke = super_B_greet_Method_invoke;

function super_B_greet_Method__getClass() {
    return null;
}
super_B_greet_Method.prototype._getClass = super_B_greet_Method__getClass;

function super_B_greet_Method__getField(name) {
    return null;
}
super_B_greet_Method.prototype._getField = super_B_greet_Method__getField;

function super_B_greet_Method__setField(name, value) {}
super_B_greet_Method.prototype._setField = super_B_greet_Method__setField;

// CLASS super_B

function super_B() {
    super_B.super_.call(this, "super.B");
    (this).name = "super.B";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new super_B_greet_Method()];
}
exports.super_B = super_B;
_qrt.util.inherits(super_B, quark.reflect.Class);

function super_B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
super_B.prototype.__init_fields__ = super_B__init_fields__;
super_B.singleton = new super_B();
function super_B_construct(args) {
    return new super_.B();
}
super_B.prototype.construct = super_B_construct;

function super_B__getClass() {
    return null;
}
super_B.prototype._getClass = super_B__getClass;

function super_B__getField(name) {
    return null;
}
super_B.prototype._getField = super_B__getField;

function super_B__setField(name, value) {}
super_B.prototype._setField = super_B__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.super_A_md = super_A.singleton;
Root.super_B_md = super_B.singleton;
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

var super_ = require('../super_/index.js');
exports.super_ = super_;
