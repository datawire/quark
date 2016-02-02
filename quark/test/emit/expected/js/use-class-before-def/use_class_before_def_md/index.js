var _qrt = require("datawire-quark-core");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



// CLASS pkg_Bar_go_Method

function pkg_Bar_go_Method() {
    pkg_Bar_go_Method.super_.call(this, "builtin.void", "go", []);
}
exports.pkg_Bar_go_Method = pkg_Bar_go_Method;
_qrt.util.inherits(pkg_Bar_go_Method, builtin.reflect.Method);

function pkg_Bar_go_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_Bar_go_Method.prototype.__init_fields__ = pkg_Bar_go_Method__init_fields__;

function pkg_Bar_go_Method_invoke(object, args) {
    var obj = object;
    (obj).go();
    return null;
}
pkg_Bar_go_Method.prototype.invoke = pkg_Bar_go_Method_invoke;

function pkg_Bar_go_Method__getClass() {
    return null;
}
pkg_Bar_go_Method.prototype._getClass = pkg_Bar_go_Method__getClass;

function pkg_Bar_go_Method__getField(name) {
    return null;
}
pkg_Bar_go_Method.prototype._getField = pkg_Bar_go_Method__getField;

function pkg_Bar_go_Method__setField(name, value) {}
pkg_Bar_go_Method.prototype._setField = pkg_Bar_go_Method__setField;

// CLASS pkg_Bar

function pkg_Bar() {
    pkg_Bar.super_.call(this, "pkg.Bar");
    (this).name = "pkg.Bar";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_Bar_go_Method()];
}
exports.pkg_Bar = pkg_Bar;
_qrt.util.inherits(pkg_Bar, builtin.reflect.Class);

function pkg_Bar__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_Bar.prototype.__init_fields__ = pkg_Bar__init_fields__;
pkg_Bar.singleton = new pkg_Bar();
function pkg_Bar_construct(args) {
    return new pkg.Bar();
}
pkg_Bar.prototype.construct = pkg_Bar_construct;

function pkg_Bar__getClass() {
    return null;
}
pkg_Bar.prototype._getClass = pkg_Bar__getClass;

function pkg_Bar__getField(name) {
    return null;
}
pkg_Bar.prototype._getField = pkg_Bar__getField;

function pkg_Bar__setField(name, value) {}
pkg_Bar.prototype._setField = pkg_Bar__setField;


// CLASS pkg_Foo

function pkg_Foo() {
    pkg_Foo.super_.call(this, "pkg.Foo");
    (this).name = "pkg.Foo";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "name")];
    (this).methods = [];
}
exports.pkg_Foo = pkg_Foo;
_qrt.util.inherits(pkg_Foo, builtin.reflect.Class);

function pkg_Foo__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_Foo.prototype.__init_fields__ = pkg_Foo__init_fields__;
pkg_Foo.singleton = new pkg_Foo();
function pkg_Foo_construct(args) {
    return new pkg.Foo();
}
pkg_Foo.prototype.construct = pkg_Foo_construct;

function pkg_Foo__getClass() {
    return null;
}
pkg_Foo.prototype._getClass = pkg_Foo__getClass;

function pkg_Foo__getField(name) {
    return null;
}
pkg_Foo.prototype._getField = pkg_Foo__getField;

function pkg_Foo__setField(name, value) {}
pkg_Foo.prototype._setField = pkg_Foo__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.pkg_Bar_md = pkg_Bar.singleton;
Root.pkg_Foo_md = pkg_Foo.singleton;
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

var pkg = require('../pkg');
exports.pkg = pkg;
