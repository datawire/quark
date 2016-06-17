var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS test_Test_go_Method

function test_Test_go_Method() {
    test_Test_go_Method.super_.call(this, "quark.void", "go", []);
}
exports.test_Test_go_Method = test_Test_go_Method;
_qrt.util.inherits(test_Test_go_Method, quark.reflect.Method);

function test_Test_go_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
test_Test_go_Method.prototype.__init_fields__ = test_Test_go_Method__init_fields__;

function test_Test_go_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return test.Test; });
    (obj).go();
    return null;
}
test_Test_go_Method.prototype.invoke = test_Test_go_Method_invoke;

function test_Test_go_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
test_Test_go_Method.prototype._getClass = test_Test_go_Method__getClass;

function test_Test_go_Method__getField(name) {
    return null;
}
test_Test_go_Method.prototype._getField = test_Test_go_Method__getField;

function test_Test_go_Method__setField(name, value) {}
test_Test_go_Method.prototype._setField = test_Test_go_Method__setField;

// CLASS test_Test

function test_Test() {
    test_Test.super_.call(this, "test.Test");
    (this).name = "test.Test";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new test_Test_go_Method()];
    (this).parents = [quark.reflect.Class.OBJECT];
}
exports.test_Test = test_Test;
_qrt.util.inherits(test_Test, quark.reflect.Class);

function test_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
test_Test.prototype.__init_fields__ = test_Test__init_fields__;
test_Test.singleton = new test_Test();
function test_Test_construct(args) {
    return new test.Test();
}
test_Test.prototype.construct = test_Test_construct;

function test_Test__getClass() {
    return _qrt.cast(null, function () { return String; });
}
test_Test.prototype._getClass = test_Test__getClass;

function test_Test__getField(name) {
    return null;
}
test_Test.prototype._getField = test_Test__getField;

function test_Test__setField(name, value) {}
test_Test.prototype._setField = test_Test__setField;


// CLASS test_subtest_Test_go_Method

function test_subtest_Test_go_Method() {
    test_subtest_Test_go_Method.super_.call(this, "quark.void", "go", []);
}
exports.test_subtest_Test_go_Method = test_subtest_Test_go_Method;
_qrt.util.inherits(test_subtest_Test_go_Method, quark.reflect.Method);

function test_subtest_Test_go_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
test_subtest_Test_go_Method.prototype.__init_fields__ = test_subtest_Test_go_Method__init_fields__;

function test_subtest_Test_go_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return test.subtest.Test; });
    (obj).go();
    return null;
}
test_subtest_Test_go_Method.prototype.invoke = test_subtest_Test_go_Method_invoke;

function test_subtest_Test_go_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
test_subtest_Test_go_Method.prototype._getClass = test_subtest_Test_go_Method__getClass;

function test_subtest_Test_go_Method__getField(name) {
    return null;
}
test_subtest_Test_go_Method.prototype._getField = test_subtest_Test_go_Method__getField;

function test_subtest_Test_go_Method__setField(name, value) {}
test_subtest_Test_go_Method.prototype._setField = test_subtest_Test_go_Method__setField;

// CLASS test_subtest_Test

function test_subtest_Test() {
    test_subtest_Test.super_.call(this, "test.subtest.Test");
    (this).name = "test.subtest.Test";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.int", "size")];
    (this).methods = [new test_subtest_Test_go_Method()];
    (this).parents = [quark.reflect.Class.OBJECT];
}
exports.test_subtest_Test = test_subtest_Test;
_qrt.util.inherits(test_subtest_Test, quark.reflect.Class);

function test_subtest_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
test_subtest_Test.prototype.__init_fields__ = test_subtest_Test__init_fields__;
test_subtest_Test.singleton = new test_subtest_Test();
function test_subtest_Test_construct(args) {
    return new test.subtest.Test();
}
test_subtest_Test.prototype.construct = test_subtest_Test_construct;

function test_subtest_Test__getClass() {
    return _qrt.cast(null, function () { return String; });
}
test_subtest_Test.prototype._getClass = test_subtest_Test__getClass;

function test_subtest_Test__getField(name) {
    return null;
}
test_subtest_Test.prototype._getField = test_subtest_Test__getField;

function test_subtest_Test__setField(name, value) {}
test_subtest_Test.prototype._setField = test_subtest_Test__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.test_Test_md = test_Test.singleton;
Root.test_subtest_Test_md = test_subtest_Test.singleton;
function Root__getClass() {
    return _qrt.cast(null, function () { return String; });
}
Root.prototype._getClass = Root__getClass;

function Root__getField(name) {
    return null;
}
Root.prototype._getField = Root__getField;

function Root__setField(name, value) {}
Root.prototype._setField = Root__setField;

var test = require('../test/index.js');
exports.test = test;
var test = require('../test/index.js');
exports.test = test;
