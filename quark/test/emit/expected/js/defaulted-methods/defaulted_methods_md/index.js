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


// CLASS pkg_A_foo_Method

function pkg_A_foo_Method() {
    pkg_A_foo_Method.super_.call(this, "void", "foo", []);
}
exports.pkg_A_foo_Method = pkg_A_foo_Method;
_qrt.util.inherits(pkg_A_foo_Method, reflect.Method);

function pkg_A_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_A_foo_Method.prototype.__init_fields__ = pkg_A_foo_Method__init_fields__;

function pkg_A_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_A_foo_Method.prototype.invoke = pkg_A_foo_Method_invoke;

function pkg_A_foo_Method__getClass() {
    return null;
}
pkg_A_foo_Method.prototype._getClass = pkg_A_foo_Method__getClass;

function pkg_A_foo_Method__getField(name) {
    return null;
}
pkg_A_foo_Method.prototype._getField = pkg_A_foo_Method__getField;

function pkg_A_foo_Method__setField(name, value) {}
pkg_A_foo_Method.prototype._setField = pkg_A_foo_Method__setField;

// CLASS pkg_A_bar_Method

function pkg_A_bar_Method() {
    pkg_A_bar_Method.super_.call(this, "void", "bar", []);
}
exports.pkg_A_bar_Method = pkg_A_bar_Method;
_qrt.util.inherits(pkg_A_bar_Method, reflect.Method);

function pkg_A_bar_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_A_bar_Method.prototype.__init_fields__ = pkg_A_bar_Method__init_fields__;

function pkg_A_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_A_bar_Method.prototype.invoke = pkg_A_bar_Method_invoke;

function pkg_A_bar_Method__getClass() {
    return null;
}
pkg_A_bar_Method.prototype._getClass = pkg_A_bar_Method__getClass;

function pkg_A_bar_Method__getField(name) {
    return null;
}
pkg_A_bar_Method.prototype._getField = pkg_A_bar_Method__getField;

function pkg_A_bar_Method__setField(name, value) {}
pkg_A_bar_Method.prototype._setField = pkg_A_bar_Method__setField;

// CLASS pkg_A

function pkg_A() {
    pkg_A.super_.call(this, "pkg.A");
    (this).name = "A";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_A_foo_Method(), new pkg_A_bar_Method()];
}
exports.pkg_A = pkg_A;
_qrt.util.inherits(pkg_A, reflect.Class);

function pkg_A__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_A.prototype.__init_fields__ = pkg_A__init_fields__;
pkg_A.singleton = new pkg_A();
function pkg_A_construct(args) {
    return null;
}
pkg_A.prototype.construct = pkg_A_construct;

function pkg_A__getClass() {
    return null;
}
pkg_A.prototype._getClass = pkg_A__getClass;

function pkg_A__getField(name) {
    return null;
}
pkg_A.prototype._getField = pkg_A__getField;

function pkg_A__setField(name, value) {}
pkg_A.prototype._setField = pkg_A__setField;


// CLASS pkg_B_bar_Method

function pkg_B_bar_Method() {
    pkg_B_bar_Method.super_.call(this, "void", "bar", []);
}
exports.pkg_B_bar_Method = pkg_B_bar_Method;
_qrt.util.inherits(pkg_B_bar_Method, reflect.Method);

function pkg_B_bar_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_B_bar_Method.prototype.__init_fields__ = pkg_B_bar_Method__init_fields__;

function pkg_B_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_B_bar_Method.prototype.invoke = pkg_B_bar_Method_invoke;

function pkg_B_bar_Method__getClass() {
    return null;
}
pkg_B_bar_Method.prototype._getClass = pkg_B_bar_Method__getClass;

function pkg_B_bar_Method__getField(name) {
    return null;
}
pkg_B_bar_Method.prototype._getField = pkg_B_bar_Method__getField;

function pkg_B_bar_Method__setField(name, value) {}
pkg_B_bar_Method.prototype._setField = pkg_B_bar_Method__setField;

// CLASS pkg_B

function pkg_B() {
    pkg_B.super_.call(this, "pkg.B");
    (this).name = "B";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_B_bar_Method()];
}
exports.pkg_B = pkg_B;
_qrt.util.inherits(pkg_B, reflect.Class);

function pkg_B__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_B.prototype.__init_fields__ = pkg_B__init_fields__;
pkg_B.singleton = new pkg_B();
function pkg_B_construct(args) {
    return null;
}
pkg_B.prototype.construct = pkg_B_construct;

function pkg_B__getClass() {
    return null;
}
pkg_B.prototype._getClass = pkg_B__getClass;

function pkg_B__getField(name) {
    return null;
}
pkg_B.prototype._getField = pkg_B__getField;

function pkg_B__setField(name, value) {}
pkg_B.prototype._setField = pkg_B__setField;


// CLASS pkg_C_foo_Method

function pkg_C_foo_Method() {
    pkg_C_foo_Method.super_.call(this, "void", "foo", []);
}
exports.pkg_C_foo_Method = pkg_C_foo_Method;
_qrt.util.inherits(pkg_C_foo_Method, reflect.Method);

function pkg_C_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_C_foo_Method.prototype.__init_fields__ = pkg_C_foo_Method__init_fields__;

function pkg_C_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_C_foo_Method.prototype.invoke = pkg_C_foo_Method_invoke;

function pkg_C_foo_Method__getClass() {
    return null;
}
pkg_C_foo_Method.prototype._getClass = pkg_C_foo_Method__getClass;

function pkg_C_foo_Method__getField(name) {
    return null;
}
pkg_C_foo_Method.prototype._getField = pkg_C_foo_Method__getField;

function pkg_C_foo_Method__setField(name, value) {}
pkg_C_foo_Method.prototype._setField = pkg_C_foo_Method__setField;

// CLASS pkg_C

function pkg_C() {
    pkg_C.super_.call(this, "pkg.C");
    (this).name = "C";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_C_foo_Method()];
}
exports.pkg_C = pkg_C;
_qrt.util.inherits(pkg_C, reflect.Class);

function pkg_C__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_C.prototype.__init_fields__ = pkg_C__init_fields__;
pkg_C.singleton = new pkg_C();
function pkg_C_construct(args) {
    return null;
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


// CLASS pkg_T1_foo_Method

function pkg_T1_foo_Method() {
    pkg_T1_foo_Method.super_.call(this, "void", "foo", []);
}
exports.pkg_T1_foo_Method = pkg_T1_foo_Method;
_qrt.util.inherits(pkg_T1_foo_Method, reflect.Method);

function pkg_T1_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T1_foo_Method.prototype.__init_fields__ = pkg_T1_foo_Method__init_fields__;

function pkg_T1_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T1_foo_Method.prototype.invoke = pkg_T1_foo_Method_invoke;

function pkg_T1_foo_Method__getClass() {
    return null;
}
pkg_T1_foo_Method.prototype._getClass = pkg_T1_foo_Method__getClass;

function pkg_T1_foo_Method__getField(name) {
    return null;
}
pkg_T1_foo_Method.prototype._getField = pkg_T1_foo_Method__getField;

function pkg_T1_foo_Method__setField(name, value) {}
pkg_T1_foo_Method.prototype._setField = pkg_T1_foo_Method__setField;

// CLASS pkg_T1

function pkg_T1() {
    pkg_T1.super_.call(this, "pkg.T1");
    (this).name = "T1";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T1_foo_Method()];
}
exports.pkg_T1 = pkg_T1;
_qrt.util.inherits(pkg_T1, reflect.Class);

function pkg_T1__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T1.prototype.__init_fields__ = pkg_T1__init_fields__;
pkg_T1.singleton = new pkg_T1();
function pkg_T1_construct(args) {
    return new pkg.T1();
}
pkg_T1.prototype.construct = pkg_T1_construct;

function pkg_T1__getClass() {
    return null;
}
pkg_T1.prototype._getClass = pkg_T1__getClass;

function pkg_T1__getField(name) {
    return null;
}
pkg_T1.prototype._getField = pkg_T1__getField;

function pkg_T1__setField(name, value) {}
pkg_T1.prototype._setField = pkg_T1__setField;


// CLASS pkg_T2_foo_Method

function pkg_T2_foo_Method() {
    pkg_T2_foo_Method.super_.call(this, "void", "foo", []);
}
exports.pkg_T2_foo_Method = pkg_T2_foo_Method;
_qrt.util.inherits(pkg_T2_foo_Method, reflect.Method);

function pkg_T2_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T2_foo_Method.prototype.__init_fields__ = pkg_T2_foo_Method__init_fields__;

function pkg_T2_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T2_foo_Method.prototype.invoke = pkg_T2_foo_Method_invoke;

function pkg_T2_foo_Method__getClass() {
    return null;
}
pkg_T2_foo_Method.prototype._getClass = pkg_T2_foo_Method__getClass;

function pkg_T2_foo_Method__getField(name) {
    return null;
}
pkg_T2_foo_Method.prototype._getField = pkg_T2_foo_Method__getField;

function pkg_T2_foo_Method__setField(name, value) {}
pkg_T2_foo_Method.prototype._setField = pkg_T2_foo_Method__setField;

// CLASS pkg_T2

function pkg_T2() {
    pkg_T2.super_.call(this, "pkg.T2");
    (this).name = "T2";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T2_foo_Method()];
}
exports.pkg_T2 = pkg_T2;
_qrt.util.inherits(pkg_T2, reflect.Class);

function pkg_T2__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T2.prototype.__init_fields__ = pkg_T2__init_fields__;
pkg_T2.singleton = new pkg_T2();
function pkg_T2_construct(args) {
    return new pkg.T2();
}
pkg_T2.prototype.construct = pkg_T2_construct;

function pkg_T2__getClass() {
    return null;
}
pkg_T2.prototype._getClass = pkg_T2__getClass;

function pkg_T2__getField(name) {
    return null;
}
pkg_T2.prototype._getField = pkg_T2__getField;

function pkg_T2__setField(name, value) {}
pkg_T2.prototype._setField = pkg_T2__setField;


// CLASS pkg_T3_foo_Method

function pkg_T3_foo_Method() {
    pkg_T3_foo_Method.super_.call(this, "void", "foo", []);
}
exports.pkg_T3_foo_Method = pkg_T3_foo_Method;
_qrt.util.inherits(pkg_T3_foo_Method, reflect.Method);

function pkg_T3_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T3_foo_Method.prototype.__init_fields__ = pkg_T3_foo_Method__init_fields__;

function pkg_T3_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T3_foo_Method.prototype.invoke = pkg_T3_foo_Method_invoke;

function pkg_T3_foo_Method__getClass() {
    return null;
}
pkg_T3_foo_Method.prototype._getClass = pkg_T3_foo_Method__getClass;

function pkg_T3_foo_Method__getField(name) {
    return null;
}
pkg_T3_foo_Method.prototype._getField = pkg_T3_foo_Method__getField;

function pkg_T3_foo_Method__setField(name, value) {}
pkg_T3_foo_Method.prototype._setField = pkg_T3_foo_Method__setField;

// CLASS pkg_T3

function pkg_T3() {
    pkg_T3.super_.call(this, "pkg.T3");
    (this).name = "T3";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T3_foo_Method()];
}
exports.pkg_T3 = pkg_T3;
_qrt.util.inherits(pkg_T3, reflect.Class);

function pkg_T3__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T3.prototype.__init_fields__ = pkg_T3__init_fields__;
pkg_T3.singleton = new pkg_T3();
function pkg_T3_construct(args) {
    return new pkg.T3();
}
pkg_T3.prototype.construct = pkg_T3_construct;

function pkg_T3__getClass() {
    return null;
}
pkg_T3.prototype._getClass = pkg_T3__getClass;

function pkg_T3__getField(name) {
    return null;
}
pkg_T3.prototype._getField = pkg_T3__getField;

function pkg_T3__setField(name, value) {}
pkg_T3.prototype._setField = pkg_T3__setField;


// CLASS pkg_T4

function pkg_T4() {
    pkg_T4.super_.call(this, "pkg.T4");
    (this).name = "T4";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.pkg_T4 = pkg_T4;
_qrt.util.inherits(pkg_T4, reflect.Class);

function pkg_T4__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T4.prototype.__init_fields__ = pkg_T4__init_fields__;
pkg_T4.singleton = new pkg_T4();
function pkg_T4_construct(args) {
    return new pkg.T4();
}
pkg_T4.prototype.construct = pkg_T4_construct;

function pkg_T4__getClass() {
    return null;
}
pkg_T4.prototype._getClass = pkg_T4__getClass;

function pkg_T4__getField(name) {
    return null;
}
pkg_T4.prototype._getField = pkg_T4__getField;

function pkg_T4__setField(name, value) {}
pkg_T4.prototype._setField = pkg_T4__setField;


// CLASS pkg_T5_foo_Method

function pkg_T5_foo_Method() {
    pkg_T5_foo_Method.super_.call(this, "void", "foo", []);
}
exports.pkg_T5_foo_Method = pkg_T5_foo_Method;
_qrt.util.inherits(pkg_T5_foo_Method, reflect.Method);

function pkg_T5_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T5_foo_Method.prototype.__init_fields__ = pkg_T5_foo_Method__init_fields__;

function pkg_T5_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T5_foo_Method.prototype.invoke = pkg_T5_foo_Method_invoke;

function pkg_T5_foo_Method__getClass() {
    return null;
}
pkg_T5_foo_Method.prototype._getClass = pkg_T5_foo_Method__getClass;

function pkg_T5_foo_Method__getField(name) {
    return null;
}
pkg_T5_foo_Method.prototype._getField = pkg_T5_foo_Method__getField;

function pkg_T5_foo_Method__setField(name, value) {}
pkg_T5_foo_Method.prototype._setField = pkg_T5_foo_Method__setField;

// CLASS pkg_T5

function pkg_T5() {
    pkg_T5.super_.call(this, "pkg.T5");
    (this).name = "T5";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T5_foo_Method()];
}
exports.pkg_T5 = pkg_T5;
_qrt.util.inherits(pkg_T5, reflect.Class);

function pkg_T5__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T5.prototype.__init_fields__ = pkg_T5__init_fields__;
pkg_T5.singleton = new pkg_T5();
function pkg_T5_construct(args) {
    return new pkg.T5();
}
pkg_T5.prototype.construct = pkg_T5_construct;

function pkg_T5__getClass() {
    return null;
}
pkg_T5.prototype._getClass = pkg_T5__getClass;

function pkg_T5__getField(name) {
    return null;
}
pkg_T5.prototype._getField = pkg_T5__getField;

function pkg_T5__setField(name, value) {}
pkg_T5.prototype._setField = pkg_T5__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.pkg_A_md = pkg_A.singleton;
Root.pkg_B_md = pkg_B.singleton;
Root.pkg_C_md = pkg_C.singleton;
Root.pkg_T1_md = pkg_T1.singleton;
Root.pkg_T2_md = pkg_T2.singleton;
Root.pkg_T3_md = pkg_T3.singleton;
Root.pkg_T4_md = pkg_T4.singleton;
Root.pkg_T5_md = pkg_T5.singleton;
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
