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

function A_greet() {
    _qrt.print("Hello");
}
A.prototype.greet = A_greet;

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

function B() {
    B.super_.call(this, "Bob");
}
exports.B = B;
_qrt.util.inherits(B, A);

function B__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
B.prototype.__init_fields__ = B__init_fields__;

function B_greet() {
    this.constructor.super_.prototype.greet.call(this);
    _qrt.print(("I'm ") + ((this).name));
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

function main() {
    var b = new B();
    (b).greet();
}
exports.main = main;
