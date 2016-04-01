var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS static_Foo_setCount_Method

function static_Foo_setCount_Method() {
    static_Foo_setCount_Method.super_.call(this, "quark.void", "setCount", ["quark.int"]);
}
exports.static_Foo_setCount_Method = static_Foo_setCount_Method;
_qrt.util.inherits(static_Foo_setCount_Method, quark.reflect.Method);

function static_Foo_setCount_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
static_Foo_setCount_Method.prototype.__init_fields__ = static_Foo_setCount_Method__init_fields__;

function static_Foo_setCount_Method_invoke(object, args) {
    var obj = object;
    static.Foo.setCount((args)[0]);
    return null;
}
static_Foo_setCount_Method.prototype.invoke = static_Foo_setCount_Method_invoke;

function static_Foo_setCount_Method__getClass() {
    return null;
}
static_Foo_setCount_Method.prototype._getClass = static_Foo_setCount_Method__getClass;

function static_Foo_setCount_Method__getField(name) {
    return null;
}
static_Foo_setCount_Method.prototype._getField = static_Foo_setCount_Method__getField;

function static_Foo_setCount_Method__setField(name, value) {}
static_Foo_setCount_Method.prototype._setField = static_Foo_setCount_Method__setField;

// CLASS static_Foo_getCount_Method

function static_Foo_getCount_Method() {
    static_Foo_getCount_Method.super_.call(this, "quark.int", "getCount", []);
}
exports.static_Foo_getCount_Method = static_Foo_getCount_Method;
_qrt.util.inherits(static_Foo_getCount_Method, quark.reflect.Method);

function static_Foo_getCount_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
static_Foo_getCount_Method.prototype.__init_fields__ = static_Foo_getCount_Method__init_fields__;

function static_Foo_getCount_Method_invoke(object, args) {
    var obj = object;
    return static.Foo.getCount();
}
static_Foo_getCount_Method.prototype.invoke = static_Foo_getCount_Method_invoke;

function static_Foo_getCount_Method__getClass() {
    return null;
}
static_Foo_getCount_Method.prototype._getClass = static_Foo_getCount_Method__getClass;

function static_Foo_getCount_Method__getField(name) {
    return null;
}
static_Foo_getCount_Method.prototype._getField = static_Foo_getCount_Method__getField;

function static_Foo_getCount_Method__setField(name, value) {}
static_Foo_getCount_Method.prototype._setField = static_Foo_getCount_Method__setField;

// CLASS static_Foo_test1_Method

function static_Foo_test1_Method() {
    static_Foo_test1_Method.super_.call(this, "quark.void", "test1", []);
}
exports.static_Foo_test1_Method = static_Foo_test1_Method;
_qrt.util.inherits(static_Foo_test1_Method, quark.reflect.Method);

function static_Foo_test1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
static_Foo_test1_Method.prototype.__init_fields__ = static_Foo_test1_Method__init_fields__;

function static_Foo_test1_Method_invoke(object, args) {
    var obj = object;
    (obj).test1();
    return null;
}
static_Foo_test1_Method.prototype.invoke = static_Foo_test1_Method_invoke;

function static_Foo_test1_Method__getClass() {
    return null;
}
static_Foo_test1_Method.prototype._getClass = static_Foo_test1_Method__getClass;

function static_Foo_test1_Method__getField(name) {
    return null;
}
static_Foo_test1_Method.prototype._getField = static_Foo_test1_Method__getField;

function static_Foo_test1_Method__setField(name, value) {}
static_Foo_test1_Method.prototype._setField = static_Foo_test1_Method__setField;

// CLASS static_Foo_test2_Method

function static_Foo_test2_Method() {
    static_Foo_test2_Method.super_.call(this, "quark.void", "test2", []);
}
exports.static_Foo_test2_Method = static_Foo_test2_Method;
_qrt.util.inherits(static_Foo_test2_Method, quark.reflect.Method);

function static_Foo_test2_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
static_Foo_test2_Method.prototype.__init_fields__ = static_Foo_test2_Method__init_fields__;

function static_Foo_test2_Method_invoke(object, args) {
    var obj = object;
    (obj).test2();
    return null;
}
static_Foo_test2_Method.prototype.invoke = static_Foo_test2_Method_invoke;

function static_Foo_test2_Method__getClass() {
    return null;
}
static_Foo_test2_Method.prototype._getClass = static_Foo_test2_Method__getClass;

function static_Foo_test2_Method__getField(name) {
    return null;
}
static_Foo_test2_Method.prototype._getField = static_Foo_test2_Method__getField;

function static_Foo_test2_Method__setField(name, value) {}
static_Foo_test2_Method.prototype._setField = static_Foo_test2_Method__setField;

// CLASS static_Foo_test3_Method

function static_Foo_test3_Method() {
    static_Foo_test3_Method.super_.call(this, "quark.void", "test3", []);
}
exports.static_Foo_test3_Method = static_Foo_test3_Method;
_qrt.util.inherits(static_Foo_test3_Method, quark.reflect.Method);

function static_Foo_test3_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
static_Foo_test3_Method.prototype.__init_fields__ = static_Foo_test3_Method__init_fields__;

function static_Foo_test3_Method_invoke(object, args) {
    var obj = object;
    (obj).test3();
    return null;
}
static_Foo_test3_Method.prototype.invoke = static_Foo_test3_Method_invoke;

function static_Foo_test3_Method__getClass() {
    return null;
}
static_Foo_test3_Method.prototype._getClass = static_Foo_test3_Method__getClass;

function static_Foo_test3_Method__getField(name) {
    return null;
}
static_Foo_test3_Method.prototype._getField = static_Foo_test3_Method__getField;

function static_Foo_test3_Method__setField(name, value) {}
static_Foo_test3_Method.prototype._setField = static_Foo_test3_Method__setField;

// CLASS static_Foo_test4_Method

function static_Foo_test4_Method() {
    static_Foo_test4_Method.super_.call(this, "quark.void", "test4", []);
}
exports.static_Foo_test4_Method = static_Foo_test4_Method;
_qrt.util.inherits(static_Foo_test4_Method, quark.reflect.Method);

function static_Foo_test4_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
static_Foo_test4_Method.prototype.__init_fields__ = static_Foo_test4_Method__init_fields__;

function static_Foo_test4_Method_invoke(object, args) {
    var obj = object;
    (obj).test4();
    return null;
}
static_Foo_test4_Method.prototype.invoke = static_Foo_test4_Method_invoke;

function static_Foo_test4_Method__getClass() {
    return null;
}
static_Foo_test4_Method.prototype._getClass = static_Foo_test4_Method__getClass;

function static_Foo_test4_Method__getField(name) {
    return null;
}
static_Foo_test4_Method.prototype._getField = static_Foo_test4_Method__getField;

function static_Foo_test4_Method__setField(name, value) {}
static_Foo_test4_Method.prototype._setField = static_Foo_test4_Method__setField;

// CLASS static_Foo

function static_Foo() {
    static_Foo.super_.call(this, "static.Foo");
    (this).name = "static.Foo";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.int", "count")];
    (this).methods = [new static_Foo_setCount_Method(), new static_Foo_getCount_Method(), new static_Foo_test1_Method(), new static_Foo_test2_Method(), new static_Foo_test3_Method(), new static_Foo_test4_Method()];
}
exports.static_Foo = static_Foo;
_qrt.util.inherits(static_Foo, quark.reflect.Class);

function static_Foo__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
static_Foo.prototype.__init_fields__ = static_Foo__init_fields__;
static_Foo.singleton = new static_Foo();
function static_Foo_construct(args) {
    return new static.Foo();
}
static_Foo.prototype.construct = static_Foo_construct;

function static_Foo__getClass() {
    return null;
}
static_Foo.prototype._getClass = static_Foo__getClass;

function static_Foo__getField(name) {
    return null;
}
static_Foo.prototype._getField = static_Foo__getField;

function static_Foo__setField(name, value) {}
static_Foo.prototype._setField = static_Foo__setField;


// CLASS quark_List_quark_String_

function quark_List_quark_String_() {
    quark_List_quark_String_.super_.call(this, "quark.List<quark.String>");
    (this).name = "quark.List";
    (this).parameters = ["quark.String"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_String_ = quark_List_quark_String_;
_qrt.util.inherits(quark_List_quark_String_, quark.reflect.Class);

function quark_List_quark_String___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_String_.prototype.__init_fields__ = quark_List_quark_String___init_fields__;
quark_List_quark_String_.singleton = new quark_List_quark_String_();
function quark_List_quark_String__construct(args) {
    return new Array();
}
quark_List_quark_String_.prototype.construct = quark_List_quark_String__construct;

function quark_List_quark_String___getClass() {
    return null;
}
quark_List_quark_String_.prototype._getClass = quark_List_quark_String___getClass;

function quark_List_quark_String___getField(name) {
    return null;
}
quark_List_quark_String_.prototype._getField = quark_List_quark_String___getField;

function quark_List_quark_String___setField(name, value) {}
quark_List_quark_String_.prototype._setField = quark_List_quark_String___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.static_Foo_md = static_Foo.singleton;
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

var static = require('../static/index.js');
exports.static = static;
