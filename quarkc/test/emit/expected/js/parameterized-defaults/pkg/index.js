var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var parameterized_defaults_md = require('../parameterized_defaults_md/index.js');
exports.parameterized_defaults_md = parameterized_defaults_md;



// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;
Foo.pkg_Foo_quark_Object__ref = parameterized_defaults_md.Root.pkg_Foo_quark_Object__md;
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
StringFoo.pkg_StringFoo_ref = parameterized_defaults_md.Root.pkg_StringFoo_md;
function StringFoo_get() {
    return "fdsa";
}
StringFoo.prototype.get = StringFoo_get;

function StringFoo__getClass() {
    return "pkg.StringFoo";
}
StringFoo.prototype._getClass = StringFoo__getClass;

function StringFoo__getField(name) {
    return null;
}
StringFoo.prototype._getField = StringFoo__getField;

function StringFoo__setField(name, value) {}
StringFoo.prototype._setField = StringFoo__setField;

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

function Box__getClass() {
    return "pkg.Box<quark.Object>";
}
Box.prototype._getClass = Box__getClass;

function Box__getField(name) {
    if (require('lodash').isEqual((name), ("contents"))) {
        return (this).contents;
    }
    return null;
}
Box.prototype._getField = Box__getField;

function Box__setField(name, value) {
    if (require('lodash').isEqual((name), ("contents"))) {
        (this).contents = value;
    }
}
Box.prototype._setField = Box__setField;

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
StringBox.pkg_Box_quark_String__ref = parameterized_defaults_md.Root.pkg_Box_quark_String__md;
StringBox.pkg_StringBox_ref = parameterized_defaults_md.Root.pkg_StringBox_md;
function StringBox__getClass() {
    return "pkg.StringBox";
}
StringBox.prototype._getClass = StringBox__getClass;

function StringBox__getField(name) {
    if (require('lodash').isEqual((name), ("contents"))) {
        return (this).contents;
    }
    return null;
}
StringBox.prototype._getField = StringBox__getField;

function StringBox__setField(name, value) {
    if (require('lodash').isEqual((name), ("contents"))) {
        (this).contents = value;
    }
}
StringBox.prototype._setField = StringBox__setField;
