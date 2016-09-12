var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("inheritance/super_");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS A

function A(name) {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {
    this.name = null;
}
A.prototype.__init_fields__ = A__init_fields__;
_qrt.lazyStatic(function(){A.inheritance_super__A_ref = null;});
function A_greet() {}
A.prototype.greet = A_greet;

function A__getClass() {
    return "inheritance.super_.A";
}
A.prototype._getClass = A__getClass;

function A__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
A.prototype._getField = A__getField;

function A__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = _qrt.cast(value, function () { return String; });
    }
}
A.prototype._setField = A__setField;

// CLASS B

function B() {
    B.super_.call(this, null);
}
exports.B = B;
_qrt.util.inherits(B, A);

function B__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
B.prototype.__init_fields__ = B__init_fields__;
_qrt.lazyStatic(function(){B.inheritance_super__B_ref = null;});
function B_greet() {}
B.prototype.greet = B_greet;

function B__getClass() {
    return "inheritance.super_.B";
}
B.prototype._getClass = B__getClass;

function B__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
B.prototype._getField = B__getField;

function B__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = _qrt.cast(value, function () { return String; });
    }
}
B.prototype._setField = B__setField;

var quark_ffi_signatures_md; _qrt.lazyImport('../../quark_ffi_signatures_md/index.js', function(){
    quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
    exports.quark_ffi_signatures_md = quark_ffi_signatures_md;
});



_qrt.pumpImports("inheritance/super_");
