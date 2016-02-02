var _qrt = require("builtin/quark_runtime.js");

// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;

function Foo_next() {}
Foo.prototype.next = Foo_next;

function Foo_test() {
    this.next();
}
Foo.prototype.test = Foo_test;

function Foo__getClass() {
    return "Foo";
}
Foo.prototype._getClass = Foo__getClass;

function Foo__getField(name) {
    return null;
}
Foo.prototype._getField = Foo__getField;

function Foo__setField(name, value) {}
Foo.prototype._setField = Foo__setField;
