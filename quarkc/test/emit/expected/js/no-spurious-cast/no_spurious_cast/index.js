var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var no_spurious_cast_md = require('../no_spurious_cast_md/index.js');
exports.no_spurious_cast_md = no_spurious_cast_md;



// CLASS A
function A() {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {}
A.prototype.__init_fields__ = A__init_fields__;
A.no_spurious_cast_A_ref = no_spurious_cast_md.Root.no_spurious_cast_A_md;
function A__getClass() {
    return "no_spurious_cast.A";
}
A.prototype._getClass = A__getClass;

function A__getField(name) {
    return null;
}
A.prototype._getField = A__getField;

function A__setField(name, value) {}
A.prototype._setField = A__setField;

// CLASS B

function B() {
    B.super_.call(this);
}
exports.B = B;
_qrt.util.inherits(B, A);

function B__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
B.prototype.__init_fields__ = B__init_fields__;
B.no_spurious_cast_B_ref = no_spurious_cast_md.Root.no_spurious_cast_B_md;
function B__getClass() {
    return "no_spurious_cast.B";
}
B.prototype._getClass = B__getClass;

function B__getField(name) {
    return null;
}
B.prototype._getField = B__getField;

function B__setField(name, value) {}
B.prototype._setField = B__setField;

// CLASS X
function X() {
    this.__init_fields__();
}
exports.X = X;

function X__init_fields__() {}
X.prototype.__init_fields__ = X__init_fields__;

function X__getClass() {
    return "no_spurious_cast.X<builtin.Object>";
}
X.prototype._getClass = X__getClass;

function X__getField(name) {
    return null;
}
X.prototype._getField = X__getField;

function X__setField(name, value) {}
X.prototype._setField = X__setField;

// CLASS Y

function Y() {
    Y.super_.call(this);
}
exports.Y = Y;
_qrt.util.inherits(Y, X);

function Y__init_fields__() {
    X.prototype.__init_fields__.call(this);
}
Y.prototype.__init_fields__ = Y__init_fields__;
Y.no_spurious_cast_X_builtin_int__ref = no_spurious_cast_md.Root.no_spurious_cast_X_builtin_int__md;
Y.no_spurious_cast_Y_ref = no_spurious_cast_md.Root.no_spurious_cast_Y_md;
function Y__getClass() {
    return "no_spurious_cast.Y";
}
Y.prototype._getClass = Y__getClass;

function Y__getField(name) {
    return null;
}
Y.prototype._getField = Y__getField;

function Y__setField(name, value) {}
Y.prototype._setField = Y__setField;

function main() {
    var a = new B();
    var x = new Y();
}
exports.main = main;
