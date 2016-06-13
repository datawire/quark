var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var org_example_foo_md = require('../../../org_example_foo_md/index.js');
exports.org_example_foo_md = org_example_foo_md;



// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;
Foo.org_example_foo_Foo_ref = null;
function Foo_test() {}
Foo.prototype.test = Foo_test;

function Foo__getClass() {
    return "org.example.foo.Foo";
}
Foo.prototype._getClass = Foo__getClass;

function Foo__getField(name) {
    return null;
}
Foo.prototype._getField = Foo__getField;

function Foo__setField(name, value) {}
Foo.prototype._setField = Foo__setField;
