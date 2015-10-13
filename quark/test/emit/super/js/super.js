var _qrt = require("quark_runtime.js");

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

function main() {
    var b = new B();
    (b).greet();
}
exports.main = main;

main();
