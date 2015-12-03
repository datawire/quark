var _qrt = require("datawire-quark-core");


// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;

function Foo_foo() {
    return this.get();
}
Foo.prototype.foo = Foo_foo;

function Foo_get() { /* interface */ }
Foo.prototype.get = Foo_get;

// CLASS StringFoo
function StringFoo() {
    this.__init_fields__();
}
exports.StringFoo = StringFoo;

function StringFoo__init_fields__() {}
StringFoo.prototype.__init_fields__ = StringFoo__init_fields__;

function StringFoo_get() {
    return "fdsa";
}
StringFoo.prototype.get = StringFoo_get;

function StringFoo_foo() {
    return this.get();
}
StringFoo.prototype.foo = StringFoo_foo;

// CLASS Box

function Box(contents) {
    this.__init_fields__();
    (this).contents = contents;
}
exports.Box = Box;

function Box__init_fields__() {
    this.contents = null;
}
Box.prototype.__init_fields__ = Box__init_fields__;


// CLASS StringBox

function StringBox(contents) {
    StringBox.super_.call(this, contents);
}
exports.StringBox = StringBox;
_qrt.util.inherits(StringBox, Box);

function StringBox__init_fields__() {
    Box.prototype.__init_fields__.call(this);
}
StringBox.prototype.__init_fields__ = StringBox__init_fields__;
