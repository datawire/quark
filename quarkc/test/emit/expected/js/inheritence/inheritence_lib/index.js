var _qrt = require("builtin/quark_runtime.js");

// CLASS A
function A() {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {}
A.prototype.__init_fields__ = A__init_fields__;

function A_foo() {
    _qrt.print("A");
}
A.prototype.foo = A_foo;

function A__getClass() {
    return "A";
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

function B_foo() {
    _qrt.print("B");
}
B.prototype.foo = B_foo;

function B__getClass() {
    return "B";
}
B.prototype._getClass = B__getClass;

function B__getField(name) {
    return null;
}
B.prototype._getField = B__getField;

function B__setField(name, value) {}
B.prototype._setField = B__setField;

// CLASS C

function C() {
    C.super_.call(this);
}
exports.C = C;
_qrt.util.inherits(C, A);

function C__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
C.prototype.__init_fields__ = C__init_fields__;

function C__getClass() {
    return "C";
}
C.prototype._getClass = C__getClass;

function C__getField(name) {
    return null;
}
C.prototype._getField = C__getField;

function C__setField(name, value) {}
C.prototype._setField = C__setField;

function main() {
    var a = new A();
    (a).foo();
    var b = new B();
    (b).foo();
    var c = new C();
    (c).foo();
    _qrt.print("--");
    a = b;
    (a).foo();
    a = c;
    (a).foo();
}
exports.main = main;
