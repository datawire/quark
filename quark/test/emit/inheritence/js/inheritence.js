var _qrt = require("datawire-quark-core");

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

main();
