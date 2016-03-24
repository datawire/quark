var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS inheritence_A_foo_Method

function inheritence_A_foo_Method() {
    inheritence_A_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.inheritence_A_foo_Method = inheritence_A_foo_Method;
_qrt.util.inherits(inheritence_A_foo_Method, quark.reflect.Method);

function inheritence_A_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritence_A_foo_Method.prototype.__init_fields__ = inheritence_A_foo_Method__init_fields__;

function inheritence_A_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
inheritence_A_foo_Method.prototype.invoke = inheritence_A_foo_Method_invoke;

function inheritence_A_foo_Method__getClass() {
    return null;
}
inheritence_A_foo_Method.prototype._getClass = inheritence_A_foo_Method__getClass;

function inheritence_A_foo_Method__getField(name) {
    return null;
}
inheritence_A_foo_Method.prototype._getField = inheritence_A_foo_Method__getField;

function inheritence_A_foo_Method__setField(name, value) {}
inheritence_A_foo_Method.prototype._setField = inheritence_A_foo_Method__setField;

// CLASS inheritence_A

function inheritence_A() {
    inheritence_A.super_.call(this, "inheritence.A");
    (this).name = "inheritence.A";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritence_A_foo_Method()];
}
exports.inheritence_A = inheritence_A;
_qrt.util.inherits(inheritence_A, quark.reflect.Class);

function inheritence_A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritence_A.prototype.__init_fields__ = inheritence_A__init_fields__;
inheritence_A.singleton = new inheritence_A();
function inheritence_A_construct(args) {
    return new inheritence.A();
}
inheritence_A.prototype.construct = inheritence_A_construct;

function inheritence_A__getClass() {
    return null;
}
inheritence_A.prototype._getClass = inheritence_A__getClass;

function inheritence_A__getField(name) {
    return null;
}
inheritence_A.prototype._getField = inheritence_A__getField;

function inheritence_A__setField(name, value) {}
inheritence_A.prototype._setField = inheritence_A__setField;


// CLASS inheritence_B_foo_Method

function inheritence_B_foo_Method() {
    inheritence_B_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.inheritence_B_foo_Method = inheritence_B_foo_Method;
_qrt.util.inherits(inheritence_B_foo_Method, quark.reflect.Method);

function inheritence_B_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritence_B_foo_Method.prototype.__init_fields__ = inheritence_B_foo_Method__init_fields__;

function inheritence_B_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
inheritence_B_foo_Method.prototype.invoke = inheritence_B_foo_Method_invoke;

function inheritence_B_foo_Method__getClass() {
    return null;
}
inheritence_B_foo_Method.prototype._getClass = inheritence_B_foo_Method__getClass;

function inheritence_B_foo_Method__getField(name) {
    return null;
}
inheritence_B_foo_Method.prototype._getField = inheritence_B_foo_Method__getField;

function inheritence_B_foo_Method__setField(name, value) {}
inheritence_B_foo_Method.prototype._setField = inheritence_B_foo_Method__setField;

// CLASS inheritence_B

function inheritence_B() {
    inheritence_B.super_.call(this, "inheritence.B");
    (this).name = "inheritence.B";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritence_B_foo_Method()];
}
exports.inheritence_B = inheritence_B;
_qrt.util.inherits(inheritence_B, quark.reflect.Class);

function inheritence_B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritence_B.prototype.__init_fields__ = inheritence_B__init_fields__;
inheritence_B.singleton = new inheritence_B();
function inheritence_B_construct(args) {
    return new inheritence.B();
}
inheritence_B.prototype.construct = inheritence_B_construct;

function inheritence_B__getClass() {
    return null;
}
inheritence_B.prototype._getClass = inheritence_B__getClass;

function inheritence_B__getField(name) {
    return null;
}
inheritence_B.prototype._getField = inheritence_B__getField;

function inheritence_B__setField(name, value) {}
inheritence_B.prototype._setField = inheritence_B__setField;


// CLASS inheritence_C_foo_Method

function inheritence_C_foo_Method() {
    inheritence_C_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.inheritence_C_foo_Method = inheritence_C_foo_Method;
_qrt.util.inherits(inheritence_C_foo_Method, quark.reflect.Method);

function inheritence_C_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritence_C_foo_Method.prototype.__init_fields__ = inheritence_C_foo_Method__init_fields__;

function inheritence_C_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
inheritence_C_foo_Method.prototype.invoke = inheritence_C_foo_Method_invoke;

function inheritence_C_foo_Method__getClass() {
    return null;
}
inheritence_C_foo_Method.prototype._getClass = inheritence_C_foo_Method__getClass;

function inheritence_C_foo_Method__getField(name) {
    return null;
}
inheritence_C_foo_Method.prototype._getField = inheritence_C_foo_Method__getField;

function inheritence_C_foo_Method__setField(name, value) {}
inheritence_C_foo_Method.prototype._setField = inheritence_C_foo_Method__setField;

// CLASS inheritence_C

function inheritence_C() {
    inheritence_C.super_.call(this, "inheritence.C");
    (this).name = "inheritence.C";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritence_C_foo_Method()];
}
exports.inheritence_C = inheritence_C;
_qrt.util.inherits(inheritence_C, quark.reflect.Class);

function inheritence_C__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritence_C.prototype.__init_fields__ = inheritence_C__init_fields__;
inheritence_C.singleton = new inheritence_C();
function inheritence_C_construct(args) {
    return new inheritence.C();
}
inheritence_C.prototype.construct = inheritence_C_construct;

function inheritence_C__getClass() {
    return null;
}
inheritence_C.prototype._getClass = inheritence_C__getClass;

function inheritence_C__getField(name) {
    return null;
}
inheritence_C.prototype._getField = inheritence_C__getField;

function inheritence_C__setField(name, value) {}
inheritence_C.prototype._setField = inheritence_C__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.inheritence_A_md = inheritence_A.singleton;
Root.inheritence_B_md = inheritence_B.singleton;
Root.inheritence_C_md = inheritence_C.singleton;
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

var inheritence = require('../inheritence/index.js');
exports.inheritence = inheritence;
