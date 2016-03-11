var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var implicit_self_md = require('../implicit_self_md/index.js');
exports.implicit_self_md = implicit_self_md;



// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;
Foo.implicit_self_Foo_ref = implicit_self_md.Root.implicit_self_Foo_md;
function Foo_next() {}
Foo.prototype.next = Foo_next;

function Foo_test() {
    this.next();
}
Foo.prototype.test = Foo_test;

function Foo__getClass() {
    return "implicit_self.Foo";
}
Foo.prototype._getClass = Foo__getClass;

function Foo__getField(name) {
    return null;
}
Foo.prototype._getField = Foo__getField;

function Foo__setField(name, value) {}
Foo.prototype._setField = Foo__setField;
