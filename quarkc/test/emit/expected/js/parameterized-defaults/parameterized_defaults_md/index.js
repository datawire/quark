var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



// CLASS pkg_Foo_builtin_Object__foo_Method

function pkg_Foo_builtin_Object__foo_Method() {
    pkg_Foo_builtin_Object__foo_Method.super_.call(this, "builtin.Object", "foo", []);
}
exports.pkg_Foo_builtin_Object__foo_Method = pkg_Foo_builtin_Object__foo_Method;
_qrt.util.inherits(pkg_Foo_builtin_Object__foo_Method, builtin.reflect.Method);

function pkg_Foo_builtin_Object__foo_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_Foo_builtin_Object__foo_Method.prototype.__init_fields__ = pkg_Foo_builtin_Object__foo_Method__init_fields__;

function pkg_Foo_builtin_Object__foo_Method_invoke(object, args) {
    var obj = object;
    return (obj).foo();
}
pkg_Foo_builtin_Object__foo_Method.prototype.invoke = pkg_Foo_builtin_Object__foo_Method_invoke;

function pkg_Foo_builtin_Object__foo_Method__getClass() {
    return null;
}
pkg_Foo_builtin_Object__foo_Method.prototype._getClass = pkg_Foo_builtin_Object__foo_Method__getClass;

function pkg_Foo_builtin_Object__foo_Method__getField(name) {
    return null;
}
pkg_Foo_builtin_Object__foo_Method.prototype._getField = pkg_Foo_builtin_Object__foo_Method__getField;

function pkg_Foo_builtin_Object__foo_Method__setField(name, value) {}
pkg_Foo_builtin_Object__foo_Method.prototype._setField = pkg_Foo_builtin_Object__foo_Method__setField;

// CLASS pkg_Foo_builtin_Object__get_Method

function pkg_Foo_builtin_Object__get_Method() {
    pkg_Foo_builtin_Object__get_Method.super_.call(this, "builtin.Object", "get", []);
}
exports.pkg_Foo_builtin_Object__get_Method = pkg_Foo_builtin_Object__get_Method;
_qrt.util.inherits(pkg_Foo_builtin_Object__get_Method, builtin.reflect.Method);

function pkg_Foo_builtin_Object__get_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_Foo_builtin_Object__get_Method.prototype.__init_fields__ = pkg_Foo_builtin_Object__get_Method__init_fields__;

function pkg_Foo_builtin_Object__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
pkg_Foo_builtin_Object__get_Method.prototype.invoke = pkg_Foo_builtin_Object__get_Method_invoke;

function pkg_Foo_builtin_Object__get_Method__getClass() {
    return null;
}
pkg_Foo_builtin_Object__get_Method.prototype._getClass = pkg_Foo_builtin_Object__get_Method__getClass;

function pkg_Foo_builtin_Object__get_Method__getField(name) {
    return null;
}
pkg_Foo_builtin_Object__get_Method.prototype._getField = pkg_Foo_builtin_Object__get_Method__getField;

function pkg_Foo_builtin_Object__get_Method__setField(name, value) {}
pkg_Foo_builtin_Object__get_Method.prototype._setField = pkg_Foo_builtin_Object__get_Method__setField;

// CLASS pkg_Foo_builtin_Object_

function pkg_Foo_builtin_Object_() {
    pkg_Foo_builtin_Object_.super_.call(this, "pkg.Foo<builtin.Object>");
    (this).name = "pkg.Foo";
    (this).parameters = ["builtin.Object"];
    (this).fields = [];
    (this).methods = [new pkg_Foo_builtin_Object__foo_Method(), new pkg_Foo_builtin_Object__get_Method()];
}
exports.pkg_Foo_builtin_Object_ = pkg_Foo_builtin_Object_;
_qrt.util.inherits(pkg_Foo_builtin_Object_, builtin.reflect.Class);

function pkg_Foo_builtin_Object___init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_Foo_builtin_Object_.prototype.__init_fields__ = pkg_Foo_builtin_Object___init_fields__;
pkg_Foo_builtin_Object_.singleton = new pkg_Foo_builtin_Object_();
function pkg_Foo_builtin_Object__construct(args) {
    return null;
}
pkg_Foo_builtin_Object_.prototype.construct = pkg_Foo_builtin_Object__construct;

function pkg_Foo_builtin_Object___getClass() {
    return null;
}
pkg_Foo_builtin_Object_.prototype._getClass = pkg_Foo_builtin_Object___getClass;

function pkg_Foo_builtin_Object___getField(name) {
    return null;
}
pkg_Foo_builtin_Object_.prototype._getField = pkg_Foo_builtin_Object___getField;

function pkg_Foo_builtin_Object___setField(name, value) {}
pkg_Foo_builtin_Object_.prototype._setField = pkg_Foo_builtin_Object___setField;


// CLASS pkg_StringFoo_get_Method

function pkg_StringFoo_get_Method() {
    pkg_StringFoo_get_Method.super_.call(this, "builtin.String", "get", []);
}
exports.pkg_StringFoo_get_Method = pkg_StringFoo_get_Method;
_qrt.util.inherits(pkg_StringFoo_get_Method, builtin.reflect.Method);

function pkg_StringFoo_get_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_StringFoo_get_Method.prototype.__init_fields__ = pkg_StringFoo_get_Method__init_fields__;

function pkg_StringFoo_get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
pkg_StringFoo_get_Method.prototype.invoke = pkg_StringFoo_get_Method_invoke;

function pkg_StringFoo_get_Method__getClass() {
    return null;
}
pkg_StringFoo_get_Method.prototype._getClass = pkg_StringFoo_get_Method__getClass;

function pkg_StringFoo_get_Method__getField(name) {
    return null;
}
pkg_StringFoo_get_Method.prototype._getField = pkg_StringFoo_get_Method__getField;

function pkg_StringFoo_get_Method__setField(name, value) {}
pkg_StringFoo_get_Method.prototype._setField = pkg_StringFoo_get_Method__setField;

// CLASS pkg_StringFoo_foo_Method

function pkg_StringFoo_foo_Method() {
    pkg_StringFoo_foo_Method.super_.call(this, "builtin.String", "foo", []);
}
exports.pkg_StringFoo_foo_Method = pkg_StringFoo_foo_Method;
_qrt.util.inherits(pkg_StringFoo_foo_Method, builtin.reflect.Method);

function pkg_StringFoo_foo_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_StringFoo_foo_Method.prototype.__init_fields__ = pkg_StringFoo_foo_Method__init_fields__;

function pkg_StringFoo_foo_Method_invoke(object, args) {
    var obj = object;
    return (obj).foo();
}
pkg_StringFoo_foo_Method.prototype.invoke = pkg_StringFoo_foo_Method_invoke;

function pkg_StringFoo_foo_Method__getClass() {
    return null;
}
pkg_StringFoo_foo_Method.prototype._getClass = pkg_StringFoo_foo_Method__getClass;

function pkg_StringFoo_foo_Method__getField(name) {
    return null;
}
pkg_StringFoo_foo_Method.prototype._getField = pkg_StringFoo_foo_Method__getField;

function pkg_StringFoo_foo_Method__setField(name, value) {}
pkg_StringFoo_foo_Method.prototype._setField = pkg_StringFoo_foo_Method__setField;

// CLASS pkg_StringFoo

function pkg_StringFoo() {
    pkg_StringFoo.super_.call(this, "pkg.StringFoo");
    (this).name = "pkg.StringFoo";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_StringFoo_get_Method(), new pkg_StringFoo_foo_Method()];
}
exports.pkg_StringFoo = pkg_StringFoo;
_qrt.util.inherits(pkg_StringFoo, builtin.reflect.Class);

function pkg_StringFoo__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_StringFoo.prototype.__init_fields__ = pkg_StringFoo__init_fields__;
pkg_StringFoo.singleton = new pkg_StringFoo();
function pkg_StringFoo_construct(args) {
    return new pkg.StringFoo();
}
pkg_StringFoo.prototype.construct = pkg_StringFoo_construct;

function pkg_StringFoo__getClass() {
    return null;
}
pkg_StringFoo.prototype._getClass = pkg_StringFoo__getClass;

function pkg_StringFoo__getField(name) {
    return null;
}
pkg_StringFoo.prototype._getField = pkg_StringFoo__getField;

function pkg_StringFoo__setField(name, value) {}
pkg_StringFoo.prototype._setField = pkg_StringFoo__setField;


// CLASS pkg_Box_builtin_String_

function pkg_Box_builtin_String_() {
    pkg_Box_builtin_String_.super_.call(this, "pkg.Box<builtin.String>");
    (this).name = "pkg.Box";
    (this).parameters = ["builtin.String"];
    (this).fields = [new builtin.reflect.Field("builtin.String", "contents")];
    (this).methods = [];
}
exports.pkg_Box_builtin_String_ = pkg_Box_builtin_String_;
_qrt.util.inherits(pkg_Box_builtin_String_, builtin.reflect.Class);

function pkg_Box_builtin_String___init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_Box_builtin_String_.prototype.__init_fields__ = pkg_Box_builtin_String___init_fields__;
pkg_Box_builtin_String_.singleton = new pkg_Box_builtin_String_();
function pkg_Box_builtin_String__construct(args) {
    return new pkg.Box((args)[0]);
}
pkg_Box_builtin_String_.prototype.construct = pkg_Box_builtin_String__construct;

function pkg_Box_builtin_String___getClass() {
    return null;
}
pkg_Box_builtin_String_.prototype._getClass = pkg_Box_builtin_String___getClass;

function pkg_Box_builtin_String___getField(name) {
    return null;
}
pkg_Box_builtin_String_.prototype._getField = pkg_Box_builtin_String___getField;

function pkg_Box_builtin_String___setField(name, value) {}
pkg_Box_builtin_String_.prototype._setField = pkg_Box_builtin_String___setField;


// CLASS pkg_StringBox

function pkg_StringBox() {
    pkg_StringBox.super_.call(this, "pkg.StringBox");
    (this).name = "pkg.StringBox";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "contents")];
    (this).methods = [];
}
exports.pkg_StringBox = pkg_StringBox;
_qrt.util.inherits(pkg_StringBox, builtin.reflect.Class);

function pkg_StringBox__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_StringBox.prototype.__init_fields__ = pkg_StringBox__init_fields__;
pkg_StringBox.singleton = new pkg_StringBox();
function pkg_StringBox_construct(args) {
    return new pkg.StringBox((args)[0]);
}
pkg_StringBox.prototype.construct = pkg_StringBox_construct;

function pkg_StringBox__getClass() {
    return null;
}
pkg_StringBox.prototype._getClass = pkg_StringBox__getClass;

function pkg_StringBox__getField(name) {
    return null;
}
pkg_StringBox.prototype._getField = pkg_StringBox__getField;

function pkg_StringBox__setField(name, value) {}
pkg_StringBox.prototype._setField = pkg_StringBox__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.pkg_Foo_builtin_Object__md = pkg_Foo_builtin_Object_.singleton;
Root.pkg_StringFoo_md = pkg_StringFoo.singleton;
Root.pkg_Box_builtin_String__md = pkg_Box_builtin_String_.singleton;
Root.pkg_StringBox_md = pkg_StringBox.singleton;
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

var pkg = require('../pkg/index.js');
exports.pkg = pkg;
