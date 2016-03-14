var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var int_methods_md = require('../int_methods_md/index.js');
exports.int_methods_md = int_methods_md;



// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.int_methods_Test_ref = int_methods_md.Root.int_methods_Test_md;
function Test_test() {
    var x = 1;
    var y = 2;
    var z = (((x) + (y)) - (3)) * (4);
    _qrt.print(z);
    var four = (2) + (2);
    _qrt.print(four);
}
Test.prototype.test = Test_test;

function Test__getClass() {
    return "int_methods.Test";
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
