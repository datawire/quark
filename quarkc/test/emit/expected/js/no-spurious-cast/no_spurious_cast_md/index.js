var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS no_spurious_cast_A

function no_spurious_cast_A() {
    no_spurious_cast_A.super_.call(this, "no_spurious_cast.A");
    (this).name = "no_spurious_cast.A";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.no_spurious_cast_A = no_spurious_cast_A;
_qrt.util.inherits(no_spurious_cast_A, quark.reflect.Class);

function no_spurious_cast_A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
no_spurious_cast_A.prototype.__init_fields__ = no_spurious_cast_A__init_fields__;
no_spurious_cast_A.singleton = new no_spurious_cast_A();
function no_spurious_cast_A_construct(args) {
    return new no_spurious_cast.A();
}
no_spurious_cast_A.prototype.construct = no_spurious_cast_A_construct;

function no_spurious_cast_A__getClass() {
    return null;
}
no_spurious_cast_A.prototype._getClass = no_spurious_cast_A__getClass;

function no_spurious_cast_A__getField(name) {
    return null;
}
no_spurious_cast_A.prototype._getField = no_spurious_cast_A__getField;

function no_spurious_cast_A__setField(name, value) {}
no_spurious_cast_A.prototype._setField = no_spurious_cast_A__setField;


// CLASS no_spurious_cast_B

function no_spurious_cast_B() {
    no_spurious_cast_B.super_.call(this, "no_spurious_cast.B");
    (this).name = "no_spurious_cast.B";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.no_spurious_cast_B = no_spurious_cast_B;
_qrt.util.inherits(no_spurious_cast_B, quark.reflect.Class);

function no_spurious_cast_B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
no_spurious_cast_B.prototype.__init_fields__ = no_spurious_cast_B__init_fields__;
no_spurious_cast_B.singleton = new no_spurious_cast_B();
function no_spurious_cast_B_construct(args) {
    return new no_spurious_cast.B();
}
no_spurious_cast_B.prototype.construct = no_spurious_cast_B_construct;

function no_spurious_cast_B__getClass() {
    return null;
}
no_spurious_cast_B.prototype._getClass = no_spurious_cast_B__getClass;

function no_spurious_cast_B__getField(name) {
    return null;
}
no_spurious_cast_B.prototype._getField = no_spurious_cast_B__getField;

function no_spurious_cast_B__setField(name, value) {}
no_spurious_cast_B.prototype._setField = no_spurious_cast_B__setField;


// CLASS no_spurious_cast_X_quark_int_

function no_spurious_cast_X_quark_int_() {
    no_spurious_cast_X_quark_int_.super_.call(this, "no_spurious_cast.X<quark.int>");
    (this).name = "no_spurious_cast.X";
    (this).parameters = ["quark.int"];
    (this).fields = [];
    (this).methods = [];
}
exports.no_spurious_cast_X_quark_int_ = no_spurious_cast_X_quark_int_;
_qrt.util.inherits(no_spurious_cast_X_quark_int_, quark.reflect.Class);

function no_spurious_cast_X_quark_int___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
no_spurious_cast_X_quark_int_.prototype.__init_fields__ = no_spurious_cast_X_quark_int___init_fields__;
no_spurious_cast_X_quark_int_.singleton = new no_spurious_cast_X_quark_int_();
function no_spurious_cast_X_quark_int__construct(args) {
    return new no_spurious_cast.X();
}
no_spurious_cast_X_quark_int_.prototype.construct = no_spurious_cast_X_quark_int__construct;

function no_spurious_cast_X_quark_int___getClass() {
    return null;
}
no_spurious_cast_X_quark_int_.prototype._getClass = no_spurious_cast_X_quark_int___getClass;

function no_spurious_cast_X_quark_int___getField(name) {
    return null;
}
no_spurious_cast_X_quark_int_.prototype._getField = no_spurious_cast_X_quark_int___getField;

function no_spurious_cast_X_quark_int___setField(name, value) {}
no_spurious_cast_X_quark_int_.prototype._setField = no_spurious_cast_X_quark_int___setField;


// CLASS no_spurious_cast_Y

function no_spurious_cast_Y() {
    no_spurious_cast_Y.super_.call(this, "no_spurious_cast.Y");
    (this).name = "no_spurious_cast.Y";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.no_spurious_cast_Y = no_spurious_cast_Y;
_qrt.util.inherits(no_spurious_cast_Y, quark.reflect.Class);

function no_spurious_cast_Y__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
no_spurious_cast_Y.prototype.__init_fields__ = no_spurious_cast_Y__init_fields__;
no_spurious_cast_Y.singleton = new no_spurious_cast_Y();
function no_spurious_cast_Y_construct(args) {
    return new no_spurious_cast.Y();
}
no_spurious_cast_Y.prototype.construct = no_spurious_cast_Y_construct;

function no_spurious_cast_Y__getClass() {
    return null;
}
no_spurious_cast_Y.prototype._getClass = no_spurious_cast_Y__getClass;

function no_spurious_cast_Y__getField(name) {
    return null;
}
no_spurious_cast_Y.prototype._getField = no_spurious_cast_Y__getField;

function no_spurious_cast_Y__setField(name, value) {}
no_spurious_cast_Y.prototype._setField = no_spurious_cast_Y__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.no_spurious_cast_A_md = no_spurious_cast_A.singleton;
Root.no_spurious_cast_B_md = no_spurious_cast_B.singleton;
Root.no_spurious_cast_X_quark_int__md = no_spurious_cast_X_quark_int_.singleton;
Root.no_spurious_cast_Y_md = no_spurious_cast_Y.singleton;
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

var no_spurious_cast = require('../no_spurious_cast/index.js');
exports.no_spurious_cast = no_spurious_cast;
