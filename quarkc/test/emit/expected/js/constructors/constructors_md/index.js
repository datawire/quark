var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS test1_Test

function test1_Test() {
    test1_Test.super_.call(this, "test1.Test");
    (this).name = "test1.Test";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [];
}
exports.test1_Test = test1_Test;
_qrt.util.inherits(test1_Test, quark.reflect.Class);

function test1_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
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
    (this).name = "test2.Test";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [];
}
exports.test2_Test = test2_Test;
_qrt.util.inherits(test2_Test, quark.reflect.Class);

function test2_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
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


// CLASS test3_Box_quark_String__get_Method

function test3_Box_quark_String__get_Method() {
    test3_Box_quark_String__get_Method.super_.call(this, "quark.String", "get", []);
}
exports.test3_Box_quark_String__get_Method = test3_Box_quark_String__get_Method;
_qrt.util.inherits(test3_Box_quark_String__get_Method, quark.reflect.Method);

function test3_Box_quark_String__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
test3_Box_quark_String__get_Method.prototype.__init_fields__ = test3_Box_quark_String__get_Method__init_fields__;

function test3_Box_quark_String__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
test3_Box_quark_String__get_Method.prototype.invoke = test3_Box_quark_String__get_Method_invoke;

function test3_Box_quark_String__get_Method__getClass() {
    return null;
}
test3_Box_quark_String__get_Method.prototype._getClass = test3_Box_quark_String__get_Method__getClass;

function test3_Box_quark_String__get_Method__getField(name) {
    return null;
}
test3_Box_quark_String__get_Method.prototype._getField = test3_Box_quark_String__get_Method__getField;

function test3_Box_quark_String__get_Method__setField(name, value) {}
test3_Box_quark_String__get_Method.prototype._setField = test3_Box_quark_String__get_Method__setField;

// CLASS test3_Box_quark_String_

function test3_Box_quark_String_() {
    test3_Box_quark_String_.super_.call(this, "test3.Box<quark.String>");
    (this).name = "test3.Box";
    (this).parameters = ["quark.String"];
    (this).fields = [new quark.reflect.Field("quark.String", "contents")];
    (this).methods = [new test3_Box_quark_String__get_Method()];
}
exports.test3_Box_quark_String_ = test3_Box_quark_String_;
_qrt.util.inherits(test3_Box_quark_String_, quark.reflect.Class);

function test3_Box_quark_String___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
test3_Box_quark_String_.prototype.__init_fields__ = test3_Box_quark_String___init_fields__;
test3_Box_quark_String_.singleton = new test3_Box_quark_String_();
function test3_Box_quark_String__construct(args) {
    return new test3.Box((args)[0]);
}
test3_Box_quark_String_.prototype.construct = test3_Box_quark_String__construct;

function test3_Box_quark_String___getClass() {
    return null;
}
test3_Box_quark_String_.prototype._getClass = test3_Box_quark_String___getClass;

function test3_Box_quark_String___getField(name) {
    return null;
}
test3_Box_quark_String_.prototype._getField = test3_Box_quark_String___getField;

function test3_Box_quark_String___setField(name, value) {}
test3_Box_quark_String_.prototype._setField = test3_Box_quark_String___setField;


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

var test1 = require('../test1/index.js');
exports.test1 = test1;
var test2 = require('../test2/index.js');
exports.test2 = test2;
var test3 = require('../test3/index.js');
exports.test3 = test3;
