var _qrt = require("datawire-quark-core");

// CLASS TestByte
function TestByte() {
    this.__init_fields__();
}
exports.TestByte = TestByte;

function TestByte__init_fields__() {}
TestByte.prototype.__init_fields__ = TestByte__init_fields__;

function TestByte_run() {
    var map = new Map();
    var b = 3;
    _qrt.print(_qrt.toString(b));
    _qrt.print(_qrt.toString((this).func()));
}
TestByte.prototype.run = TestByte_run;

function TestByte_func() {
    return new Number();
}
TestByte.prototype.func = TestByte_func;

// CLASS TestShort
function TestShort() {
    this.__init_fields__();
}
exports.TestShort = TestShort;

function TestShort__init_fields__() {}
TestShort.prototype.__init_fields__ = TestShort__init_fields__;

function TestShort_run() {
    var map = new Map();
    var b = 3;
    _qrt.print(_qrt.toString(b));
    _qrt.print(_qrt.toString((this).func()));
}
TestShort.prototype.run = TestShort_run;

function TestShort_func() {
    return new Number();
}
TestShort.prototype.func = TestShort_func;

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

function main() {
    (new TestByte()).run();
    (new TestShort()).run();
    (new TestInt()).run();
    (new TestLong()).run();
}
exports.main = main;

main();
