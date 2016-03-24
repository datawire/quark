var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var defaulted_methods_md = require('../defaulted_methods_md/index.js');
exports.defaulted_methods_md = defaulted_methods_md;



// CLASS A
function A() {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {}
A.prototype.__init_fields__ = A__init_fields__;
A.pkg_A_ref = defaulted_methods_md.Root.pkg_A_md;
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
B.pkg_B_ref = defaulted_methods_md.Root.pkg_B_md;
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
C.pkg_C_ref = defaulted_methods_md.Root.pkg_C_md;
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
T1.pkg_T1_ref = defaulted_methods_md.Root.pkg_T1_md;
function T1_foo() {
    _qrt.print("T1 foo");
}
T1.prototype.foo = T1_foo;

function T1__getClass() {
    return "pkg.T1";
}
T1.prototype._getClass = T1__getClass;

function T1__getField(name) {
    return null;
}
T1.prototype._getField = T1__getField;

function T1__setField(name, value) {}
T1.prototype._setField = T1__setField;

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
T2.pkg_T2_ref = defaulted_methods_md.Root.pkg_T2_md;
function T2_foo() {
    _qrt.print("T2 foo");
}
T2.prototype.foo = T2_foo;

function T2__getClass() {
    return "pkg.T2";
}
T2.prototype._getClass = T2__getClass;

function T2__getField(name) {
    return null;
}
T2.prototype._getField = T2__getField;

function T2__setField(name, value) {}
T2.prototype._setField = T2__setField;

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
T3.pkg_T3_ref = defaulted_methods_md.Root.pkg_T3_md;
function T3_foo() {
    _qrt.print("T3 foo");
}
T3.prototype.foo = T3_foo;

function T3__getClass() {
    return "pkg.T3";
}
T3.prototype._getClass = T3__getClass;

function T3__getField(name) {
    return null;
}
T3.prototype._getField = T3__getField;

function T3__setField(name, value) {}
T3.prototype._setField = T3__setField;

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
T4.pkg_T4_ref = defaulted_methods_md.Root.pkg_T4_md;
function T4__getClass() {
    return "pkg.T4";
}
T4.prototype._getClass = T4__getClass;

function T4__getField(name) {
    return null;
}
T4.prototype._getField = T4__getField;

function T4__setField(name, value) {}
T4.prototype._setField = T4__setField;

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
T5.pkg_T5_ref = defaulted_methods_md.Root.pkg_T5_md;
function T5_foo() {
    _qrt.print("T5 foo");
}
T5.prototype.foo = T5_foo;

function T5__getClass() {
    return "pkg.T5";
}
T5.prototype._getClass = T5__getClass;

function T5__getField(name) {
    return null;
}
T5.prototype._getField = T5__getField;

function T5__setField(name, value) {}
T5.prototype._setField = T5__setField;

function T5_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T5.prototype.bar = T5_bar;
