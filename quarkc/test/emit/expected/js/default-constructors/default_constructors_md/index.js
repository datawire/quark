var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS default_constructors_A

function default_constructors_A() {
    default_constructors_A.super_.call(this, "default_constructors.A");
    (this).name = "default_constructors.A";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [];
}
exports.default_constructors_A = default_constructors_A;
_qrt.util.inherits(default_constructors_A, quark.reflect.Class);

function default_constructors_A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
default_constructors_A.prototype.__init_fields__ = default_constructors_A__init_fields__;
default_constructors_A.singleton = new default_constructors_A();
function default_constructors_A_construct(args) {
    return new default_constructors.A((args)[0]);
}
default_constructors_A.prototype.construct = default_constructors_A_construct;

function default_constructors_A__getClass() {
    return null;
}
default_constructors_A.prototype._getClass = default_constructors_A__getClass;

function default_constructors_A__getField(name) {
    return null;
}
default_constructors_A.prototype._getField = default_constructors_A__getField;

function default_constructors_A__setField(name, value) {}
default_constructors_A.prototype._setField = default_constructors_A__setField;


// CLASS default_constructors_B_greet_Method

function default_constructors_B_greet_Method() {
    default_constructors_B_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.default_constructors_B_greet_Method = default_constructors_B_greet_Method;
_qrt.util.inherits(default_constructors_B_greet_Method, quark.reflect.Method);

function default_constructors_B_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
default_constructors_B_greet_Method.prototype.__init_fields__ = default_constructors_B_greet_Method__init_fields__;

function default_constructors_B_greet_Method_invoke(object, args) {
    var obj = object;
    (obj).greet();
    return null;
}
default_constructors_B_greet_Method.prototype.invoke = default_constructors_B_greet_Method_invoke;

function default_constructors_B_greet_Method__getClass() {
    return null;
}
default_constructors_B_greet_Method.prototype._getClass = default_constructors_B_greet_Method__getClass;

function default_constructors_B_greet_Method__getField(name) {
    return null;
}
default_constructors_B_greet_Method.prototype._getField = default_constructors_B_greet_Method__getField;

function default_constructors_B_greet_Method__setField(name, value) {}
default_constructors_B_greet_Method.prototype._setField = default_constructors_B_greet_Method__setField;

// CLASS default_constructors_B

function default_constructors_B() {
    default_constructors_B.super_.call(this, "default_constructors.B");
    (this).name = "default_constructors.B";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new default_constructors_B_greet_Method()];
}
exports.default_constructors_B = default_constructors_B;
_qrt.util.inherits(default_constructors_B, quark.reflect.Class);

function default_constructors_B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
default_constructors_B.prototype.__init_fields__ = default_constructors_B__init_fields__;
default_constructors_B.singleton = new default_constructors_B();
function default_constructors_B_construct(args) {
    return new default_constructors.B((args)[0]);
}
default_constructors_B.prototype.construct = default_constructors_B_construct;

function default_constructors_B__getClass() {
    return null;
}
default_constructors_B.prototype._getClass = default_constructors_B__getClass;

function default_constructors_B__getField(name) {
    return null;
}
default_constructors_B.prototype._getField = default_constructors_B__getField;

function default_constructors_B__setField(name, value) {}
default_constructors_B.prototype._setField = default_constructors_B__setField;


// CLASS default_constructors_C_greet_Method

function default_constructors_C_greet_Method() {
    default_constructors_C_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.default_constructors_C_greet_Method = default_constructors_C_greet_Method;
_qrt.util.inherits(default_constructors_C_greet_Method, quark.reflect.Method);

function default_constructors_C_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
default_constructors_C_greet_Method.prototype.__init_fields__ = default_constructors_C_greet_Method__init_fields__;

function default_constructors_C_greet_Method_invoke(object, args) {
    var obj = object;
    (obj).greet();
    return null;
}
default_constructors_C_greet_Method.prototype.invoke = default_constructors_C_greet_Method_invoke;

function default_constructors_C_greet_Method__getClass() {
    return null;
}
default_constructors_C_greet_Method.prototype._getClass = default_constructors_C_greet_Method__getClass;

function default_constructors_C_greet_Method__getField(name) {
    return null;
}
default_constructors_C_greet_Method.prototype._getField = default_constructors_C_greet_Method__getField;

function default_constructors_C_greet_Method__setField(name, value) {}
default_constructors_C_greet_Method.prototype._setField = default_constructors_C_greet_Method__setField;

// CLASS default_constructors_C

function default_constructors_C() {
    default_constructors_C.super_.call(this, "default_constructors.C");
    (this).name = "default_constructors.C";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new default_constructors_C_greet_Method()];
}
exports.default_constructors_C = default_constructors_C;
_qrt.util.inherits(default_constructors_C, quark.reflect.Class);

function default_constructors_C__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
default_constructors_C.prototype.__init_fields__ = default_constructors_C__init_fields__;
default_constructors_C.singleton = new default_constructors_C();
function default_constructors_C_construct(args) {
    return new default_constructors.C((args)[0]);
}
default_constructors_C.prototype.construct = default_constructors_C_construct;

function default_constructors_C__getClass() {
    return null;
}
default_constructors_C.prototype._getClass = default_constructors_C__getClass;

function default_constructors_C__getField(name) {
    return null;
}
default_constructors_C.prototype._getField = default_constructors_C__getField;

function default_constructors_C__setField(name, value) {}
default_constructors_C.prototype._setField = default_constructors_C__setField;


// CLASS default_constructors_X

function default_constructors_X() {
    default_constructors_X.super_.call(this, "default_constructors.X");
    (this).name = "default_constructors.X";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.default_constructors_X = default_constructors_X;
_qrt.util.inherits(default_constructors_X, quark.reflect.Class);

function default_constructors_X__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
default_constructors_X.prototype.__init_fields__ = default_constructors_X__init_fields__;
default_constructors_X.singleton = new default_constructors_X();
function default_constructors_X_construct(args) {
    return new default_constructors.X();
}
default_constructors_X.prototype.construct = default_constructors_X_construct;

function default_constructors_X__getClass() {
    return null;
}
default_constructors_X.prototype._getClass = default_constructors_X__getClass;

function default_constructors_X__getField(name) {
    return null;
}
default_constructors_X.prototype._getField = default_constructors_X__getField;

function default_constructors_X__setField(name, value) {}
default_constructors_X.prototype._setField = default_constructors_X__setField;


// CLASS default_constructors_Y_test_Method

function default_constructors_Y_test_Method() {
    default_constructors_Y_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.default_constructors_Y_test_Method = default_constructors_Y_test_Method;
_qrt.util.inherits(default_constructors_Y_test_Method, quark.reflect.Method);

function default_constructors_Y_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
default_constructors_Y_test_Method.prototype.__init_fields__ = default_constructors_Y_test_Method__init_fields__;

function default_constructors_Y_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
default_constructors_Y_test_Method.prototype.invoke = default_constructors_Y_test_Method_invoke;

function default_constructors_Y_test_Method__getClass() {
    return null;
}
default_constructors_Y_test_Method.prototype._getClass = default_constructors_Y_test_Method__getClass;

function default_constructors_Y_test_Method__getField(name) {
    return null;
}
default_constructors_Y_test_Method.prototype._getField = default_constructors_Y_test_Method__getField;

function default_constructors_Y_test_Method__setField(name, value) {}
default_constructors_Y_test_Method.prototype._setField = default_constructors_Y_test_Method__setField;

// CLASS default_constructors_Y

function default_constructors_Y() {
    default_constructors_Y.super_.call(this, "default_constructors.Y");
    (this).name = "default_constructors.Y";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new default_constructors_Y_test_Method()];
}
exports.default_constructors_Y = default_constructors_Y;
_qrt.util.inherits(default_constructors_Y, quark.reflect.Class);

function default_constructors_Y__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
default_constructors_Y.prototype.__init_fields__ = default_constructors_Y__init_fields__;
default_constructors_Y.singleton = new default_constructors_Y();
function default_constructors_Y_construct(args) {
    return new default_constructors.Y((args)[0]);
}
default_constructors_Y.prototype.construct = default_constructors_Y_construct;

function default_constructors_Y__getClass() {
    return null;
}
default_constructors_Y.prototype._getClass = default_constructors_Y__getClass;

function default_constructors_Y__getField(name) {
    return null;
}
default_constructors_Y.prototype._getField = default_constructors_Y__getField;

function default_constructors_Y__setField(name, value) {}
default_constructors_Y.prototype._setField = default_constructors_Y__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.default_constructors_A_md = default_constructors_A.singleton;
Root.default_constructors_B_md = default_constructors_B.singleton;
Root.default_constructors_C_md = default_constructors_C.singleton;
Root.default_constructors_X_md = default_constructors_X.singleton;
Root.default_constructors_Y_md = default_constructors_Y.singleton;
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

var default_constructors = require('../default_constructors/index.js');
exports.default_constructors = default_constructors;
