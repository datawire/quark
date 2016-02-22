var _qrt = require("builtin/quark_runtime.js");

// CLASS A

function A(name) {
    this.__init_fields__();
    (this).name = name;
}
exports.A = A;

function A__init_fields__() {
    this.name = null;
}
A.prototype.__init_fields__ = A__init_fields__;

function A__getClass() {
    return "A";
}
A.prototype._getClass = A__getClass;

function A__getField(name) {
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
A.prototype._getField = A__getField;

function A__setField(name, value) {
    if ((name) === ("name")) {
        (this).name = value;
    }
}
A.prototype._setField = A__setField;

// CLASS B

function B(name) {
    B.super_.call(this, name);
}
exports.B = B;
_qrt.util.inherits(B, A);

function B__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
B.prototype.__init_fields__ = B__init_fields__;

function B_greet() {
    _qrt.print(("Hello, my name is ") + ((this).name));
}
B.prototype.greet = B_greet;

function B__getClass() {
    return "B";
}
B.prototype._getClass = B__getClass;

function B__getField(name) {
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
B.prototype._getField = B__getField;

function B__setField(name, value) {
    if ((name) === ("name")) {
        (this).name = value;
    }
}
B.prototype._setField = B__setField;

// CLASS C

function C(name) {
    C.super_.call(this, ("C") + (name));
}
exports.C = C;
_qrt.util.inherits(C, A);

function C__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
C.prototype.__init_fields__ = C__init_fields__;

function C_greet() {
    _qrt.print(("Greetings, my name is ") + ((this).name));
}
C.prototype.greet = C_greet;

function C__getClass() {
    return "C";
}
C.prototype._getClass = C__getClass;

function C__getField(name) {
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
C.prototype._getField = C__getField;

function C__setField(name, value) {
    if ((name) === ("name")) {
        (this).name = value;
    }
}
C.prototype._setField = C__setField;

// CLASS X
function X() {
    this.__init_fields__();
}
exports.X = X;

function X__init_fields__() {}
X.prototype.__init_fields__ = X__init_fields__;

function X__getClass() {
    return "X";
}
X.prototype._getClass = X__getClass;

function X__getField(name) {
    return null;
}
X.prototype._getField = X__getField;

function X__setField(name, value) {}
X.prototype._setField = X__setField;

// CLASS Y

function Y(name) {
    Y.super_.call(this);
    (this).name = name;
}
exports.Y = Y;
_qrt.util.inherits(Y, X);

function Y__init_fields__() {
    X.prototype.__init_fields__.call(this);
    this.name = null;
}
Y.prototype.__init_fields__ = Y__init_fields__;

function Y_test() {
    _qrt.print((this).name);
}
Y.prototype.test = Y_test;

function Y__getClass() {
    return "Y";
}
Y.prototype._getClass = Y__getClass;

function Y__getField(name) {
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
Y.prototype._getField = Y__getField;

function Y__setField(name, value) {
    if ((name) === ("name")) {
        (this).name = value;
    }
}
Y.prototype._setField = Y__setField;

function main() {
    var b = new B("Bob");
    (b).greet();
    var c = new C("arole");
    (c).greet();
    var y = new Y("asdf");
    (y).test();
}
exports.main = main;
