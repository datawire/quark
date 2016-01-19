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


// CLASS test1_Test

function test1_Test() {
    test1_Test.super_.call(this, "test1.Test");
    (this).name = "Test";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "name")];
    (this).methods = [];
}
exports.test1_Test = test1_Test;
_qrt.util.inherits(test1_Test, reflect.Class);

function test1_Test__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
test1_Test.prototype.__init_fields__ = test1_Test__init_fields__;
test1_Test.singleton = new test1_Test();
function test1_Test_construct(args) {
    return new test1.Test();
}
test1_Test.prototype.construct = test1_Test_construct;

function test1_Test__getClass() {
    return null;
}
test1_Test.prototype._getClass = test1_Test__getClass;

function test1_Test__getField(name) {
    return null;
}
test1_Test.prototype._getField = test1_Test__getField;

function test1_Test__setField(name, value) {}
test1_Test.prototype._setField = test1_Test__setField;


// CLASS test2_Test

function test2_Test() {
    test2_Test.super_.call(this, "test2.Test");
    (this).name = "Test";
    (this).parameters = [];
    (this).fields = [new reflect.Field("String", "name")];
    (this).methods = [];
}
exports.test2_Test = test2_Test;
_qrt.util.inherits(test2_Test, reflect.Class);

function test2_Test__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
test2_Test.prototype.__init_fields__ = test2_Test__init_fields__;
test2_Test.singleton = new test2_Test();
function test2_Test_construct(args) {
    return new test2.Test((args)[0]);
}
test2_Test.prototype.construct = test2_Test_construct;

function test2_Test__getClass() {
    return null;
}
test2_Test.prototype._getClass = test2_Test__getClass;

function test2_Test__getField(name) {
    return null;
}
test2_Test.prototype._getField = test2_Test__getField;

function test2_Test__setField(name, value) {}
test2_Test.prototype._setField = test2_Test__setField;


// CLASS test3_Box_String__get_Method

function test3_Box_String__get_Method() {
    test3_Box_String__get_Method.super_.call(this, "String", "get", []);
}
exports.test3_Box_String__get_Method = test3_Box_String__get_Method;
_qrt.util.inherits(test3_Box_String__get_Method, reflect.Method);

function test3_Box_String__get_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
test3_Box_String__get_Method.prototype.__init_fields__ = test3_Box_String__get_Method__init_fields__;

function test3_Box_String__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
test3_Box_String__get_Method.prototype.invoke = test3_Box_String__get_Method_invoke;

function test3_Box_String__get_Method__getClass() {
    return null;
}
test3_Box_String__get_Method.prototype._getClass = test3_Box_String__get_Method__getClass;

function test3_Box_String__get_Method__getField(name) {
    return null;
}
test3_Box_String__get_Method.prototype._getField = test3_Box_String__get_Method__getField;

function test3_Box_String__get_Method__setField(name, value) {}
test3_Box_String__get_Method.prototype._setField = test3_Box_String__get_Method__setField;

// CLASS test3_Box_String_

function test3_Box_String_() {
    test3_Box_String_.super_.call(this, "test3.Box<String>");
    (this).name = "Box";
    (this).parameters = ["String"];
    (this).fields = [new reflect.Field("String", "contents")];
    (this).methods = [new test3_Box_String__get_Method()];
}
exports.test3_Box_String_ = test3_Box_String_;
_qrt.util.inherits(test3_Box_String_, reflect.Class);

function test3_Box_String___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
test3_Box_String_.prototype.__init_fields__ = test3_Box_String___init_fields__;
test3_Box_String_.singleton = new test3_Box_String_();
function test3_Box_String__construct(args) {
    return new test3.Box((args)[0]);
}
test3_Box_String_.prototype.construct = test3_Box_String__construct;

function test3_Box_String___getClass() {
    return null;
}
test3_Box_String_.prototype._getClass = test3_Box_String___getClass;

function test3_Box_String___getField(name) {
    return null;
}
test3_Box_String_.prototype._getField = test3_Box_String___getField;

function test3_Box_String___setField(name, value) {}
test3_Box_String_.prototype._setField = test3_Box_String___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.test1_Test_md = test1_Test.singleton;
Root.test2_Test_md = test2_Test.singleton;
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

var test1 = require('../test1');
exports.test1 = test1;
var test2 = require('../test2');
exports.test2 = test2;
var test3 = require('../test3');
exports.test3 = test3;
