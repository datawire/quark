var _qrt = require("datawire-quark-core");

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;

function Test_test() {
    _qrt.print("Hello World!");
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
