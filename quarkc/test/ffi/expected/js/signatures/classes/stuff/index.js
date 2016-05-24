var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
exports.quark_ffi_signatures_md = quark_ffi_signatures_md;



// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.classes_stuff_Test_ref = quark_ffi_signatures_md.Root.classes_stuff_Test_md;
function Test_foo(t) {
    return _qrt.cast(null, function () { return Test; });
}
Test.prototype.foo = Test_foo;

function Test_test() {}
Test.prototype.test = Test_test;

function Test__getClass() {
    return "classes.stuff.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {}
Test.prototype._setField = Test__setField;
