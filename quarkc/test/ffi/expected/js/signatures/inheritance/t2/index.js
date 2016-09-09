var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("inheritance/t2");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS A
function A() {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {}
A.prototype.__init_fields__ = A__init_fields__;
_qrt.lazyStatic(function(){A.inheritance_t2_A_ref = null;});
function A__getClass() {
    return "inheritance.t2.A";
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
_qrt.lazyStatic(function(){B.inheritance_t2_B_ref = null;});
function B__getClass() {
    return "inheritance.t2.B";
}
B.prototype._getClass = B__getClass;

function B__getField(name) {
    return null;
}
B.prototype._getField = B__getField;

function B__setField(name, value) {}
B.prototype._setField = B__setField;

// CLASS X
function X() {
    this.__init_fields__();
}
exports.X = X;

function X__init_fields__() {}
X.prototype.__init_fields__ = X__init_fields__;

function X__getClass() {
    return "inheritance.t2.X<quark.Object>";
}
X.prototype._getClass = X__getClass;

function X__getField(name) {
    return null;
}
X.prototype._getField = X__getField;

function X__setField(name, value) {}
X.prototype._setField = X__setField;

// CLASS Y

function Y() {
    Y.super_.call(this);
}
exports.Y = Y;
_qrt.util.inherits(Y, X);

function Y__init_fields__() {
    X.prototype.__init_fields__.call(this);
}
Y.prototype.__init_fields__ = Y__init_fields__;
_qrt.lazyStatic(function(){Y.inheritance_t2_X_quark_int__ref = null;});
_qrt.lazyStatic(function(){Y.inheritance_t2_Y_ref = null;});
function Y__getClass() {
    return "inheritance.t2.Y";
}
Y.prototype._getClass = Y__getClass;

function Y__getField(name) {
    return null;
}
Y.prototype._getField = Y__getField;

function Y__setField(name, value) {}
Y.prototype._setField = Y__setField;

var quark_ffi_signatures_md; _qrt.lazyImport('../../quark_ffi_signatures_md/index.js', function(){
    quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
    exports.quark_ffi_signatures_md = quark_ffi_signatures_md;
});



_qrt.pumpImports("inheritance/t2");
