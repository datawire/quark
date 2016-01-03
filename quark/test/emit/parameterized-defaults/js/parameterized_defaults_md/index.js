var _qrt = require("datawire-quark-core");
var reflect = require('../reflect');
exports.reflect = reflect;



// CLASS List_reflect_Class_

function List_reflect_Class_() {
    List_reflect_Class_.super_.call(this, "List<reflect.Class>");
    (this).name = "List";
    (this).parameters = ["reflect.Class"];
    (this).fields = [];
    (this).methods = [];
}
exports.List_reflect_Class_ = List_reflect_Class_;
_qrt.util.inherits(List_reflect_Class_, reflect.Class);

function List_reflect_Class___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
List_reflect_Class_.prototype.__init_fields__ = List_reflect_Class___init_fields__;
List_reflect_Class_.singleton = new List_reflect_Class_();
function List_reflect_Class__construct(args) {
    return new Array();
}
List_reflect_Class_.prototype.construct = List_reflect_Class__construct;

function List_reflect_Class___getClass() {
    return null;
}
List_reflect_Class_.prototype._getClass = List_reflect_Class___getClass;

function List_reflect_Class___getField(name) {
    return null;
}
List_reflect_Class_.prototype._getField = List_reflect_Class___getField;

function List_reflect_Class___setField(name, value) {}
List_reflect_Class_.prototype._setField = List_reflect_Class___setField;


// CLASS List_reflect_Method_

function List_reflect_Method_() {
    List_reflect_Method_.super_.call(this, "List<reflect.Method>");
    (this).name = "List";
    (this).parameters = ["reflect.Method"];
    (this).fields = [];
    (this).methods = [];
}
exports.List_reflect_Method_ = List_reflect_Method_;
_qrt.util.inherits(List_reflect_Method_, reflect.Class);

function List_reflect_Method___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
List_reflect_Method_.prototype.__init_fields__ = List_reflect_Method___init_fields__;
List_reflect_Method_.singleton = new List_reflect_Method_();
function List_reflect_Method__construct(args) {
    return new Array();
}
List_reflect_Method_.prototype.construct = List_reflect_Method__construct;

function List_reflect_Method___getClass() {
    return null;
}
List_reflect_Method_.prototype._getClass = List_reflect_Method___getClass;

function List_reflect_Method___getField(name) {
    return null;
}
List_reflect_Method_.prototype._getField = List_reflect_Method___getField;

function List_reflect_Method___setField(name, value) {}
List_reflect_Method_.prototype._setField = List_reflect_Method___setField;


// CLASS Map_String_reflect_Class_

function Map_String_reflect_Class_() {
    Map_String_reflect_Class_.super_.call(this, "Map<String,reflect.Class>");
    (this).name = "Map";
    (this).parameters = ["String", "reflect.Class"];
    (this).fields = [];
    (this).methods = [];
}
exports.Map_String_reflect_Class_ = Map_String_reflect_Class_;
_qrt.util.inherits(Map_String_reflect_Class_, reflect.Class);

function Map_String_reflect_Class___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
Map_String_reflect_Class_.prototype.__init_fields__ = Map_String_reflect_Class___init_fields__;
Map_String_reflect_Class_.singleton = new Map_String_reflect_Class_();
function Map_String_reflect_Class__construct(args) {
    return new Map();
}
Map_String_reflect_Class_.prototype.construct = Map_String_reflect_Class__construct;

function Map_String_reflect_Class___getClass() {
    return null;
}
Map_String_reflect_Class_.prototype._getClass = Map_String_reflect_Class___getClass;

function Map_String_reflect_Class___getField(name) {
    return null;
}
Map_String_reflect_Class_.prototype._getField = Map_String_reflect_Class___getField;

function Map_String_reflect_Class___setField(name, value) {}
Map_String_reflect_Class_.prototype._setField = Map_String_reflect_Class___setField;


// CLASS reflect_Class

function reflect_Class() {
    reflect_Class.super_.call(this, "reflect.Class");
    (this).name = "Class";
    (this).parameters = [];
    (this).fields = [new reflect.Field("Map<String,reflect.Class>", "classes"), new reflect.Field("reflect.Class", "VOID"), new reflect.Field("reflect.Class", "BOOL"), new reflect.Field("reflect.Class", "INT"), new reflect.Field("reflect.Class", "LONG"), new reflect.Field("reflect.Class", "STRING"), new reflect.Field("String", "id"), new reflect.Field("String", "name"), new reflect.Field("List<reflect.Class>", "parameters"), new reflect.Field("List<reflect.Field>", "fields"), new reflect.Field("List<reflect.Method>", "methods")];
    (this).methods = [];
}
exports.reflect_Class = reflect_Class;
_qrt.util.inherits(reflect_Class, reflect.Class);

function reflect_Class__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
reflect_Class.prototype.__init_fields__ = reflect_Class__init_fields__;
reflect_Class.singleton = new reflect_Class();
function reflect_Class_construct(args) {
    return new reflect.Class((args)[0]);
}
reflect_Class.prototype.construct = reflect_Class_construct;

function reflect_Class__getClass() {
    return null;
}
reflect_Class.prototype._getClass = reflect_Class__getClass;

function reflect_Class__getField(name) {
    return null;
}
reflect_Class.prototype._getField = reflect_Class__getField;

function reflect_Class__setField(name, value) {}
reflect_Class.prototype._setField = reflect_Class__setField;


// CLASS reflect_Field

function reflect_Field() {
    reflect_Field.super_.call(this, "reflect.Field");
    (this).name = "Field";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "type"), new reflect.Field("String", "name")];
    (this).methods = [];
}
exports.reflect_Field = reflect_Field;
_qrt.util.inherits(reflect_Field, reflect.Class);

function reflect_Field__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
reflect_Field.prototype.__init_fields__ = reflect_Field__init_fields__;
reflect_Field.singleton = new reflect_Field();
function reflect_Field_construct(args) {
    return new reflect.Field((args)[0], (args)[1]);
}
reflect_Field.prototype.construct = reflect_Field_construct;

function reflect_Field__getClass() {
    return null;
}
reflect_Field.prototype._getClass = reflect_Field__getClass;

function reflect_Field__getField(name) {
    return null;
}
reflect_Field.prototype._getField = reflect_Field__getField;

function reflect_Field__setField(name, value) {}
reflect_Field.prototype._setField = reflect_Field__setField;


// CLASS pkg_Foo_Object__foo_Method

function pkg_Foo_Object__foo_Method() {
    pkg_Foo_Object__foo_Method.super_.call(this, "Object", "foo", []);
}
exports.pkg_Foo_Object__foo_Method = pkg_Foo_Object__foo_Method;
_qrt.util.inherits(pkg_Foo_Object__foo_Method, reflect.Method);

function pkg_Foo_Object__foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_Foo_Object__foo_Method.prototype.__init_fields__ = pkg_Foo_Object__foo_Method__init_fields__;

function pkg_Foo_Object__foo_Method_invoke(object, args) {
    var obj = object;
    return (obj).foo();
}
pkg_Foo_Object__foo_Method.prototype.invoke = pkg_Foo_Object__foo_Method_invoke;

function pkg_Foo_Object__foo_Method__getClass() {
    return null;
}
pkg_Foo_Object__foo_Method.prototype._getClass = pkg_Foo_Object__foo_Method__getClass;

function pkg_Foo_Object__foo_Method__getField(name) {
    return null;
}
pkg_Foo_Object__foo_Method.prototype._getField = pkg_Foo_Object__foo_Method__getField;

function pkg_Foo_Object__foo_Method__setField(name, value) {}
pkg_Foo_Object__foo_Method.prototype._setField = pkg_Foo_Object__foo_Method__setField;

// CLASS pkg_Foo_Object__get_Method

function pkg_Foo_Object__get_Method() {
    pkg_Foo_Object__get_Method.super_.call(this, "Object", "get", []);
}
exports.pkg_Foo_Object__get_Method = pkg_Foo_Object__get_Method;
_qrt.util.inherits(pkg_Foo_Object__get_Method, reflect.Method);

function pkg_Foo_Object__get_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_Foo_Object__get_Method.prototype.__init_fields__ = pkg_Foo_Object__get_Method__init_fields__;

function pkg_Foo_Object__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
pkg_Foo_Object__get_Method.prototype.invoke = pkg_Foo_Object__get_Method_invoke;

function pkg_Foo_Object__get_Method__getClass() {
    return null;
}
pkg_Foo_Object__get_Method.prototype._getClass = pkg_Foo_Object__get_Method__getClass;

function pkg_Foo_Object__get_Method__getField(name) {
    return null;
}
pkg_Foo_Object__get_Method.prototype._getField = pkg_Foo_Object__get_Method__getField;

function pkg_Foo_Object__get_Method__setField(name, value) {}
pkg_Foo_Object__get_Method.prototype._setField = pkg_Foo_Object__get_Method__setField;

// CLASS pkg_Foo_Object_

function pkg_Foo_Object_() {
    pkg_Foo_Object_.super_.call(this, "pkg.Foo<Object>");
    (this).name = "Foo";
    (this).parameters = ["Object"];
    (this).fields = [];
    (this).methods = [new pkg_Foo_Object__foo_Method(), new pkg_Foo_Object__get_Method()];
}
exports.pkg_Foo_Object_ = pkg_Foo_Object_;
_qrt.util.inherits(pkg_Foo_Object_, reflect.Class);

function pkg_Foo_Object___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_Foo_Object_.prototype.__init_fields__ = pkg_Foo_Object___init_fields__;
pkg_Foo_Object_.singleton = new pkg_Foo_Object_();
function pkg_Foo_Object__construct(args) {
    return null;
}
pkg_Foo_Object_.prototype.construct = pkg_Foo_Object__construct;

function pkg_Foo_Object___getClass() {
    return null;
}
pkg_Foo_Object_.prototype._getClass = pkg_Foo_Object___getClass;

function pkg_Foo_Object___getField(name) {
    return null;
}
pkg_Foo_Object_.prototype._getField = pkg_Foo_Object___getField;

function pkg_Foo_Object___setField(name, value) {}
pkg_Foo_Object_.prototype._setField = pkg_Foo_Object___setField;


// CLASS pkg_StringFoo_get_Method

function pkg_StringFoo_get_Method() {
    pkg_StringFoo_get_Method.super_.call(this, "String", "get", []);
}
exports.pkg_StringFoo_get_Method = pkg_StringFoo_get_Method;
_qrt.util.inherits(pkg_StringFoo_get_Method, reflect.Method);

function pkg_StringFoo_get_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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

// CLASS pkg_StringFoo

function pkg_StringFoo() {
    pkg_StringFoo.super_.call(this, "pkg.StringFoo");
    (this).name = "StringFoo";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_StringFoo_get_Method()];
}
exports.pkg_StringFoo = pkg_StringFoo;
_qrt.util.inherits(pkg_StringFoo, reflect.Class);

function pkg_StringFoo__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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


// CLASS pkg_Box_String_

function pkg_Box_String_() {
    pkg_Box_String_.super_.call(this, "pkg.Box<String>");
    (this).name = "Box";
    (this).parameters = ["String"];
    (this).fields = [new reflect.Field("String", "contents")];
    (this).methods = [];
}
exports.pkg_Box_String_ = pkg_Box_String_;
_qrt.util.inherits(pkg_Box_String_, reflect.Class);

function pkg_Box_String___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_Box_String_.prototype.__init_fields__ = pkg_Box_String___init_fields__;
pkg_Box_String_.singleton = new pkg_Box_String_();
function pkg_Box_String__construct(args) {
    return new pkg.Box((args)[0]);
}
pkg_Box_String_.prototype.construct = pkg_Box_String__construct;

function pkg_Box_String___getClass() {
    return null;
}
pkg_Box_String_.prototype._getClass = pkg_Box_String___getClass;

function pkg_Box_String___getField(name) {
    return null;
}
pkg_Box_String_.prototype._getField = pkg_Box_String___getField;

function pkg_Box_String___setField(name, value) {}
pkg_Box_String_.prototype._setField = pkg_Box_String___setField;


// CLASS pkg_StringBox

function pkg_StringBox() {
    pkg_StringBox.super_.call(this, "pkg.StringBox");
    (this).name = "StringBox";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "contents")];
    (this).methods = [];
}
exports.pkg_StringBox = pkg_StringBox;
_qrt.util.inherits(pkg_StringBox, reflect.Class);

function pkg_StringBox__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
Root.pkg_Foo_Object__md = pkg_Foo_Object_.singleton;
Root.pkg_StringFoo_md = pkg_StringFoo.singleton;
Root.pkg_Box_String__md = pkg_Box_String_.singleton;
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

var pkg = require('../pkg');
exports.pkg = pkg;
