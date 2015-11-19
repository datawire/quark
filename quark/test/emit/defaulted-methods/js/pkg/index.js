var _qrt = require("datawire-quark-core");

// CLASS A
function A() {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {}
A.prototype.__init_fields__ = A__init_fields__;

function A_foo() { /* interface */ }
A.prototype.foo = A_foo;

function A_bar() {
    _qrt.print("A bar");
    (this).foo();
}
A.prototype.bar = A_bar;

// CLASS B
function B() {
    this.__init_fields__();
}
exports.B = B;

function B__init_fields__() {}
B.prototype.__init_fields__ = B__init_fields__;

function B_bar() {
    _qrt.print("B bar");
}
B.prototype.bar = B_bar;

// CLASS C
function C() {
    this.__init_fields__();
}
exports.C = C;

function C__init_fields__() {}
C.prototype.__init_fields__ = C__init_fields__;

function C_foo() {
    _qrt.print("C mixin for foo");
}
C.prototype.foo = C_foo;

// CLASS T1
function T1() {
    this.__init_fields__();
}
exports.T1 = T1;

function T1__init_fields__() {}
T1.prototype.__init_fields__ = T1__init_fields__;

function T1_foo() {
    _qrt.print("T1 foo");
}
T1.prototype.foo = T1_foo;

function T1_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T1.prototype.bar = T1_bar;

// CLASS T2
function T2() {
    this.__init_fields__();
}
exports.T2 = T2;

function T2__init_fields__() {}
T2.prototype.__init_fields__ = T2__init_fields__;

function T2_foo() {
    _qrt.print("T2 foo");
}
T2.prototype.foo = T2_foo;

function T2_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T2.prototype.bar = T2_bar;

// CLASS T3
function T3() {
    this.__init_fields__();
}
exports.T3 = T3;

function T3__init_fields__() {}
T3.prototype.__init_fields__ = T3__init_fields__;

function T3_foo() {
    _qrt.print("T3 foo");
}
T3.prototype.foo = T3_foo;

function T3_bar() {
    _qrt.print("B bar");
}
T3.prototype.bar = T3_bar;

// CLASS T4
function T4() {
    this.__init_fields__();
}
exports.T4 = T4;

function T4__init_fields__() {}
T4.prototype.__init_fields__ = T4__init_fields__;

function T4_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T4.prototype.bar = T4_bar;

function T4_foo() {
    _qrt.print("C mixin for foo");
}
T4.prototype.foo = T4_foo;

// CLASS T5
function T5() {
    this.__init_fields__();
}
exports.T5 = T5;

function T5__init_fields__() {}
T5.prototype.__init_fields__ = T5__init_fields__;

function T5_foo() {
    _qrt.print("T5 foo");
}
T5.prototype.foo = T5_foo;

function T5_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T5.prototype.bar = T5_bar;
