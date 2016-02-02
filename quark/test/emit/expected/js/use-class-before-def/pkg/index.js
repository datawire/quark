var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var use_class_before_def_md = require('../use_class_before_def_md');
exports.use_class_before_def_md = use_class_before_def_md;



// CLASS Bar
function Bar() {
    this.__init_fields__();
}
exports.Bar = Bar;

function Bar__init_fields__() {}
Bar.prototype.__init_fields__ = Bar__init_fields__;
Bar.pkg_Bar_ref = use_class_before_def_md.Root.pkg_Bar_md;
function Bar_go() {
    var foo = new Foo();
    (foo).name = "bob";
    _qrt.print((foo).name);
}
Bar.prototype.go = Bar_go;

function Bar__getClass() {
    return "pkg.Bar";
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
Foo.pkg_Foo_ref = use_class_before_def_md.Root.pkg_Foo_md;
function Foo__getClass() {
    return "pkg.Foo";
}
Foo.prototype._getClass = Foo__getClass;

function Foo__getField(name) {
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
Foo.prototype._getField = Foo__getField;

function Foo__setField(name, value) {
    if ((name) === ("name")) {
        (this).name = value;
    }
}
Foo.prototype._setField = Foo__setField;

function main() {
    var bar = new Bar();
    (bar).go();
}
exports.main = main;
