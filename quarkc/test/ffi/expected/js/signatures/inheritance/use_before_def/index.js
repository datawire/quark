var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
exports.quark_ffi_signatures_md = quark_ffi_signatures_md;



// CLASS Bar
function Bar() {
    this.__init_fields__();
}
exports.Bar = Bar;

function Bar__init_fields__() {}
Bar.prototype.__init_fields__ = Bar__init_fields__;
Bar.inheritance_use_before_def_Bar_ref = null;
function Bar_go() {}
Bar.prototype.go = Bar_go;

function Bar__getClass() {
    return "inheritance.use_before_def.Bar";
}
Bar.prototype._getClass = Bar__getClass;

function Bar__getField(name) {
    return null;
}
Bar.prototype._getField = Bar__getField;

function Bar__setField(name, value) {}
Bar.prototype._setField = Bar__setField;

// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {
    this.name = null;
}
Foo.prototype.__init_fields__ = Foo__init_fields__;
Foo.inheritance_use_before_def_Foo_ref = null;
function Foo__getClass() {
    return "inheritance.use_before_def.Foo";
}
Foo.prototype._getClass = Foo__getClass;

function Foo__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
Foo.prototype._getField = Foo__getField;

function Foo__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = value;
    }
}
Foo.prototype._setField = Foo__setField;
