var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var stuff_md = require('../stuff_md/index.js');
exports.stuff_md = stuff_md;



// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.stuff_Test_ref = stuff_md.Root.stuff_Test_md;
function Test_foo(t) {
    return new Test();
}
Test.prototype.foo = Test_foo;

function Test_test() {
    var x = 2;
    var y = 2;
    var z = (x) + (y);
    _qrt.print(z);
    var hello = "hello";
    _qrt.print(hello);
    var t1 = new Test();
    var t2 = (t1).foo(t1);
    if ((t2) !== (t1)) {
        _qrt.print("YAY!");
    }
    var four = (2) + (2);
    _qrt.print(four);
}
Test.prototype.test = Test_test;

function Test__getClass() {
    return "stuff.Test";
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
