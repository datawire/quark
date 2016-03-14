var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS prtest_Test_test_Method

function prtest_Test_test_Method() {
    prtest_Test_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.prtest_Test_test_Method = prtest_Test_test_Method;
_qrt.util.inherits(prtest_Test_test_Method, quark.reflect.Method);

function prtest_Test_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
prtest_Test_test_Method.prototype.__init_fields__ = prtest_Test_test_Method__init_fields__;

function prtest_Test_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
prtest_Test_test_Method.prototype.invoke = prtest_Test_test_Method_invoke;

function prtest_Test_test_Method__getClass() {
    return null;
}
prtest_Test_test_Method.prototype._getClass = prtest_Test_test_Method__getClass;

function prtest_Test_test_Method__getField(name) {
    return null;
}
prtest_Test_test_Method.prototype._getField = prtest_Test_test_Method__getField;

function prtest_Test_test_Method__setField(name, value) {}
prtest_Test_test_Method.prototype._setField = prtest_Test_test_Method__setField;

// CLASS prtest_Test

function prtest_Test() {
    prtest_Test.super_.call(this, "prtest.Test");
    (this).name = "prtest.Test";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new prtest_Test_test_Method()];
}
exports.prtest_Test = prtest_Test;
_qrt.util.inherits(prtest_Test, quark.reflect.Class);

function prtest_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
prtest_Test.prototype.__init_fields__ = prtest_Test__init_fields__;
prtest_Test.singleton = new prtest_Test();
function prtest_Test_construct(args) {
    return new prtest.Test();
}
prtest_Test.prototype.construct = prtest_Test_construct;

function prtest_Test__getClass() {
    return null;
}
prtest_Test.prototype._getClass = prtest_Test__getClass;

function prtest_Test__getField(name) {
    return null;
}
prtest_Test.prototype._getField = prtest_Test__getField;

function prtest_Test__setField(name, value) {}
prtest_Test.prototype._setField = prtest_Test__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.prtest_Test_md = prtest_Test.singleton;
function Root__getClass() {
    return null;
}
Root.prototype._getClass = Root__getClass;

function Root__getField(name) {
    return null;
}
Root.prototype._getField = Root__getField;

function Root__setField(name, value) {}
Root.prototype._setField = Root__setField;

var prtest = require('../prtest/index.js');
exports.prtest = prtest;
