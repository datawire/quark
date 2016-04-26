var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS org_example_foo_Foo_test_Method

function org_example_foo_Foo_test_Method() {
    org_example_foo_Foo_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.org_example_foo_Foo_test_Method = org_example_foo_Foo_test_Method;
_qrt.util.inherits(org_example_foo_Foo_test_Method, quark.reflect.Method);

function org_example_foo_Foo_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
org_example_foo_Foo_test_Method.prototype.__init_fields__ = org_example_foo_Foo_test_Method__init_fields__;

function org_example_foo_Foo_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
org_example_foo_Foo_test_Method.prototype.invoke = org_example_foo_Foo_test_Method_invoke;

function org_example_foo_Foo_test_Method__getClass() {
    return null;
}
org_example_foo_Foo_test_Method.prototype._getClass = org_example_foo_Foo_test_Method__getClass;

function org_example_foo_Foo_test_Method__getField(name) {
    return null;
}
org_example_foo_Foo_test_Method.prototype._getField = org_example_foo_Foo_test_Method__getField;

function org_example_foo_Foo_test_Method__setField(name, value) {}
org_example_foo_Foo_test_Method.prototype._setField = org_example_foo_Foo_test_Method__setField;

// CLASS org_example_foo_Foo

function org_example_foo_Foo() {
    org_example_foo_Foo.super_.call(this, "org.example.foo.Foo");
    (this).name = "org.example.foo.Foo";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new org_example_foo_Foo_test_Method()];
}
exports.org_example_foo_Foo = org_example_foo_Foo;
_qrt.util.inherits(org_example_foo_Foo, quark.reflect.Class);

function org_example_foo_Foo__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
org_example_foo_Foo.prototype.__init_fields__ = org_example_foo_Foo__init_fields__;
org_example_foo_Foo.singleton = new org_example_foo_Foo();
function org_example_foo_Foo_construct(args) {
    return new org.example.foo.Foo();
}
org_example_foo_Foo.prototype.construct = org_example_foo_Foo_construct;

function org_example_foo_Foo__getClass() {
    return null;
}
org_example_foo_Foo.prototype._getClass = org_example_foo_Foo__getClass;

function org_example_foo_Foo__getField(name) {
    return null;
}
org_example_foo_Foo.prototype._getField = org_example_foo_Foo__getField;

function org_example_foo_Foo__setField(name, value) {}
org_example_foo_Foo.prototype._setField = org_example_foo_Foo__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.org_example_foo_Foo_md = org_example_foo_Foo.singleton;
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

var org = require('../org/index.js');
exports.org = org;
