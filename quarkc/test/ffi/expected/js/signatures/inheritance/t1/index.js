var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("inheritance/t1");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS A
function A() {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {}
A.prototype.__init_fields__ = A__init_fields__;
_qrt.lazyStatic(function(){A.inheritance_t1_A_ref = null;});
function A_foo() {}
A.prototype.foo = A_foo;

function A__getClass() {
    return "inheritance.t1.A";
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
_qrt.lazyStatic(function(){B.inheritance_t1_B_ref = null;});
function B_foo() {}
B.prototype.foo = B_foo;

function B__getClass() {
    return "inheritance.t1.B";
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
_qrt.lazyStatic(function(){C.inheritance_t1_C_ref = null;});
function C__getClass() {
    return "inheritance.t1.C";
}
C.prototype._getClass = C__getClass;

function C__getField(name) {
    return null;
}
C.prototype._getField = C__getField;

function C__setField(name, value) {}
C.prototype._setField = C__setField;

var quark_ffi_signatures_md; _qrt.lazyImport('../../quark_ffi_signatures_md/index.js', function(){
    quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
    exports.quark_ffi_signatures_md = quark_ffi_signatures_md;
});



_qrt.pumpImports("inheritance/t1");
