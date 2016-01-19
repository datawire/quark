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


// CLASS pkg_Bar_go_Method

function pkg_Bar_go_Method() {
    pkg_Bar_go_Method.super_.call(this, "void", "go", []);
}
exports.pkg_Bar_go_Method = pkg_Bar_go_Method;
_qrt.util.inherits(pkg_Bar_go_Method, reflect.Method);

function pkg_Bar_go_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
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
    (this).name = "Bar";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_Bar_go_Method()];
}
exports.pkg_Bar = pkg_Bar;
_qrt.util.inherits(pkg_Bar, reflect.Class);

function pkg_Bar__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
    (this).name = "Foo";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "name")];
    (this).methods = [];
}
exports.pkg_Foo = pkg_Foo;
_qrt.util.inherits(pkg_Foo, reflect.Class);

function pkg_Foo__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
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
