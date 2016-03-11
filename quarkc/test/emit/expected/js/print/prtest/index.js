var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var prtest_md = require('../prtest_md/index.js');
exports.prtest_md = prtest_md;



// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.prtest_Test_ref = prtest_md.Root.prtest_Test_md;
function Test_test() {
    _qrt.print("Hello World!");
}
Test.prototype.test = Test_test;

function Test__getClass() {
    return "prtest.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {}
Test.prototype._setField = Test__setField;

function main() {
    (new Test()).test();
}
exports.main = main;
