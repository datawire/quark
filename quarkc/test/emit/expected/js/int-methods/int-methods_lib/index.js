var _qrt = require("builtin/quark_runtime.js");

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;

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
    return "Test";
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
