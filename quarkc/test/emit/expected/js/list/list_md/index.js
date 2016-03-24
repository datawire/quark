var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS list_Box_quark_int__get_Method

function list_Box_quark_int__get_Method() {
    list_Box_quark_int__get_Method.super_.call(this, "quark.int", "get", []);
}
exports.list_Box_quark_int__get_Method = list_Box_quark_int__get_Method;
_qrt.util.inherits(list_Box_quark_int__get_Method, quark.reflect.Method);

function list_Box_quark_int__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
list_Box_quark_int__get_Method.prototype.__init_fields__ = list_Box_quark_int__get_Method__init_fields__;

function list_Box_quark_int__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
list_Box_quark_int__get_Method.prototype.invoke = list_Box_quark_int__get_Method_invoke;

function list_Box_quark_int__get_Method__getClass() {
    return null;
}
list_Box_quark_int__get_Method.prototype._getClass = list_Box_quark_int__get_Method__getClass;

function list_Box_quark_int__get_Method__getField(name) {
    return null;
}
list_Box_quark_int__get_Method.prototype._getField = list_Box_quark_int__get_Method__getField;

function list_Box_quark_int__get_Method__setField(name, value) {}
list_Box_quark_int__get_Method.prototype._setField = list_Box_quark_int__get_Method__setField;

// CLASS list_Box_quark_int__set_Method

function list_Box_quark_int__set_Method() {
    list_Box_quark_int__set_Method.super_.call(this, "quark.void", "set", ["quark.int"]);
}
exports.list_Box_quark_int__set_Method = list_Box_quark_int__set_Method;
_qrt.util.inherits(list_Box_quark_int__set_Method, quark.reflect.Method);

function list_Box_quark_int__set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
list_Box_quark_int__set_Method.prototype.__init_fields__ = list_Box_quark_int__set_Method__init_fields__;

function list_Box_quark_int__set_Method_invoke(object, args) {
    var obj = object;
    (obj).set((args)[0]);
    return null;
}
list_Box_quark_int__set_Method.prototype.invoke = list_Box_quark_int__set_Method_invoke;

function list_Box_quark_int__set_Method__getClass() {
    return null;
}
list_Box_quark_int__set_Method.prototype._getClass = list_Box_quark_int__set_Method__getClass;

function list_Box_quark_int__set_Method__getField(name) {
    return null;
}
list_Box_quark_int__set_Method.prototype._getField = list_Box_quark_int__set_Method__getField;

function list_Box_quark_int__set_Method__setField(name, value) {}
list_Box_quark_int__set_Method.prototype._setField = list_Box_quark_int__set_Method__setField;

// CLASS list_Box_quark_int_

function list_Box_quark_int_() {
    list_Box_quark_int_.super_.call(this, "list.Box<quark.int>");
    (this).name = "list.Box";
    (this).parameters = ["quark.int"];
    (this).fields = [new quark.reflect.Field("quark.int", "contents")];
    (this).methods = [new list_Box_quark_int__get_Method(), new list_Box_quark_int__set_Method()];
}
exports.list_Box_quark_int_ = list_Box_quark_int_;
_qrt.util.inherits(list_Box_quark_int_, quark.reflect.Class);

function list_Box_quark_int___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
list_Box_quark_int_.prototype.__init_fields__ = list_Box_quark_int___init_fields__;
list_Box_quark_int_.singleton = new list_Box_quark_int_();
function list_Box_quark_int__construct(args) {
    return new list.Box();
}
list_Box_quark_int_.prototype.construct = list_Box_quark_int__construct;

function list_Box_quark_int___getClass() {
    return null;
}
list_Box_quark_int_.prototype._getClass = list_Box_quark_int___getClass;

function list_Box_quark_int___getField(name) {
    return null;
}
list_Box_quark_int_.prototype._getField = list_Box_quark_int___getField;

function list_Box_quark_int___setField(name, value) {}
list_Box_quark_int_.prototype._setField = list_Box_quark_int___setField;


// CLASS quark_List_quark_int_

function quark_List_quark_int_() {
    quark_List_quark_int_.super_.call(this, "quark.List<quark.int>");
    (this).name = "quark.List";
    (this).parameters = ["quark.int"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_int_ = quark_List_quark_int_;
_qrt.util.inherits(quark_List_quark_int_, quark.reflect.Class);

function quark_List_quark_int___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_int_.prototype.__init_fields__ = quark_List_quark_int___init_fields__;
quark_List_quark_int_.singleton = new quark_List_quark_int_();
function quark_List_quark_int__construct(args) {
    return new Array();
}
quark_List_quark_int_.prototype.construct = quark_List_quark_int__construct;

function quark_List_quark_int___getClass() {
    return null;
}
quark_List_quark_int_.prototype._getClass = quark_List_quark_int___getClass;

function quark_List_quark_int___getField(name) {
    return null;
}
quark_List_quark_int_.prototype._getField = quark_List_quark_int___getField;

function quark_List_quark_int___setField(name, value) {}
quark_List_quark_int_.prototype._setField = quark_List_quark_int___setField;


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


// CLASS quark_List_list_Box_quark_int__

function quark_List_list_Box_quark_int__() {
    quark_List_list_Box_quark_int__.super_.call(this, "quark.List<list.Box<quark.int>>");
    (this).name = "quark.List";
    (this).parameters = ["list.Box<quark.int>"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_list_Box_quark_int__ = quark_List_list_Box_quark_int__;
_qrt.util.inherits(quark_List_list_Box_quark_int__, quark.reflect.Class);

function quark_List_list_Box_quark_int____init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_list_Box_quark_int__.prototype.__init_fields__ = quark_List_list_Box_quark_int____init_fields__;
quark_List_list_Box_quark_int__.singleton = new quark_List_list_Box_quark_int__();
function quark_List_list_Box_quark_int___construct(args) {
    return new Array();
}
quark_List_list_Box_quark_int__.prototype.construct = quark_List_list_Box_quark_int___construct;

function quark_List_list_Box_quark_int____getClass() {
    return null;
}
quark_List_list_Box_quark_int__.prototype._getClass = quark_List_list_Box_quark_int____getClass;

function quark_List_list_Box_quark_int____getField(name) {
    return null;
}
quark_List_list_Box_quark_int__.prototype._getField = quark_List_list_Box_quark_int____getField;

function quark_List_list_Box_quark_int____setField(name, value) {}
quark_List_list_Box_quark_int__.prototype._setField = quark_List_list_Box_quark_int____setField;


// CLASS quark_List_quark_List_quark_int__

function quark_List_quark_List_quark_int__() {
    quark_List_quark_List_quark_int__.super_.call(this, "quark.List<quark.List<quark.int>>");
    (this).name = "quark.List";
    (this).parameters = ["quark.List<quark.int>"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_List_quark_int__ = quark_List_quark_List_quark_int__;
_qrt.util.inherits(quark_List_quark_List_quark_int__, quark.reflect.Class);

function quark_List_quark_List_quark_int____init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_List_quark_int__.prototype.__init_fields__ = quark_List_quark_List_quark_int____init_fields__;
quark_List_quark_List_quark_int__.singleton = new quark_List_quark_List_quark_int__();
function quark_List_quark_List_quark_int___construct(args) {
    return new Array();
}
quark_List_quark_List_quark_int__.prototype.construct = quark_List_quark_List_quark_int___construct;

function quark_List_quark_List_quark_int____getClass() {
    return null;
}
quark_List_quark_List_quark_int__.prototype._getClass = quark_List_quark_List_quark_int____getClass;

function quark_List_quark_List_quark_int____getField(name) {
    return null;
}
quark_List_quark_List_quark_int__.prototype._getField = quark_List_quark_List_quark_int____getField;

function quark_List_quark_List_quark_int____setField(name, value) {}
quark_List_quark_List_quark_int__.prototype._setField = quark_List_quark_List_quark_int____setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;

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

var list = require('../list/index.js');
exports.list = list;
