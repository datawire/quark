var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var quark_ffi_signatures_md = require('../quark_ffi_signatures_md/index.js');
exports.quark_ffi_signatures_md = quark_ffi_signatures_md;



// CLASS Test
/**
 * hey, here are some docs
 * here are some more docs
 * a bunch of docs in fact
 */
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {
    /**
     * field docs
     */
    this.name = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.docs_Test_ref = quark_ffi_signatures_md.Root.docs_Test_md;
/**
 * method docs
 */
function Test_test(param) {
    return 3;
}
Test.prototype.test = Test_test;

function Test__getClass() {
    return "docs.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = value;
    }
}
Test.prototype._setField = Test__setField;
