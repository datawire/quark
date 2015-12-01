var _qrt = require("datawire-quark-core");

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
