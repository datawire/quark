var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



// CLASS stuff_Test_foo_Method

function stuff_Test_foo_Method() {
    stuff_Test_foo_Method.super_.call(this, "stuff.Test", "foo", ["stuff.Test"]);
}
exports.stuff_Test_foo_Method = stuff_Test_foo_Method;
_qrt.util.inherits(stuff_Test_foo_Method, builtin.reflect.Method);

function stuff_Test_foo_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
stuff_Test_foo_Method.prototype.__init_fields__ = stuff_Test_foo_Method__init_fields__;

function stuff_Test_foo_Method_invoke(object, args) {
    var obj = object;
    return (obj).foo((args)[0]);
}
stuff_Test_foo_Method.prototype.invoke = stuff_Test_foo_Method_invoke;

function stuff_Test_foo_Method__getClass() {
    return null;
}
stuff_Test_foo_Method.prototype._getClass = stuff_Test_foo_Method__getClass;

function stuff_Test_foo_Method__getField(name) {
    return null;
}
stuff_Test_foo_Method.prototype._getField = stuff_Test_foo_Method__getField;

function stuff_Test_foo_Method__setField(name, value) {}
stuff_Test_foo_Method.prototype._setField = stuff_Test_foo_Method__setField;

// CLASS stuff_Test_test_Method

function stuff_Test_test_Method() {
    stuff_Test_test_Method.super_.call(this, "builtin.void", "test", []);
}
exports.stuff_Test_test_Method = stuff_Test_test_Method;
_qrt.util.inherits(stuff_Test_test_Method, builtin.reflect.Method);

function stuff_Test_test_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
stuff_Test_test_Method.prototype.__init_fields__ = stuff_Test_test_Method__init_fields__;

function stuff_Test_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
stuff_Test_test_Method.prototype.invoke = stuff_Test_test_Method_invoke;

function stuff_Test_test_Method__getClass() {
    return null;
}
stuff_Test_test_Method.prototype._getClass = stuff_Test_test_Method__getClass;

function stuff_Test_test_Method__getField(name) {
    return null;
}
stuff_Test_test_Method.prototype._getField = stuff_Test_test_Method__getField;

function stuff_Test_test_Method__setField(name, value) {}
stuff_Test_test_Method.prototype._setField = stuff_Test_test_Method__setField;

// CLASS stuff_Test

function stuff_Test() {
    stuff_Test.super_.call(this, "stuff.Test");
    (this).name = "stuff.Test";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new stuff_Test_foo_Method(), new stuff_Test_test_Method()];
}
exports.stuff_Test = stuff_Test;
_qrt.util.inherits(stuff_Test, builtin.reflect.Class);

function stuff_Test__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
stuff_Test.prototype.__init_fields__ = stuff_Test__init_fields__;
stuff_Test.singleton = new stuff_Test();
function stuff_Test_construct(args) {
    return new stuff.Test();
}
stuff_Test.prototype.construct = stuff_Test_construct;

function stuff_Test__getClass() {
    return null;
}
stuff_Test.prototype._getClass = stuff_Test__getClass;

function stuff_Test__getField(name) {
    return null;
}
stuff_Test.prototype._getField = stuff_Test__getField;

function stuff_Test__setField(name, value) {}
stuff_Test.prototype._setField = stuff_Test__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.stuff_Test_md = stuff_Test.singleton;
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

var stuff = require('../stuff/index.js');
exports.stuff = stuff;
