var _Q_util = require("util");
function _Q_toString(value) {
    if (value === null) {
        return "null";
    }
    if (Array.isArray(value)) {
        return "[" + value.map(_Q_toString).join(", ") + "]";
    }
    return value.toString();
}

//

// CLASS A
function A() {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {}
A.prototype.__init_fields__ = A__init_fields__;

function A_foo() {
    console.log(_Q_toString("A"));
}
A.prototype.foo = A_foo;

// CLASS B
function B() {
    this.__init_fields__();
}
exports.B = B;
_Q_util.inherits(B, A);

function B__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
B.prototype.__init_fields__ = B__init_fields__;

function B_foo() {
    console.log(_Q_toString("B"));
}
B.prototype.foo = B_foo;

// CLASS C
function C() {
    this.__init_fields__();
}
exports.C = C;
_Q_util.inherits(C, A);

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
    console.log(_Q_toString("--"));
    a = b;
    (a).foo();
    a = c;
    (a).foo();
}
exports.main = main;

main();
