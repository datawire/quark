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


// CLASS pkg_C_event1_Method

function pkg_C_event1_Method() {
    pkg_C_event1_Method.super_.call(this, "void", "event1", []);
}
exports.pkg_C_event1_Method = pkg_C_event1_Method;
_qrt.util.inherits(pkg_C_event1_Method, reflect.Method);

function pkg_C_event1_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_C_event1_Method.prototype.__init_fields__ = pkg_C_event1_Method__init_fields__;

function pkg_C_event1_Method_invoke(object, args) {
    var obj = object;
    (obj).event1();
    return null;
}
pkg_C_event1_Method.prototype.invoke = pkg_C_event1_Method_invoke;

function pkg_C_event1_Method__getClass() {
    return null;
}
pkg_C_event1_Method.prototype._getClass = pkg_C_event1_Method__getClass;

function pkg_C_event1_Method__getField(name) {
    return null;
}
pkg_C_event1_Method.prototype._getField = pkg_C_event1_Method__getField;

function pkg_C_event1_Method__setField(name, value) {}
pkg_C_event1_Method.prototype._setField = pkg_C_event1_Method__setField;

// CLASS pkg_C

function pkg_C() {
    pkg_C.super_.call(this, "pkg.C");
    (this).name = "C";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_C_event1_Method()];
}
exports.pkg_C = pkg_C;
_qrt.util.inherits(pkg_C, reflect.Class);

function pkg_C__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_C.prototype.__init_fields__ = pkg_C__init_fields__;
pkg_C.singleton = new pkg_C();
function pkg_C_construct(args) {
    return new pkg.C();
}
pkg_C.prototype.construct = pkg_C_construct;

function pkg_C__getClass() {
    return null;
}
pkg_C.prototype._getClass = pkg_C__getClass;

function pkg_C__getField(name) {
    return null;
}
pkg_C.prototype._getField = pkg_C__getField;

function pkg_C__setField(name, value) {}
pkg_C.prototype._setField = pkg_C__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.pkg_C_md = pkg_C.singleton;
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
