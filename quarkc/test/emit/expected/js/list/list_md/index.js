var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



// CLASS list_Box_builtin_int__get_Method

function list_Box_builtin_int__get_Method() {
    list_Box_builtin_int__get_Method.super_.call(this, "builtin.int", "get", []);
}
exports.list_Box_builtin_int__get_Method = list_Box_builtin_int__get_Method;
_qrt.util.inherits(list_Box_builtin_int__get_Method, builtin.reflect.Method);

function list_Box_builtin_int__get_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
list_Box_builtin_int__get_Method.prototype.__init_fields__ = list_Box_builtin_int__get_Method__init_fields__;

function list_Box_builtin_int__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
list_Box_builtin_int__get_Method.prototype.invoke = list_Box_builtin_int__get_Method_invoke;

function list_Box_builtin_int__get_Method__getClass() {
    return null;
}
list_Box_builtin_int__get_Method.prototype._getClass = list_Box_builtin_int__get_Method__getClass;

function list_Box_builtin_int__get_Method__getField(name) {
    return null;
}
list_Box_builtin_int__get_Method.prototype._getField = list_Box_builtin_int__get_Method__getField;

function list_Box_builtin_int__get_Method__setField(name, value) {}
list_Box_builtin_int__get_Method.prototype._setField = list_Box_builtin_int__get_Method__setField;

// CLASS list_Box_builtin_int__set_Method

function list_Box_builtin_int__set_Method() {
    list_Box_builtin_int__set_Method.super_.call(this, "builtin.void", "set", ["builtin.int"]);
}
exports.list_Box_builtin_int__set_Method = list_Box_builtin_int__set_Method;
_qrt.util.inherits(list_Box_builtin_int__set_Method, builtin.reflect.Method);

function list_Box_builtin_int__set_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
list_Box_builtin_int__set_Method.prototype.__init_fields__ = list_Box_builtin_int__set_Method__init_fields__;

function list_Box_builtin_int__set_Method_invoke(object, args) {
    var obj = object;
    (obj).set((args)[0]);
    return null;
}
list_Box_builtin_int__set_Method.prototype.invoke = list_Box_builtin_int__set_Method_invoke;

function list_Box_builtin_int__set_Method__getClass() {
    return null;
}
list_Box_builtin_int__set_Method.prototype._getClass = list_Box_builtin_int__set_Method__getClass;

function list_Box_builtin_int__set_Method__getField(name) {
    return null;
}
list_Box_builtin_int__set_Method.prototype._getField = list_Box_builtin_int__set_Method__getField;

function list_Box_builtin_int__set_Method__setField(name, value) {}
list_Box_builtin_int__set_Method.prototype._setField = list_Box_builtin_int__set_Method__setField;

// CLASS list_Box_builtin_int_

function list_Box_builtin_int_() {
    list_Box_builtin_int_.super_.call(this, "list.Box<builtin.int>");
    (this).name = "list.Box";
    (this).parameters = ["builtin.int"];
    (this).fields = [new builtin.reflect.Field("builtin.int", "contents")];
    (this).methods = [new list_Box_builtin_int__get_Method(), new list_Box_builtin_int__set_Method()];
}
exports.list_Box_builtin_int_ = list_Box_builtin_int_;
_qrt.util.inherits(list_Box_builtin_int_, builtin.reflect.Class);

function list_Box_builtin_int___init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
list_Box_builtin_int_.prototype.__init_fields__ = list_Box_builtin_int___init_fields__;
list_Box_builtin_int_.singleton = new list_Box_builtin_int_();
function list_Box_builtin_int__construct(args) {
    return new list.Box();
}
list_Box_builtin_int_.prototype.construct = list_Box_builtin_int__construct;

function list_Box_builtin_int___getClass() {
    return null;
}
list_Box_builtin_int_.prototype._getClass = list_Box_builtin_int___getClass;

function list_Box_builtin_int___getField(name) {
    return null;
}
list_Box_builtin_int_.prototype._getField = list_Box_builtin_int___getField;

function list_Box_builtin_int___setField(name, value) {}
list_Box_builtin_int_.prototype._setField = list_Box_builtin_int___setField;


// CLASS builtin_List_builtin_int_

function builtin_List_builtin_int_() {
    builtin_List_builtin_int_.super_.call(this, "builtin.List<builtin.int>");
    (this).name = "builtin.List";
    (this).parameters = ["builtin.int"];
    (this).fields = [];
    (this).methods = [];
}
exports.builtin_List_builtin_int_ = builtin_List_builtin_int_;
_qrt.util.inherits(builtin_List_builtin_int_, builtin.reflect.Class);

function builtin_List_builtin_int___init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
builtin_List_builtin_int_.prototype.__init_fields__ = builtin_List_builtin_int___init_fields__;
builtin_List_builtin_int_.singleton = new builtin_List_builtin_int_();
function builtin_List_builtin_int__construct(args) {
    return new Array();
}
builtin_List_builtin_int_.prototype.construct = builtin_List_builtin_int__construct;

function builtin_List_builtin_int___getClass() {
    return null;
}
builtin_List_builtin_int_.prototype._getClass = builtin_List_builtin_int___getClass;

function builtin_List_builtin_int___getField(name) {
    return null;
}
builtin_List_builtin_int_.prototype._getField = builtin_List_builtin_int___getField;

function builtin_List_builtin_int___setField(name, value) {}
builtin_List_builtin_int_.prototype._setField = builtin_List_builtin_int___setField;


// CLASS builtin_List_builtin_String_

function builtin_List_builtin_String_() {
    builtin_List_builtin_String_.super_.call(this, "builtin.List<builtin.String>");
    (this).name = "builtin.List";
    (this).parameters = ["builtin.String"];
    (this).fields = [];
    (this).methods = [];
}
exports.builtin_List_builtin_String_ = builtin_List_builtin_String_;
_qrt.util.inherits(builtin_List_builtin_String_, builtin.reflect.Class);

function builtin_List_builtin_String___init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
builtin_List_builtin_String_.prototype.__init_fields__ = builtin_List_builtin_String___init_fields__;
builtin_List_builtin_String_.singleton = new builtin_List_builtin_String_();
function builtin_List_builtin_String__construct(args) {
    return new Array();
}
builtin_List_builtin_String_.prototype.construct = builtin_List_builtin_String__construct;

function builtin_List_builtin_String___getClass() {
    return null;
}
builtin_List_builtin_String_.prototype._getClass = builtin_List_builtin_String___getClass;

function builtin_List_builtin_String___getField(name) {
    return null;
}
builtin_List_builtin_String_.prototype._getField = builtin_List_builtin_String___getField;

function builtin_List_builtin_String___setField(name, value) {}
builtin_List_builtin_String_.prototype._setField = builtin_List_builtin_String___setField;


// CLASS builtin_List_list_Box_builtin_int__

function builtin_List_list_Box_builtin_int__() {
    builtin_List_list_Box_builtin_int__.super_.call(this, "builtin.List<list.Box<builtin.int>>");
    (this).name = "builtin.List";
    (this).parameters = ["list.Box<builtin.int>"];
    (this).fields = [];
    (this).methods = [];
}
exports.builtin_List_list_Box_builtin_int__ = builtin_List_list_Box_builtin_int__;
_qrt.util.inherits(builtin_List_list_Box_builtin_int__, builtin.reflect.Class);

function builtin_List_list_Box_builtin_int____init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
builtin_List_list_Box_builtin_int__.prototype.__init_fields__ = builtin_List_list_Box_builtin_int____init_fields__;
builtin_List_list_Box_builtin_int__.singleton = new builtin_List_list_Box_builtin_int__();
function builtin_List_list_Box_builtin_int___construct(args) {
    return new Array();
}
builtin_List_list_Box_builtin_int__.prototype.construct = builtin_List_list_Box_builtin_int___construct;

function builtin_List_list_Box_builtin_int____getClass() {
    return null;
}
builtin_List_list_Box_builtin_int__.prototype._getClass = builtin_List_list_Box_builtin_int____getClass;

function builtin_List_list_Box_builtin_int____getField(name) {
    return null;
}
builtin_List_list_Box_builtin_int__.prototype._getField = builtin_List_list_Box_builtin_int____getField;

function builtin_List_list_Box_builtin_int____setField(name, value) {}
builtin_List_list_Box_builtin_int__.prototype._setField = builtin_List_list_Box_builtin_int____setField;


// CLASS builtin_List_builtin_List_builtin_int__

function builtin_List_builtin_List_builtin_int__() {
    builtin_List_builtin_List_builtin_int__.super_.call(this, "builtin.List<builtin.List<builtin.int>>");
    (this).name = "builtin.List";
    (this).parameters = ["builtin.List<builtin.int>"];
    (this).fields = [];
    (this).methods = [];
}
exports.builtin_List_builtin_List_builtin_int__ = builtin_List_builtin_List_builtin_int__;
_qrt.util.inherits(builtin_List_builtin_List_builtin_int__, builtin.reflect.Class);

function builtin_List_builtin_List_builtin_int____init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
builtin_List_builtin_List_builtin_int__.prototype.__init_fields__ = builtin_List_builtin_List_builtin_int____init_fields__;
builtin_List_builtin_List_builtin_int__.singleton = new builtin_List_builtin_List_builtin_int__();
function builtin_List_builtin_List_builtin_int___construct(args) {
    return new Array();
}
builtin_List_builtin_List_builtin_int__.prototype.construct = builtin_List_builtin_List_builtin_int___construct;

function builtin_List_builtin_List_builtin_int____getClass() {
    return null;
}
builtin_List_builtin_List_builtin_int__.prototype._getClass = builtin_List_builtin_List_builtin_int____getClass;

function builtin_List_builtin_List_builtin_int____getField(name) {
    return null;
}
builtin_List_builtin_List_builtin_int__.prototype._getField = builtin_List_builtin_List_builtin_int____getField;

function builtin_List_builtin_List_builtin_int____setField(name, value) {}
builtin_List_builtin_List_builtin_int__.prototype._setField = builtin_List_builtin_List_builtin_int____setField;


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
