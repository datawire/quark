var _qrt = require("quark_runtime.js");

// CLASS TestInt
function TestInt() {
    this.__init_fields__();
}
exports.TestInt = TestInt;

function TestInt__init_fields__() {}
TestInt.prototype.__init_fields__ = TestInt__init_fields__;

function TestInt_run() {
    var map = new Map();
    var b = 3;
    _qrt.print(_qrt.toString(b));
    _qrt.print(_qrt.toString((this).func()));
}
TestInt.prototype.run = TestInt_run;

function TestInt_func() {
    return new Number();
}
TestInt.prototype.func = TestInt_func;

// CLASS TestLong
function TestLong() {
    this.__init_fields__();
}
exports.TestLong = TestLong;

function TestLong__init_fields__() {}
TestLong.prototype.__init_fields__ = TestLong__init_fields__;

function TestLong_run() {
    var map = new Map();
    var b = 3;
    _qrt.print(_qrt.toString(b));
    _qrt.print(_qrt.toString((this).func()));
}
TestLong.prototype.run = TestLong_run;

function TestLong_func() {
    return new Number();
}
TestLong.prototype.func = TestLong_func;

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;

function Test_run() {
    var map = new Map();
}
Test.prototype.run = Test_run;

function main() {
    (new TestInt()).run();
    (new TestLong()).run();
    (new Test()).run();
    (new Test()).run();
}
exports.main = main;

main();
