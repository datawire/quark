var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var macro_native_md = require('../macro_native_md/index.js');
exports.macro_native_md = macro_native_md;



// CLASS Native
function Native() {
    this.__init_fields__();
}
exports.Native = Native;

function Native__init_fields__() {}
Native.prototype.__init_fields__ = Native__init_fields__;
Native.macro_native_Native_ref = macro_native_md.Root.macro_native_Native_md;
function Native_test() {
    var n1 = new Native();
    var n2 = new Native();
    var n1n2 = new Native();
    var n3 = n1n2;
}
Native.prototype.test = Native_test;

function Native__getClass() {
    return "macro_native.Native";
}
Native.prototype._getClass = Native__getClass;

function Native__getField(name) {
    return null;
}
Native.prototype._getField = Native__getField;

function Native__setField(name, value) {}
Native.prototype._setField = Native__setField;
