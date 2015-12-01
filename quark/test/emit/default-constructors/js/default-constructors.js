var _qrt = require("datawire-quark-core");

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

// CLASS X
function X() {
    this.__init_fields__();
}
exports.X = X;

function X__init_fields__() {}
X.prototype.__init_fields__ = X__init_fields__;


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

function main() {
    var b = new B("Bob");
    (b).greet();
    var c = new C("arole");
    (c).greet();
    var y = new Y("asdf");
    (y).test();
}
exports.main = main;

main();
