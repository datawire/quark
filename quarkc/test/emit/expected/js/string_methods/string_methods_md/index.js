var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



// CLASS string_methods_string_test_check_Method

function string_methods_string_test_check_Method() {
    string_methods_string_test_check_Method.super_.call(this, "builtin.void", "check", ["builtin.String", "builtin.String", "builtin.String", "builtin.String"]);
}
exports.string_methods_string_test_check_Method = string_methods_string_test_check_Method;
_qrt.util.inherits(string_methods_string_test_check_Method, builtin.reflect.Method);

function string_methods_string_test_check_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_string_test_check_Method.prototype.__init_fields__ = string_methods_string_test_check_Method__init_fields__;

function string_methods_string_test_check_Method_invoke(object, args) {
    var obj = object;
    (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
    return null;
}
string_methods_string_test_check_Method.prototype.invoke = string_methods_string_test_check_Method_invoke;

function string_methods_string_test_check_Method__getClass() {
    return null;
}
string_methods_string_test_check_Method.prototype._getClass = string_methods_string_test_check_Method__getClass;

function string_methods_string_test_check_Method__getField(name) {
    return null;
}
string_methods_string_test_check_Method.prototype._getField = string_methods_string_test_check_Method__getField;

function string_methods_string_test_check_Method__setField(name, value) {}
string_methods_string_test_check_Method.prototype._setField = string_methods_string_test_check_Method__setField;

// CLASS string_methods_string_test

function string_methods_string_test() {
    string_methods_string_test.super_.call(this, "string_methods.string_test");
    (this).name = "string_methods.string_test";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new string_methods_string_test_check_Method()];
}
exports.string_methods_string_test = string_methods_string_test;
_qrt.util.inherits(string_methods_string_test, builtin.reflect.Class);

function string_methods_string_test__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
string_methods_string_test.prototype.__init_fields__ = string_methods_string_test__init_fields__;
string_methods_string_test.singleton = new string_methods_string_test();
function string_methods_string_test_construct(args) {
    return new string_methods.string_test();
}
string_methods_string_test.prototype.construct = string_methods_string_test_construct;

function string_methods_string_test__getClass() {
    return null;
}
string_methods_string_test.prototype._getClass = string_methods_string_test__getClass;

function string_methods_string_test__getField(name) {
    return null;
}
string_methods_string_test.prototype._getField = string_methods_string_test__getField;

function string_methods_string_test__setField(name, value) {}
string_methods_string_test.prototype._setField = string_methods_string_test__setField;


// CLASS string_methods_test_size_does_Method

function string_methods_test_size_does_Method() {
    string_methods_test_size_does_Method.super_.call(this, "string_methods.test_size", "does", ["builtin.int"]);
}
exports.string_methods_test_size_does_Method = string_methods_test_size_does_Method;
_qrt.util.inherits(string_methods_test_size_does_Method, builtin.reflect.Method);

function string_methods_test_size_does_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_size_does_Method.prototype.__init_fields__ = string_methods_test_size_does_Method__init_fields__;

function string_methods_test_size_does_Method_invoke(object, args) {
    var obj = object;
    return (obj).does((args)[0]);
}
string_methods_test_size_does_Method.prototype.invoke = string_methods_test_size_does_Method_invoke;

function string_methods_test_size_does_Method__getClass() {
    return null;
}
string_methods_test_size_does_Method.prototype._getClass = string_methods_test_size_does_Method__getClass;

function string_methods_test_size_does_Method__getField(name) {
    return null;
}
string_methods_test_size_does_Method.prototype._getField = string_methods_test_size_does_Method__getField;

function string_methods_test_size_does_Method__setField(name, value) {}
string_methods_test_size_does_Method.prototype._setField = string_methods_test_size_does_Method__setField;

// CLASS string_methods_test_size_check_Method

function string_methods_test_size_check_Method() {
    string_methods_test_size_check_Method.super_.call(this, "builtin.void", "check", ["builtin.String", "builtin.String", "builtin.String", "builtin.String"]);
}
exports.string_methods_test_size_check_Method = string_methods_test_size_check_Method;
_qrt.util.inherits(string_methods_test_size_check_Method, builtin.reflect.Method);

function string_methods_test_size_check_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_size_check_Method.prototype.__init_fields__ = string_methods_test_size_check_Method__init_fields__;

function string_methods_test_size_check_Method_invoke(object, args) {
    var obj = object;
    (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
    return null;
}
string_methods_test_size_check_Method.prototype.invoke = string_methods_test_size_check_Method_invoke;

function string_methods_test_size_check_Method__getClass() {
    return null;
}
string_methods_test_size_check_Method.prototype._getClass = string_methods_test_size_check_Method__getClass;

function string_methods_test_size_check_Method__getField(name) {
    return null;
}
string_methods_test_size_check_Method.prototype._getField = string_methods_test_size_check_Method__getField;

function string_methods_test_size_check_Method__setField(name, value) {}
string_methods_test_size_check_Method.prototype._setField = string_methods_test_size_check_Method__setField;

// CLASS string_methods_test_size

function string_methods_test_size() {
    string_methods_test_size.super_.call(this, "string_methods.test_size");
    (this).name = "string_methods.test_size";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "what")];
    (this).methods = [new string_methods_test_size_does_Method(), new string_methods_test_size_check_Method()];
}
exports.string_methods_test_size = string_methods_test_size;
_qrt.util.inherits(string_methods_test_size, builtin.reflect.Class);

function string_methods_test_size__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
string_methods_test_size.prototype.__init_fields__ = string_methods_test_size__init_fields__;
string_methods_test_size.singleton = new string_methods_test_size();
function string_methods_test_size_construct(args) {
    return new string_methods.test_size((args)[0]);
}
string_methods_test_size.prototype.construct = string_methods_test_size_construct;

function string_methods_test_size__getClass() {
    return null;
}
string_methods_test_size.prototype._getClass = string_methods_test_size__getClass;

function string_methods_test_size__getField(name) {
    return null;
}
string_methods_test_size.prototype._getField = string_methods_test_size__getField;

function string_methods_test_size__setField(name, value) {}
string_methods_test_size.prototype._setField = string_methods_test_size__setField;


// CLASS string_methods_test_startsWith_that_Method

function string_methods_test_startsWith_that_Method() {
    string_methods_test_startsWith_that_Method.super_.call(this, "string_methods.test_startsWith", "that", ["builtin.String"]);
}
exports.string_methods_test_startsWith_that_Method = string_methods_test_startsWith_that_Method;
_qrt.util.inherits(string_methods_test_startsWith_that_Method, builtin.reflect.Method);

function string_methods_test_startsWith_that_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_startsWith_that_Method.prototype.__init_fields__ = string_methods_test_startsWith_that_Method__init_fields__;

function string_methods_test_startsWith_that_Method_invoke(object, args) {
    var obj = object;
    return (obj).that((args)[0]);
}
string_methods_test_startsWith_that_Method.prototype.invoke = string_methods_test_startsWith_that_Method_invoke;

function string_methods_test_startsWith_that_Method__getClass() {
    return null;
}
string_methods_test_startsWith_that_Method.prototype._getClass = string_methods_test_startsWith_that_Method__getClass;

function string_methods_test_startsWith_that_Method__getField(name) {
    return null;
}
string_methods_test_startsWith_that_Method.prototype._getField = string_methods_test_startsWith_that_Method__getField;

function string_methods_test_startsWith_that_Method__setField(name, value) {}
string_methods_test_startsWith_that_Method.prototype._setField = string_methods_test_startsWith_that_Method__setField;

// CLASS string_methods_test_startsWith_does_Method

function string_methods_test_startsWith_does_Method() {
    string_methods_test_startsWith_does_Method.super_.call(this, "string_methods.test_startsWith", "does", ["builtin.bool"]);
}
exports.string_methods_test_startsWith_does_Method = string_methods_test_startsWith_does_Method;
_qrt.util.inherits(string_methods_test_startsWith_does_Method, builtin.reflect.Method);

function string_methods_test_startsWith_does_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_startsWith_does_Method.prototype.__init_fields__ = string_methods_test_startsWith_does_Method__init_fields__;

function string_methods_test_startsWith_does_Method_invoke(object, args) {
    var obj = object;
    return (obj).does((args)[0]);
}
string_methods_test_startsWith_does_Method.prototype.invoke = string_methods_test_startsWith_does_Method_invoke;

function string_methods_test_startsWith_does_Method__getClass() {
    return null;
}
string_methods_test_startsWith_does_Method.prototype._getClass = string_methods_test_startsWith_does_Method__getClass;

function string_methods_test_startsWith_does_Method__getField(name) {
    return null;
}
string_methods_test_startsWith_does_Method.prototype._getField = string_methods_test_startsWith_does_Method__getField;

function string_methods_test_startsWith_does_Method__setField(name, value) {}
string_methods_test_startsWith_does_Method.prototype._setField = string_methods_test_startsWith_does_Method__setField;

// CLASS string_methods_test_startsWith_check_Method

function string_methods_test_startsWith_check_Method() {
    string_methods_test_startsWith_check_Method.super_.call(this, "builtin.void", "check", ["builtin.String", "builtin.String", "builtin.String", "builtin.String"]);
}
exports.string_methods_test_startsWith_check_Method = string_methods_test_startsWith_check_Method;
_qrt.util.inherits(string_methods_test_startsWith_check_Method, builtin.reflect.Method);

function string_methods_test_startsWith_check_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_startsWith_check_Method.prototype.__init_fields__ = string_methods_test_startsWith_check_Method__init_fields__;

function string_methods_test_startsWith_check_Method_invoke(object, args) {
    var obj = object;
    (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
    return null;
}
string_methods_test_startsWith_check_Method.prototype.invoke = string_methods_test_startsWith_check_Method_invoke;

function string_methods_test_startsWith_check_Method__getClass() {
    return null;
}
string_methods_test_startsWith_check_Method.prototype._getClass = string_methods_test_startsWith_check_Method__getClass;

function string_methods_test_startsWith_check_Method__getField(name) {
    return null;
}
string_methods_test_startsWith_check_Method.prototype._getField = string_methods_test_startsWith_check_Method__getField;

function string_methods_test_startsWith_check_Method__setField(name, value) {}
string_methods_test_startsWith_check_Method.prototype._setField = string_methods_test_startsWith_check_Method__setField;

// CLASS string_methods_test_startsWith

function string_methods_test_startsWith() {
    string_methods_test_startsWith.super_.call(this, "string_methods.test_startsWith");
    (this).name = "string_methods.test_startsWith";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "what"), new builtin.reflect.Field("builtin.String", "_that")];
    (this).methods = [new string_methods_test_startsWith_that_Method(), new string_methods_test_startsWith_does_Method(), new string_methods_test_startsWith_check_Method()];
}
exports.string_methods_test_startsWith = string_methods_test_startsWith;
_qrt.util.inherits(string_methods_test_startsWith, builtin.reflect.Class);

function string_methods_test_startsWith__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
string_methods_test_startsWith.prototype.__init_fields__ = string_methods_test_startsWith__init_fields__;
string_methods_test_startsWith.singleton = new string_methods_test_startsWith();
function string_methods_test_startsWith_construct(args) {
    return new string_methods.test_startsWith((args)[0]);
}
string_methods_test_startsWith.prototype.construct = string_methods_test_startsWith_construct;

function string_methods_test_startsWith__getClass() {
    return null;
}
string_methods_test_startsWith.prototype._getClass = string_methods_test_startsWith__getClass;

function string_methods_test_startsWith__getField(name) {
    return null;
}
string_methods_test_startsWith.prototype._getField = string_methods_test_startsWith__getField;

function string_methods_test_startsWith__setField(name, value) {}
string_methods_test_startsWith.prototype._setField = string_methods_test_startsWith__setField;


// CLASS string_methods_test_endsWith_that_Method

function string_methods_test_endsWith_that_Method() {
    string_methods_test_endsWith_that_Method.super_.call(this, "string_methods.test_endsWith", "that", ["builtin.String"]);
}
exports.string_methods_test_endsWith_that_Method = string_methods_test_endsWith_that_Method;
_qrt.util.inherits(string_methods_test_endsWith_that_Method, builtin.reflect.Method);

function string_methods_test_endsWith_that_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_endsWith_that_Method.prototype.__init_fields__ = string_methods_test_endsWith_that_Method__init_fields__;

function string_methods_test_endsWith_that_Method_invoke(object, args) {
    var obj = object;
    return (obj).that((args)[0]);
}
string_methods_test_endsWith_that_Method.prototype.invoke = string_methods_test_endsWith_that_Method_invoke;

function string_methods_test_endsWith_that_Method__getClass() {
    return null;
}
string_methods_test_endsWith_that_Method.prototype._getClass = string_methods_test_endsWith_that_Method__getClass;

function string_methods_test_endsWith_that_Method__getField(name) {
    return null;
}
string_methods_test_endsWith_that_Method.prototype._getField = string_methods_test_endsWith_that_Method__getField;

function string_methods_test_endsWith_that_Method__setField(name, value) {}
string_methods_test_endsWith_that_Method.prototype._setField = string_methods_test_endsWith_that_Method__setField;

// CLASS string_methods_test_endsWith_does_Method

function string_methods_test_endsWith_does_Method() {
    string_methods_test_endsWith_does_Method.super_.call(this, "string_methods.test_endsWith", "does", ["builtin.bool"]);
}
exports.string_methods_test_endsWith_does_Method = string_methods_test_endsWith_does_Method;
_qrt.util.inherits(string_methods_test_endsWith_does_Method, builtin.reflect.Method);

function string_methods_test_endsWith_does_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_endsWith_does_Method.prototype.__init_fields__ = string_methods_test_endsWith_does_Method__init_fields__;

function string_methods_test_endsWith_does_Method_invoke(object, args) {
    var obj = object;
    return (obj).does((args)[0]);
}
string_methods_test_endsWith_does_Method.prototype.invoke = string_methods_test_endsWith_does_Method_invoke;

function string_methods_test_endsWith_does_Method__getClass() {
    return null;
}
string_methods_test_endsWith_does_Method.prototype._getClass = string_methods_test_endsWith_does_Method__getClass;

function string_methods_test_endsWith_does_Method__getField(name) {
    return null;
}
string_methods_test_endsWith_does_Method.prototype._getField = string_methods_test_endsWith_does_Method__getField;

function string_methods_test_endsWith_does_Method__setField(name, value) {}
string_methods_test_endsWith_does_Method.prototype._setField = string_methods_test_endsWith_does_Method__setField;

// CLASS string_methods_test_endsWith_check_Method

function string_methods_test_endsWith_check_Method() {
    string_methods_test_endsWith_check_Method.super_.call(this, "builtin.void", "check", ["builtin.String", "builtin.String", "builtin.String", "builtin.String"]);
}
exports.string_methods_test_endsWith_check_Method = string_methods_test_endsWith_check_Method;
_qrt.util.inherits(string_methods_test_endsWith_check_Method, builtin.reflect.Method);

function string_methods_test_endsWith_check_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_endsWith_check_Method.prototype.__init_fields__ = string_methods_test_endsWith_check_Method__init_fields__;

function string_methods_test_endsWith_check_Method_invoke(object, args) {
    var obj = object;
    (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
    return null;
}
string_methods_test_endsWith_check_Method.prototype.invoke = string_methods_test_endsWith_check_Method_invoke;

function string_methods_test_endsWith_check_Method__getClass() {
    return null;
}
string_methods_test_endsWith_check_Method.prototype._getClass = string_methods_test_endsWith_check_Method__getClass;

function string_methods_test_endsWith_check_Method__getField(name) {
    return null;
}
string_methods_test_endsWith_check_Method.prototype._getField = string_methods_test_endsWith_check_Method__getField;

function string_methods_test_endsWith_check_Method__setField(name, value) {}
string_methods_test_endsWith_check_Method.prototype._setField = string_methods_test_endsWith_check_Method__setField;

// CLASS string_methods_test_endsWith

function string_methods_test_endsWith() {
    string_methods_test_endsWith.super_.call(this, "string_methods.test_endsWith");
    (this).name = "string_methods.test_endsWith";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "what"), new builtin.reflect.Field("builtin.String", "_that")];
    (this).methods = [new string_methods_test_endsWith_that_Method(), new string_methods_test_endsWith_does_Method(), new string_methods_test_endsWith_check_Method()];
}
exports.string_methods_test_endsWith = string_methods_test_endsWith;
_qrt.util.inherits(string_methods_test_endsWith, builtin.reflect.Class);

function string_methods_test_endsWith__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
string_methods_test_endsWith.prototype.__init_fields__ = string_methods_test_endsWith__init_fields__;
string_methods_test_endsWith.singleton = new string_methods_test_endsWith();
function string_methods_test_endsWith_construct(args) {
    return new string_methods.test_endsWith((args)[0]);
}
string_methods_test_endsWith.prototype.construct = string_methods_test_endsWith_construct;

function string_methods_test_endsWith__getClass() {
    return null;
}
string_methods_test_endsWith.prototype._getClass = string_methods_test_endsWith__getClass;

function string_methods_test_endsWith__getField(name) {
    return null;
}
string_methods_test_endsWith.prototype._getField = string_methods_test_endsWith__getField;

function string_methods_test_endsWith__setField(name, value) {}
string_methods_test_endsWith.prototype._setField = string_methods_test_endsWith__setField;


// CLASS string_methods_test_find_that_Method

function string_methods_test_find_that_Method() {
    string_methods_test_find_that_Method.super_.call(this, "string_methods.test_find", "that", ["builtin.String"]);
}
exports.string_methods_test_find_that_Method = string_methods_test_find_that_Method;
_qrt.util.inherits(string_methods_test_find_that_Method, builtin.reflect.Method);

function string_methods_test_find_that_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_find_that_Method.prototype.__init_fields__ = string_methods_test_find_that_Method__init_fields__;

function string_methods_test_find_that_Method_invoke(object, args) {
    var obj = object;
    return (obj).that((args)[0]);
}
string_methods_test_find_that_Method.prototype.invoke = string_methods_test_find_that_Method_invoke;

function string_methods_test_find_that_Method__getClass() {
    return null;
}
string_methods_test_find_that_Method.prototype._getClass = string_methods_test_find_that_Method__getClass;

function string_methods_test_find_that_Method__getField(name) {
    return null;
}
string_methods_test_find_that_Method.prototype._getField = string_methods_test_find_that_Method__getField;

function string_methods_test_find_that_Method__setField(name, value) {}
string_methods_test_find_that_Method.prototype._setField = string_methods_test_find_that_Method__setField;

// CLASS string_methods_test_find_does_Method

function string_methods_test_find_does_Method() {
    string_methods_test_find_does_Method.super_.call(this, "string_methods.test_find", "does", ["builtin.int"]);
}
exports.string_methods_test_find_does_Method = string_methods_test_find_does_Method;
_qrt.util.inherits(string_methods_test_find_does_Method, builtin.reflect.Method);

function string_methods_test_find_does_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_find_does_Method.prototype.__init_fields__ = string_methods_test_find_does_Method__init_fields__;

function string_methods_test_find_does_Method_invoke(object, args) {
    var obj = object;
    return (obj).does((args)[0]);
}
string_methods_test_find_does_Method.prototype.invoke = string_methods_test_find_does_Method_invoke;

function string_methods_test_find_does_Method__getClass() {
    return null;
}
string_methods_test_find_does_Method.prototype._getClass = string_methods_test_find_does_Method__getClass;

function string_methods_test_find_does_Method__getField(name) {
    return null;
}
string_methods_test_find_does_Method.prototype._getField = string_methods_test_find_does_Method__getField;

function string_methods_test_find_does_Method__setField(name, value) {}
string_methods_test_find_does_Method.prototype._setField = string_methods_test_find_does_Method__setField;

// CLASS string_methods_test_find_check_Method

function string_methods_test_find_check_Method() {
    string_methods_test_find_check_Method.super_.call(this, "builtin.void", "check", ["builtin.String", "builtin.String", "builtin.String", "builtin.String"]);
}
exports.string_methods_test_find_check_Method = string_methods_test_find_check_Method;
_qrt.util.inherits(string_methods_test_find_check_Method, builtin.reflect.Method);

function string_methods_test_find_check_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_find_check_Method.prototype.__init_fields__ = string_methods_test_find_check_Method__init_fields__;

function string_methods_test_find_check_Method_invoke(object, args) {
    var obj = object;
    (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
    return null;
}
string_methods_test_find_check_Method.prototype.invoke = string_methods_test_find_check_Method_invoke;

function string_methods_test_find_check_Method__getClass() {
    return null;
}
string_methods_test_find_check_Method.prototype._getClass = string_methods_test_find_check_Method__getClass;

function string_methods_test_find_check_Method__getField(name) {
    return null;
}
string_methods_test_find_check_Method.prototype._getField = string_methods_test_find_check_Method__getField;

function string_methods_test_find_check_Method__setField(name, value) {}
string_methods_test_find_check_Method.prototype._setField = string_methods_test_find_check_Method__setField;

// CLASS string_methods_test_find

function string_methods_test_find() {
    string_methods_test_find.super_.call(this, "string_methods.test_find");
    (this).name = "string_methods.test_find";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "what"), new builtin.reflect.Field("builtin.String", "_that")];
    (this).methods = [new string_methods_test_find_that_Method(), new string_methods_test_find_does_Method(), new string_methods_test_find_check_Method()];
}
exports.string_methods_test_find = string_methods_test_find;
_qrt.util.inherits(string_methods_test_find, builtin.reflect.Class);

function string_methods_test_find__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
string_methods_test_find.prototype.__init_fields__ = string_methods_test_find__init_fields__;
string_methods_test_find.singleton = new string_methods_test_find();
function string_methods_test_find_construct(args) {
    return new string_methods.test_find((args)[0]);
}
string_methods_test_find.prototype.construct = string_methods_test_find_construct;

function string_methods_test_find__getClass() {
    return null;
}
string_methods_test_find.prototype._getClass = string_methods_test_find__getClass;

function string_methods_test_find__getField(name) {
    return null;
}
string_methods_test_find.prototype._getField = string_methods_test_find__getField;

function string_methods_test_find__setField(name, value) {}
string_methods_test_find.prototype._setField = string_methods_test_find__setField;


// CLASS string_methods_test_substring_that_Method

function string_methods_test_substring_that_Method() {
    string_methods_test_substring_that_Method.super_.call(this, "string_methods.test_substring", "that", ["builtin.int", "builtin.int"]);
}
exports.string_methods_test_substring_that_Method = string_methods_test_substring_that_Method;
_qrt.util.inherits(string_methods_test_substring_that_Method, builtin.reflect.Method);

function string_methods_test_substring_that_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_substring_that_Method.prototype.__init_fields__ = string_methods_test_substring_that_Method__init_fields__;

function string_methods_test_substring_that_Method_invoke(object, args) {
    var obj = object;
    return (obj).that((args)[0], (args)[1]);
}
string_methods_test_substring_that_Method.prototype.invoke = string_methods_test_substring_that_Method_invoke;

function string_methods_test_substring_that_Method__getClass() {
    return null;
}
string_methods_test_substring_that_Method.prototype._getClass = string_methods_test_substring_that_Method__getClass;

function string_methods_test_substring_that_Method__getField(name) {
    return null;
}
string_methods_test_substring_that_Method.prototype._getField = string_methods_test_substring_that_Method__getField;

function string_methods_test_substring_that_Method__setField(name, value) {}
string_methods_test_substring_that_Method.prototype._setField = string_methods_test_substring_that_Method__setField;

// CLASS string_methods_test_substring_does_Method

function string_methods_test_substring_does_Method() {
    string_methods_test_substring_does_Method.super_.call(this, "string_methods.test_substring", "does", ["builtin.String"]);
}
exports.string_methods_test_substring_does_Method = string_methods_test_substring_does_Method;
_qrt.util.inherits(string_methods_test_substring_does_Method, builtin.reflect.Method);

function string_methods_test_substring_does_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_substring_does_Method.prototype.__init_fields__ = string_methods_test_substring_does_Method__init_fields__;

function string_methods_test_substring_does_Method_invoke(object, args) {
    var obj = object;
    return (obj).does((args)[0]);
}
string_methods_test_substring_does_Method.prototype.invoke = string_methods_test_substring_does_Method_invoke;

function string_methods_test_substring_does_Method__getClass() {
    return null;
}
string_methods_test_substring_does_Method.prototype._getClass = string_methods_test_substring_does_Method__getClass;

function string_methods_test_substring_does_Method__getField(name) {
    return null;
}
string_methods_test_substring_does_Method.prototype._getField = string_methods_test_substring_does_Method__getField;

function string_methods_test_substring_does_Method__setField(name, value) {}
string_methods_test_substring_does_Method.prototype._setField = string_methods_test_substring_does_Method__setField;

// CLASS string_methods_test_substring_check_Method

function string_methods_test_substring_check_Method() {
    string_methods_test_substring_check_Method.super_.call(this, "builtin.void", "check", ["builtin.String", "builtin.String", "builtin.String", "builtin.String"]);
}
exports.string_methods_test_substring_check_Method = string_methods_test_substring_check_Method;
_qrt.util.inherits(string_methods_test_substring_check_Method, builtin.reflect.Method);

function string_methods_test_substring_check_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_substring_check_Method.prototype.__init_fields__ = string_methods_test_substring_check_Method__init_fields__;

function string_methods_test_substring_check_Method_invoke(object, args) {
    var obj = object;
    (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
    return null;
}
string_methods_test_substring_check_Method.prototype.invoke = string_methods_test_substring_check_Method_invoke;

function string_methods_test_substring_check_Method__getClass() {
    return null;
}
string_methods_test_substring_check_Method.prototype._getClass = string_methods_test_substring_check_Method__getClass;

function string_methods_test_substring_check_Method__getField(name) {
    return null;
}
string_methods_test_substring_check_Method.prototype._getField = string_methods_test_substring_check_Method__getField;

function string_methods_test_substring_check_Method__setField(name, value) {}
string_methods_test_substring_check_Method.prototype._setField = string_methods_test_substring_check_Method__setField;

// CLASS string_methods_test_substring

function string_methods_test_substring() {
    string_methods_test_substring.super_.call(this, "string_methods.test_substring");
    (this).name = "string_methods.test_substring";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "what"), new builtin.reflect.Field("builtin.int", "start"), new builtin.reflect.Field("builtin.int", "end")];
    (this).methods = [new string_methods_test_substring_that_Method(), new string_methods_test_substring_does_Method(), new string_methods_test_substring_check_Method()];
}
exports.string_methods_test_substring = string_methods_test_substring;
_qrt.util.inherits(string_methods_test_substring, builtin.reflect.Class);

function string_methods_test_substring__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
string_methods_test_substring.prototype.__init_fields__ = string_methods_test_substring__init_fields__;
string_methods_test_substring.singleton = new string_methods_test_substring();
function string_methods_test_substring_construct(args) {
    return new string_methods.test_substring((args)[0]);
}
string_methods_test_substring.prototype.construct = string_methods_test_substring_construct;

function string_methods_test_substring__getClass() {
    return null;
}
string_methods_test_substring.prototype._getClass = string_methods_test_substring__getClass;

function string_methods_test_substring__getField(name) {
    return null;
}
string_methods_test_substring.prototype._getField = string_methods_test_substring__getField;

function string_methods_test_substring__setField(name, value) {}
string_methods_test_substring.prototype._setField = string_methods_test_substring__setField;


// CLASS string_methods_test_replace_that_Method

function string_methods_test_replace_that_Method() {
    string_methods_test_replace_that_Method.super_.call(this, "string_methods.test_replace", "that", ["builtin.String", "builtin.String"]);
}
exports.string_methods_test_replace_that_Method = string_methods_test_replace_that_Method;
_qrt.util.inherits(string_methods_test_replace_that_Method, builtin.reflect.Method);

function string_methods_test_replace_that_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_replace_that_Method.prototype.__init_fields__ = string_methods_test_replace_that_Method__init_fields__;

function string_methods_test_replace_that_Method_invoke(object, args) {
    var obj = object;
    return (obj).that((args)[0], (args)[1]);
}
string_methods_test_replace_that_Method.prototype.invoke = string_methods_test_replace_that_Method_invoke;

function string_methods_test_replace_that_Method__getClass() {
    return null;
}
string_methods_test_replace_that_Method.prototype._getClass = string_methods_test_replace_that_Method__getClass;

function string_methods_test_replace_that_Method__getField(name) {
    return null;
}
string_methods_test_replace_that_Method.prototype._getField = string_methods_test_replace_that_Method__getField;

function string_methods_test_replace_that_Method__setField(name, value) {}
string_methods_test_replace_that_Method.prototype._setField = string_methods_test_replace_that_Method__setField;

// CLASS string_methods_test_replace_does_Method

function string_methods_test_replace_does_Method() {
    string_methods_test_replace_does_Method.super_.call(this, "string_methods.test_replace", "does", ["builtin.String"]);
}
exports.string_methods_test_replace_does_Method = string_methods_test_replace_does_Method;
_qrt.util.inherits(string_methods_test_replace_does_Method, builtin.reflect.Method);

function string_methods_test_replace_does_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_replace_does_Method.prototype.__init_fields__ = string_methods_test_replace_does_Method__init_fields__;

function string_methods_test_replace_does_Method_invoke(object, args) {
    var obj = object;
    return (obj).does((args)[0]);
}
string_methods_test_replace_does_Method.prototype.invoke = string_methods_test_replace_does_Method_invoke;

function string_methods_test_replace_does_Method__getClass() {
    return null;
}
string_methods_test_replace_does_Method.prototype._getClass = string_methods_test_replace_does_Method__getClass;

function string_methods_test_replace_does_Method__getField(name) {
    return null;
}
string_methods_test_replace_does_Method.prototype._getField = string_methods_test_replace_does_Method__getField;

function string_methods_test_replace_does_Method__setField(name, value) {}
string_methods_test_replace_does_Method.prototype._setField = string_methods_test_replace_does_Method__setField;

// CLASS string_methods_test_replace_check_Method

function string_methods_test_replace_check_Method() {
    string_methods_test_replace_check_Method.super_.call(this, "builtin.void", "check", ["builtin.String", "builtin.String", "builtin.String", "builtin.String"]);
}
exports.string_methods_test_replace_check_Method = string_methods_test_replace_check_Method;
_qrt.util.inherits(string_methods_test_replace_check_Method, builtin.reflect.Method);

function string_methods_test_replace_check_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_replace_check_Method.prototype.__init_fields__ = string_methods_test_replace_check_Method__init_fields__;

function string_methods_test_replace_check_Method_invoke(object, args) {
    var obj = object;
    (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
    return null;
}
string_methods_test_replace_check_Method.prototype.invoke = string_methods_test_replace_check_Method_invoke;

function string_methods_test_replace_check_Method__getClass() {
    return null;
}
string_methods_test_replace_check_Method.prototype._getClass = string_methods_test_replace_check_Method__getClass;

function string_methods_test_replace_check_Method__getField(name) {
    return null;
}
string_methods_test_replace_check_Method.prototype._getField = string_methods_test_replace_check_Method__getField;

function string_methods_test_replace_check_Method__setField(name, value) {}
string_methods_test_replace_check_Method.prototype._setField = string_methods_test_replace_check_Method__setField;

// CLASS string_methods_test_replace

function string_methods_test_replace() {
    string_methods_test_replace.super_.call(this, "string_methods.test_replace");
    (this).name = "string_methods.test_replace";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "what"), new builtin.reflect.Field("builtin.String", "start"), new builtin.reflect.Field("builtin.String", "end")];
    (this).methods = [new string_methods_test_replace_that_Method(), new string_methods_test_replace_does_Method(), new string_methods_test_replace_check_Method()];
}
exports.string_methods_test_replace = string_methods_test_replace;
_qrt.util.inherits(string_methods_test_replace, builtin.reflect.Class);

function string_methods_test_replace__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
string_methods_test_replace.prototype.__init_fields__ = string_methods_test_replace__init_fields__;
string_methods_test_replace.singleton = new string_methods_test_replace();
function string_methods_test_replace_construct(args) {
    return new string_methods.test_replace((args)[0]);
}
string_methods_test_replace.prototype.construct = string_methods_test_replace_construct;

function string_methods_test_replace__getClass() {
    return null;
}
string_methods_test_replace.prototype._getClass = string_methods_test_replace__getClass;

function string_methods_test_replace__getField(name) {
    return null;
}
string_methods_test_replace.prototype._getField = string_methods_test_replace__getField;

function string_methods_test_replace__setField(name, value) {}
string_methods_test_replace.prototype._setField = string_methods_test_replace__setField;


// CLASS string_methods_test_join_that_Method

function string_methods_test_join_that_Method() {
    string_methods_test_join_that_Method.super_.call(this, "string_methods.test_join", "that", []);
}
exports.string_methods_test_join_that_Method = string_methods_test_join_that_Method;
_qrt.util.inherits(string_methods_test_join_that_Method, builtin.reflect.Method);

function string_methods_test_join_that_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_join_that_Method.prototype.__init_fields__ = string_methods_test_join_that_Method__init_fields__;

function string_methods_test_join_that_Method_invoke(object, args) {
    var obj = object;
    return (obj).that();
}
string_methods_test_join_that_Method.prototype.invoke = string_methods_test_join_that_Method_invoke;

function string_methods_test_join_that_Method__getClass() {
    return null;
}
string_methods_test_join_that_Method.prototype._getClass = string_methods_test_join_that_Method__getClass;

function string_methods_test_join_that_Method__getField(name) {
    return null;
}
string_methods_test_join_that_Method.prototype._getField = string_methods_test_join_that_Method__getField;

function string_methods_test_join_that_Method__setField(name, value) {}
string_methods_test_join_that_Method.prototype._setField = string_methods_test_join_that_Method__setField;

// CLASS string_methods_test_join_a_Method

function string_methods_test_join_a_Method() {
    string_methods_test_join_a_Method.super_.call(this, "string_methods.test_join", "a", ["builtin.String"]);
}
exports.string_methods_test_join_a_Method = string_methods_test_join_a_Method;
_qrt.util.inherits(string_methods_test_join_a_Method, builtin.reflect.Method);

function string_methods_test_join_a_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_join_a_Method.prototype.__init_fields__ = string_methods_test_join_a_Method__init_fields__;

function string_methods_test_join_a_Method_invoke(object, args) {
    var obj = object;
    return (obj).a((args)[0]);
}
string_methods_test_join_a_Method.prototype.invoke = string_methods_test_join_a_Method_invoke;

function string_methods_test_join_a_Method__getClass() {
    return null;
}
string_methods_test_join_a_Method.prototype._getClass = string_methods_test_join_a_Method__getClass;

function string_methods_test_join_a_Method__getField(name) {
    return null;
}
string_methods_test_join_a_Method.prototype._getField = string_methods_test_join_a_Method__getField;

function string_methods_test_join_a_Method__setField(name, value) {}
string_methods_test_join_a_Method.prototype._setField = string_methods_test_join_a_Method__setField;

// CLASS string_methods_test_join_does_Method

function string_methods_test_join_does_Method() {
    string_methods_test_join_does_Method.super_.call(this, "string_methods.test_join", "does", ["builtin.String"]);
}
exports.string_methods_test_join_does_Method = string_methods_test_join_does_Method;
_qrt.util.inherits(string_methods_test_join_does_Method, builtin.reflect.Method);

function string_methods_test_join_does_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_join_does_Method.prototype.__init_fields__ = string_methods_test_join_does_Method__init_fields__;

function string_methods_test_join_does_Method_invoke(object, args) {
    var obj = object;
    return (obj).does((args)[0]);
}
string_methods_test_join_does_Method.prototype.invoke = string_methods_test_join_does_Method_invoke;

function string_methods_test_join_does_Method__getClass() {
    return null;
}
string_methods_test_join_does_Method.prototype._getClass = string_methods_test_join_does_Method__getClass;

function string_methods_test_join_does_Method__getField(name) {
    return null;
}
string_methods_test_join_does_Method.prototype._getField = string_methods_test_join_does_Method__getField;

function string_methods_test_join_does_Method__setField(name, value) {}
string_methods_test_join_does_Method.prototype._setField = string_methods_test_join_does_Method__setField;

// CLASS string_methods_test_join_check_Method

function string_methods_test_join_check_Method() {
    string_methods_test_join_check_Method.super_.call(this, "builtin.void", "check", ["builtin.String", "builtin.String", "builtin.String", "builtin.String"]);
}
exports.string_methods_test_join_check_Method = string_methods_test_join_check_Method;
_qrt.util.inherits(string_methods_test_join_check_Method, builtin.reflect.Method);

function string_methods_test_join_check_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_join_check_Method.prototype.__init_fields__ = string_methods_test_join_check_Method__init_fields__;

function string_methods_test_join_check_Method_invoke(object, args) {
    var obj = object;
    (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
    return null;
}
string_methods_test_join_check_Method.prototype.invoke = string_methods_test_join_check_Method_invoke;

function string_methods_test_join_check_Method__getClass() {
    return null;
}
string_methods_test_join_check_Method.prototype._getClass = string_methods_test_join_check_Method__getClass;

function string_methods_test_join_check_Method__getField(name) {
    return null;
}
string_methods_test_join_check_Method.prototype._getField = string_methods_test_join_check_Method__getField;

function string_methods_test_join_check_Method__setField(name, value) {}
string_methods_test_join_check_Method.prototype._setField = string_methods_test_join_check_Method__setField;

// CLASS string_methods_test_join

function string_methods_test_join() {
    string_methods_test_join.super_.call(this, "string_methods.test_join");
    (this).name = "string_methods.test_join";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "what"), new builtin.reflect.Field("builtin.List<builtin.String>", "parts"), new builtin.reflect.Field("builtin.String", "strparts"), new builtin.reflect.Field("builtin.String", "sep")];
    (this).methods = [new string_methods_test_join_that_Method(), new string_methods_test_join_a_Method(), new string_methods_test_join_does_Method(), new string_methods_test_join_check_Method()];
}
exports.string_methods_test_join = string_methods_test_join;
_qrt.util.inherits(string_methods_test_join, builtin.reflect.Class);

function string_methods_test_join__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
string_methods_test_join.prototype.__init_fields__ = string_methods_test_join__init_fields__;
string_methods_test_join.singleton = new string_methods_test_join();
function string_methods_test_join_construct(args) {
    return new string_methods.test_join((args)[0]);
}
string_methods_test_join.prototype.construct = string_methods_test_join_construct;

function string_methods_test_join__getClass() {
    return null;
}
string_methods_test_join.prototype._getClass = string_methods_test_join__getClass;

function string_methods_test_join__getField(name) {
    return null;
}
string_methods_test_join.prototype._getField = string_methods_test_join__getField;

function string_methods_test_join__setField(name, value) {}
string_methods_test_join.prototype._setField = string_methods_test_join__setField;


// CLASS string_methods_test_split_that_Method

function string_methods_test_split_that_Method() {
    string_methods_test_split_that_Method.super_.call(this, "string_methods.test_split", "that", ["builtin.String"]);
}
exports.string_methods_test_split_that_Method = string_methods_test_split_that_Method;
_qrt.util.inherits(string_methods_test_split_that_Method, builtin.reflect.Method);

function string_methods_test_split_that_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_split_that_Method.prototype.__init_fields__ = string_methods_test_split_that_Method__init_fields__;

function string_methods_test_split_that_Method_invoke(object, args) {
    var obj = object;
    return (obj).that((args)[0]);
}
string_methods_test_split_that_Method.prototype.invoke = string_methods_test_split_that_Method_invoke;

function string_methods_test_split_that_Method__getClass() {
    return null;
}
string_methods_test_split_that_Method.prototype._getClass = string_methods_test_split_that_Method__getClass;

function string_methods_test_split_that_Method__getField(name) {
    return null;
}
string_methods_test_split_that_Method.prototype._getField = string_methods_test_split_that_Method__getField;

function string_methods_test_split_that_Method__setField(name, value) {}
string_methods_test_split_that_Method.prototype._setField = string_methods_test_split_that_Method__setField;

// CLASS string_methods_test_split_does_Method

function string_methods_test_split_does_Method() {
    string_methods_test_split_does_Method.super_.call(this, "string_methods.test_split", "does", ["builtin.String"]);
}
exports.string_methods_test_split_does_Method = string_methods_test_split_does_Method;
_qrt.util.inherits(string_methods_test_split_does_Method, builtin.reflect.Method);

function string_methods_test_split_does_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_split_does_Method.prototype.__init_fields__ = string_methods_test_split_does_Method__init_fields__;

function string_methods_test_split_does_Method_invoke(object, args) {
    var obj = object;
    return (obj).does((args)[0]);
}
string_methods_test_split_does_Method.prototype.invoke = string_methods_test_split_does_Method_invoke;

function string_methods_test_split_does_Method__getClass() {
    return null;
}
string_methods_test_split_does_Method.prototype._getClass = string_methods_test_split_does_Method__getClass;

function string_methods_test_split_does_Method__getField(name) {
    return null;
}
string_methods_test_split_does_Method.prototype._getField = string_methods_test_split_does_Method__getField;

function string_methods_test_split_does_Method__setField(name, value) {}
string_methods_test_split_does_Method.prototype._setField = string_methods_test_split_does_Method__setField;

// CLASS string_methods_test_split_check_Method

function string_methods_test_split_check_Method() {
    string_methods_test_split_check_Method.super_.call(this, "builtin.void", "check", ["builtin.String", "builtin.String", "builtin.String", "builtin.String"]);
}
exports.string_methods_test_split_check_Method = string_methods_test_split_check_Method;
_qrt.util.inherits(string_methods_test_split_check_Method, builtin.reflect.Method);

function string_methods_test_split_check_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
string_methods_test_split_check_Method.prototype.__init_fields__ = string_methods_test_split_check_Method__init_fields__;

function string_methods_test_split_check_Method_invoke(object, args) {
    var obj = object;
    (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
    return null;
}
string_methods_test_split_check_Method.prototype.invoke = string_methods_test_split_check_Method_invoke;

function string_methods_test_split_check_Method__getClass() {
    return null;
}
string_methods_test_split_check_Method.prototype._getClass = string_methods_test_split_check_Method__getClass;

function string_methods_test_split_check_Method__getField(name) {
    return null;
}
string_methods_test_split_check_Method.prototype._getField = string_methods_test_split_check_Method__getField;

function string_methods_test_split_check_Method__setField(name, value) {}
string_methods_test_split_check_Method.prototype._setField = string_methods_test_split_check_Method__setField;

// CLASS string_methods_test_split

function string_methods_test_split() {
    string_methods_test_split.super_.call(this, "string_methods.test_split");
    (this).name = "string_methods.test_split";
    (this).parameters = [];
    (this).fields = [new builtin.reflect.Field("builtin.String", "what"), new builtin.reflect.Field("builtin.String", "sep"), new builtin.reflect.Field("builtin.String", "altsep")];
    (this).methods = [new string_methods_test_split_that_Method(), new string_methods_test_split_does_Method(), new string_methods_test_split_check_Method()];
}
exports.string_methods_test_split = string_methods_test_split;
_qrt.util.inherits(string_methods_test_split, builtin.reflect.Class);

function string_methods_test_split__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
string_methods_test_split.prototype.__init_fields__ = string_methods_test_split__init_fields__;
string_methods_test_split.singleton = new string_methods_test_split();
function string_methods_test_split_construct(args) {
    return new string_methods.test_split((args)[0], (args)[1]);
}
string_methods_test_split.prototype.construct = string_methods_test_split_construct;

function string_methods_test_split__getClass() {
    return null;
}
string_methods_test_split.prototype._getClass = string_methods_test_split__getClass;

function string_methods_test_split__getField(name) {
    return null;
}
string_methods_test_split.prototype._getField = string_methods_test_split__getField;

function string_methods_test_split__setField(name, value) {}
string_methods_test_split.prototype._setField = string_methods_test_split__setField;


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


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.string_methods_string_test_md = string_methods_string_test.singleton;
Root.string_methods_test_size_md = string_methods_test_size.singleton;
Root.string_methods_test_startsWith_md = string_methods_test_startsWith.singleton;
Root.string_methods_test_endsWith_md = string_methods_test_endsWith.singleton;
Root.string_methods_test_find_md = string_methods_test_find.singleton;
Root.string_methods_test_substring_md = string_methods_test_substring.singleton;
Root.string_methods_test_replace_md = string_methods_test_replace.singleton;
Root.string_methods_test_join_md = string_methods_test_join.singleton;
Root.string_methods_test_split_md = string_methods_test_split.singleton;
Root.builtin_List_builtin_String__md = builtin_List_builtin_String_.singleton;
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

var string_methods = require('../string_methods/index.js');
exports.string_methods = string_methods;
