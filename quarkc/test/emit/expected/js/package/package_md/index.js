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
    var obj = object;
    (obj).go();
    return null;
}
test_Test_go_Method.prototype.invoke = test_Test_go_Method_invoke;

function test_Test_go_Method__getClass() {
    return null;
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
    return null;
}
test_Test.prototype._getClass = test_Test__getClass;

function test_Test__getField(name) {
    return null;
}
test_Test.prototype._getField = test_Test__getField;

function test_Test__setField(name, value) {}
test_Test.prototype._setField = test_Test__setField;


// CLASS test_test_Test_go_Method

function test_test_Test_go_Method() {
    test_test_Test_go_Method.super_.call(this, "quark.void", "go", []);
}
exports.test_test_Test_go_Method = test_test_Test_go_Method;
_qrt.util.inherits(test_test_Test_go_Method, quark.reflect.Method);

function test_test_Test_go_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
test_test_Test_go_Method.prototype.__init_fields__ = test_test_Test_go_Method__init_fields__;

function test_test_Test_go_Method_invoke(object, args) {
    var obj = object;
    (obj).go();
    return null;
}
test_test_Test_go_Method.prototype.invoke = test_test_Test_go_Method_invoke;

function test_test_Test_go_Method__getClass() {
    return null;
}
test_test_Test_go_Method.prototype._getClass = test_test_Test_go_Method__getClass;

function test_test_Test_go_Method__getField(name) {
    return null;
}
test_test_Test_go_Method.prototype._getField = test_test_Test_go_Method__getField;

function test_test_Test_go_Method__setField(name, value) {}
test_test_Test_go_Method.prototype._setField = test_test_Test_go_Method__setField;

// CLASS test_test_Test

function test_test_Test() {
    test_test_Test.super_.call(this, "test.test.Test");
    (this).name = "test.test.Test";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.int", "size")];
    (this).methods = [new test_test_Test_go_Method()];
}
exports.test_test_Test = test_test_Test;
_qrt.util.inherits(test_test_Test, quark.reflect.Class);

function test_test_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
test_test_Test.prototype.__init_fields__ = test_test_Test__init_fields__;
test_test_Test.singleton = new test_test_Test();
function test_test_Test_construct(args) {
    return new test.test.Test();
}
test_test_Test.prototype.construct = test_test_Test_construct;

function test_test_Test__getClass() {
    return null;
}
test_test_Test.prototype._getClass = test_test_Test__getClass;

function test_test_Test__getField(name) {
    return null;
}
test_test_Test.prototype._getField = test_test_Test__getField;

function test_test_Test__setField(name, value) {}
test_test_Test.prototype._setField = test_test_Test__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.test_Test_md = test_Test.singleton;
Root.test_test_Test_md = test_test_Test.singleton;
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

var test = require('../test/index.js');
exports.test = test;
var test = require('../test/index.js');
exports.test = test;
