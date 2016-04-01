var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS int_methods_Test_test_Method

function int_methods_Test_test_Method() {
    int_methods_Test_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.int_methods_Test_test_Method = int_methods_Test_test_Method;
_qrt.util.inherits(int_methods_Test_test_Method, quark.reflect.Method);

function int_methods_Test_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
int_methods_Test_test_Method.prototype.__init_fields__ = int_methods_Test_test_Method__init_fields__;

function int_methods_Test_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
int_methods_Test_test_Method.prototype.invoke = int_methods_Test_test_Method_invoke;

function int_methods_Test_test_Method__getClass() {
    return null;
}
int_methods_Test_test_Method.prototype._getClass = int_methods_Test_test_Method__getClass;

function int_methods_Test_test_Method__getField(name) {
    return null;
}
int_methods_Test_test_Method.prototype._getField = int_methods_Test_test_Method__getField;

function int_methods_Test_test_Method__setField(name, value) {}
int_methods_Test_test_Method.prototype._setField = int_methods_Test_test_Method__setField;

// CLASS int_methods_Test

function int_methods_Test() {
    int_methods_Test.super_.call(this, "int_methods.Test");
    (this).name = "int_methods.Test";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new int_methods_Test_test_Method()];
}
exports.int_methods_Test = int_methods_Test;
_qrt.util.inherits(int_methods_Test, quark.reflect.Class);

function int_methods_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
int_methods_Test.prototype.__init_fields__ = int_methods_Test__init_fields__;
int_methods_Test.singleton = new int_methods_Test();
function int_methods_Test_construct(args) {
    return new int_methods.Test();
}
int_methods_Test.prototype.construct = int_methods_Test_construct;

function int_methods_Test__getClass() {
    return null;
}
int_methods_Test.prototype._getClass = int_methods_Test__getClass;

function int_methods_Test__getField(name) {
    return null;
}
int_methods_Test.prototype._getField = int_methods_Test__getField;

function int_methods_Test__setField(name, value) {}
int_methods_Test.prototype._setField = int_methods_Test__setField;


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
Root.int_methods_Test_md = int_methods_Test.singleton;
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

var int_methods = require('../int_methods/index.js');
exports.int_methods = int_methods;
