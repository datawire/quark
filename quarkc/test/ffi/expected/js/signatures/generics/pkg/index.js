var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
exports.quark_ffi_signatures_md = quark_ffi_signatures_md;



// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;
Foo.generics_pkg_Foo_quark_Object__ref = quark_ffi_signatures_md.Root.generics_pkg_Foo_quark_Object__md;
function Foo_foo() {
    return _qrt.cast(null, function () { return T; });
}
Foo.prototype.foo = Foo_foo;

function Foo_get() { throw TypeError, '`Foo.get` is an abstract method'; }
Foo.prototype.get = Foo_get;

// CLASS StringFoo
function StringFoo() {
    this.__init_fields__();
}
exports.StringFoo = StringFoo;

function StringFoo__init_fields__() {}
StringFoo.prototype.__init_fields__ = StringFoo__init_fields__;
StringFoo.generics_pkg_StringFoo_ref = quark_ffi_signatures_md.Root.generics_pkg_StringFoo_md;
function StringFoo_get() {
    return _qrt.cast(null, function () { return String; });
}
StringFoo.prototype.get = StringFoo_get;

function StringFoo__getClass() {
    return "generics.pkg.StringFoo";
}
StringFoo.prototype._getClass = StringFoo__getClass;

function StringFoo__getField(name) {
    return null;
}
StringFoo.prototype._getField = StringFoo__getField;

function StringFoo__setField(name, value) {}
StringFoo.prototype._setField = StringFoo__setField;

function StringFoo_foo() {
    return _qrt.cast(null, function () { return String; });
}
StringFoo.prototype.foo = StringFoo_foo;

// CLASS Box

function Box(contents) {
    this.__init_fields__();
}
exports.Box = Box;

function Box__init_fields__() {
    this.contents = null;
}
Box.prototype.__init_fields__ = Box__init_fields__;

function Box__getClass() {
    return "generics.pkg.Box<quark.Object>";
}
Box.prototype._getClass = Box__getClass;

function Box__getField(name) {
    if (_qrt.equals((name), ("contents"))) {
        return (this).contents;
    }
    return null;
}
Box.prototype._getField = Box__getField;

function Box__setField(name, value) {
    if (_qrt.equals((name), ("contents"))) {
        (this).contents = _qrt.cast(value, function () { return T; });
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
StringBox.generics_pkg_Box_quark_String__ref = quark_ffi_signatures_md.Root.generics_pkg_Box_quark_String__md;
StringBox.generics_pkg_StringBox_ref = quark_ffi_signatures_md.Root.generics_pkg_StringBox_md;
function StringBox__getClass() {
    return "generics.pkg.StringBox";
}
StringBox.prototype._getClass = StringBox__getClass;

function StringBox__getField(name) {
    if (_qrt.equals((name), ("contents"))) {
        return (this).contents;
    }
    return null;
}
StringBox.prototype._getField = StringBox__getField;

function StringBox__setField(name, value) {
    if (_qrt.equals((name), ("contents"))) {
        (this).contents = _qrt.cast(value, function () { return String; });
    }
}
StringBox.prototype._setField = StringBox__setField;
