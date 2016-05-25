var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var package__md = require('../../package__md/index.js');
exports.package__md = package__md;



function go() {}
exports.go = go;

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {
    this.size = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.test_subtest_Test_ref = package__md.Root.test_subtest_Test_md;
function Test_go() {}
Test.prototype.go = Test_go;

function Test__getClass() {
    return "test.subtest.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    if (_qrt.equals((name), ("size"))) {
        return (this).size;
    }
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {
    if (_qrt.equals((name), ("size"))) {
        (this).size = _qrt.cast(value, function () { return Number; });
    }
}
Test.prototype._setField = Test__setField;
