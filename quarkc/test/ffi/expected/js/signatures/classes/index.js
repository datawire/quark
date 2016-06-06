var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var stuff = require('./stuff/index.js');
exports.stuff = stuff;
var quark_ffi_signatures_md = require('../quark_ffi_signatures_md/index.js');
exports.quark_ffi_signatures_md = quark_ffi_signatures_md;



// CLASS Overload

function Overload(name) {
    this.__init_fields__();
}
exports.Overload = Overload;

function Overload__init_fields__() {
    this.name = null;
}
Overload.prototype.__init_fields__ = Overload__init_fields__;
Overload.classes_Overload_ref = null;
function Overload___add__(o) {
    return _qrt.cast(null, function () { return Overload; });
}
Overload.prototype.__add__ = Overload___add__;

function Overload___mul__(o) {
    return _qrt.cast(null, function () { return Overload; });
}
Overload.prototype.__mul__ = Overload___mul__;

function Overload_test() {}
Overload.prototype.test = Overload_test;

function Overload__getClass() {
    return "classes.Overload";
}
Overload.prototype._getClass = Overload__getClass;

function Overload__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
Overload.prototype._getField = Overload__getField;

function Overload__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = _qrt.cast(value, function () { return String; });
    }
}
Overload.prototype._setField = Overload__setField;

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.classes_Test_ref = null;
function Test_test() {}
Test.prototype.test = Test_test;

function Test__getClass() {
    return "classes.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {}
Test.prototype._setField = Test__setField;

// CLASS string_test
function string_test() {
    this.__init_fields__();
}
exports.string_test = string_test;

function string_test__init_fields__() {}
string_test.prototype.__init_fields__ = string_test__init_fields__;
string_test.classes_string_test_ref = null;
function string_test_check(actual, expected, op, q) {}
string_test.prototype.check = string_test_check;

function string_test__getClass() {
    return "classes.string_test";
}
string_test.prototype._getClass = string_test__getClass;

function string_test__getField(name) {
    return null;
}
string_test.prototype._getField = string_test__getField;

function string_test__setField(name, value) {}
string_test.prototype._setField = string_test__setField;

// CLASS test_size

function test_size(what) {
    test_size.super_.call(this);
}
exports.test_size = test_size;
_qrt.util.inherits(test_size, string_test);

function test_size__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
}
test_size.prototype.__init_fields__ = test_size__init_fields__;
test_size.classes_test_size_ref = null;
function test_size_does(expected) {
    return _qrt.cast(null, function () { return test_size; });
}
test_size.prototype.does = test_size_does;

function test_size__getClass() {
    return "classes.test_size";
}
test_size.prototype._getClass = test_size__getClass;

function test_size__getField(name) {
    if (_qrt.equals((name), ("what"))) {
        return (this).what;
    }
    return null;
}
test_size.prototype._getField = test_size__getField;

function test_size__setField(name, value) {
    if (_qrt.equals((name), ("what"))) {
        (this).what = _qrt.cast(value, function () { return String; });
    }
}
test_size.prototype._setField = test_size__setField;

// CLASS test_startsWith

function test_startsWith(what) {
    test_startsWith.super_.call(this);
}
exports.test_startsWith = test_startsWith;
_qrt.util.inherits(test_startsWith, string_test);

function test_startsWith__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this._that = null;
}
test_startsWith.prototype.__init_fields__ = test_startsWith__init_fields__;
test_startsWith.classes_test_startsWith_ref = null;
function test_startsWith_that(_that) {
    return _qrt.cast(null, function () { return test_startsWith; });
}
test_startsWith.prototype.that = test_startsWith_that;

function test_startsWith_does(expected) {
    return _qrt.cast(null, function () { return test_startsWith; });
}
test_startsWith.prototype.does = test_startsWith_does;

function test_startsWith__getClass() {
    return "classes.test_startsWith";
}
test_startsWith.prototype._getClass = test_startsWith__getClass;

function test_startsWith__getField(name) {
    if (_qrt.equals((name), ("what"))) {
        return (this).what;
    }
    if (_qrt.equals((name), ("_that"))) {
        return (this)._that;
    }
    return null;
}
test_startsWith.prototype._getField = test_startsWith__getField;

function test_startsWith__setField(name, value) {
    if (_qrt.equals((name), ("what"))) {
        (this).what = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("_that"))) {
        (this)._that = _qrt.cast(value, function () { return String; });
    }
}
test_startsWith.prototype._setField = test_startsWith__setField;

// CLASS test_endsWith

function test_endsWith(what) {
    test_endsWith.super_.call(this);
}
exports.test_endsWith = test_endsWith;
_qrt.util.inherits(test_endsWith, string_test);

function test_endsWith__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this._that = null;
}
test_endsWith.prototype.__init_fields__ = test_endsWith__init_fields__;
test_endsWith.classes_test_endsWith_ref = null;
function test_endsWith_that(_that) {
    return _qrt.cast(null, function () { return test_endsWith; });
}
test_endsWith.prototype.that = test_endsWith_that;

function test_endsWith_does(expected) {
    return _qrt.cast(null, function () { return test_endsWith; });
}
test_endsWith.prototype.does = test_endsWith_does;

function test_endsWith__getClass() {
    return "classes.test_endsWith";
}
test_endsWith.prototype._getClass = test_endsWith__getClass;

function test_endsWith__getField(name) {
    if (_qrt.equals((name), ("what"))) {
        return (this).what;
    }
    if (_qrt.equals((name), ("_that"))) {
        return (this)._that;
    }
    return null;
}
test_endsWith.prototype._getField = test_endsWith__getField;

function test_endsWith__setField(name, value) {
    if (_qrt.equals((name), ("what"))) {
        (this).what = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("_that"))) {
        (this)._that = _qrt.cast(value, function () { return String; });
    }
}
test_endsWith.prototype._setField = test_endsWith__setField;

// CLASS test_find

function test_find(what) {
    test_find.super_.call(this);
}
exports.test_find = test_find;
_qrt.util.inherits(test_find, string_test);

function test_find__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this._that = null;
}
test_find.prototype.__init_fields__ = test_find__init_fields__;
test_find.classes_test_find_ref = null;
function test_find_that(_that) {
    return _qrt.cast(null, function () { return test_find; });
}
test_find.prototype.that = test_find_that;

function test_find_does(expected) {
    return _qrt.cast(null, function () { return test_find; });
}
test_find.prototype.does = test_find_does;

function test_find__getClass() {
    return "classes.test_find";
}
test_find.prototype._getClass = test_find__getClass;

function test_find__getField(name) {
    if (_qrt.equals((name), ("what"))) {
        return (this).what;
    }
    if (_qrt.equals((name), ("_that"))) {
        return (this)._that;
    }
    return null;
}
test_find.prototype._getField = test_find__getField;

function test_find__setField(name, value) {
    if (_qrt.equals((name), ("what"))) {
        (this).what = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("_that"))) {
        (this)._that = _qrt.cast(value, function () { return String; });
    }
}
test_find.prototype._setField = test_find__setField;

// CLASS test_substring

function test_substring(what) {
    test_substring.super_.call(this);
}
exports.test_substring = test_substring;
_qrt.util.inherits(test_substring, string_test);

function test_substring__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this.start = null;
    this.end = null;
}
test_substring.prototype.__init_fields__ = test_substring__init_fields__;
test_substring.classes_test_substring_ref = null;
function test_substring_that(start, end) {
    return _qrt.cast(null, function () { return test_substring; });
}
test_substring.prototype.that = test_substring_that;

function test_substring_does(expected) {
    return _qrt.cast(null, function () { return test_substring; });
}
test_substring.prototype.does = test_substring_does;

function test_substring__getClass() {
    return "classes.test_substring";
}
test_substring.prototype._getClass = test_substring__getClass;

function test_substring__getField(name) {
    if (_qrt.equals((name), ("what"))) {
        return (this).what;
    }
    if (_qrt.equals((name), ("start"))) {
        return (this).start;
    }
    if (_qrt.equals((name), ("end"))) {
        return (this).end;
    }
    return null;
}
test_substring.prototype._getField = test_substring__getField;

function test_substring__setField(name, value) {
    if (_qrt.equals((name), ("what"))) {
        (this).what = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("start"))) {
        (this).start = _qrt.cast(value, function () { return Number; });
    }
    if (_qrt.equals((name), ("end"))) {
        (this).end = _qrt.cast(value, function () { return Number; });
    }
}
test_substring.prototype._setField = test_substring__setField;

// CLASS test_replace

function test_replace(what) {
    test_replace.super_.call(this);
}
exports.test_replace = test_replace;
_qrt.util.inherits(test_replace, string_test);

function test_replace__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this.start = null;
    this.end = null;
}
test_replace.prototype.__init_fields__ = test_replace__init_fields__;
test_replace.classes_test_replace_ref = null;
function test_replace_that(start, end) {
    return _qrt.cast(null, function () { return test_replace; });
}
test_replace.prototype.that = test_replace_that;

function test_replace_does(expected) {
    return _qrt.cast(null, function () { return test_replace; });
}
test_replace.prototype.does = test_replace_does;

function test_replace__getClass() {
    return "classes.test_replace";
}
test_replace.prototype._getClass = test_replace__getClass;

function test_replace__getField(name) {
    if (_qrt.equals((name), ("what"))) {
        return (this).what;
    }
    if (_qrt.equals((name), ("start"))) {
        return (this).start;
    }
    if (_qrt.equals((name), ("end"))) {
        return (this).end;
    }
    return null;
}
test_replace.prototype._getField = test_replace__getField;

function test_replace__setField(name, value) {
    if (_qrt.equals((name), ("what"))) {
        (this).what = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("start"))) {
        (this).start = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("end"))) {
        (this).end = _qrt.cast(value, function () { return String; });
    }
}
test_replace.prototype._setField = test_replace__setField;

// CLASS test_join

function test_join(what) {
    test_join.super_.call(this);
}
exports.test_join = test_join;
_qrt.util.inherits(test_join, string_test);

function test_join__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this.parts = null;
    this.strparts = null;
    this.sep = null;
}
test_join.prototype.__init_fields__ = test_join__init_fields__;
test_join.classes_test_join_ref = null;
function test_join_that() {
    return _qrt.cast(null, function () { return test_join; });
}
test_join.prototype.that = test_join_that;

function test_join_a(part) {
    return _qrt.cast(null, function () { return test_join; });
}
test_join.prototype.a = test_join_a;

function test_join_does(expected) {
    return _qrt.cast(null, function () { return test_join; });
}
test_join.prototype.does = test_join_does;

function test_join__getClass() {
    return "classes.test_join";
}
test_join.prototype._getClass = test_join__getClass;

function test_join__getField(name) {
    if (_qrt.equals((name), ("what"))) {
        return (this).what;
    }
    if (_qrt.equals((name), ("parts"))) {
        return (this).parts;
    }
    if (_qrt.equals((name), ("strparts"))) {
        return (this).strparts;
    }
    if (_qrt.equals((name), ("sep"))) {
        return (this).sep;
    }
    return null;
}
test_join.prototype._getField = test_join__getField;

function test_join__setField(name, value) {
    if (_qrt.equals((name), ("what"))) {
        (this).what = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("parts"))) {
        (this).parts = _qrt.cast(value, function () { return Array; });
    }
    if (_qrt.equals((name), ("strparts"))) {
        (this).strparts = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("sep"))) {
        (this).sep = _qrt.cast(value, function () { return String; });
    }
}
test_join.prototype._setField = test_join__setField;

// CLASS test_split

function test_split(sep, altsep) {
    test_split.super_.call(this);
}
exports.test_split = test_split;
_qrt.util.inherits(test_split, string_test);

function test_split__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this.sep = null;
    this.altsep = null;
}
test_split.prototype.__init_fields__ = test_split__init_fields__;
test_split.classes_test_split_ref = null;
function test_split_that(what) {
    return _qrt.cast(null, function () { return test_split; });
}
test_split.prototype.that = test_split_that;

function test_split_does(expected) {
    return _qrt.cast(null, function () { return test_split; });
}
test_split.prototype.does = test_split_does;

function test_split__getClass() {
    return "classes.test_split";
}
test_split.prototype._getClass = test_split__getClass;

function test_split__getField(name) {
    if (_qrt.equals((name), ("what"))) {
        return (this).what;
    }
    if (_qrt.equals((name), ("sep"))) {
        return (this).sep;
    }
    if (_qrt.equals((name), ("altsep"))) {
        return (this).altsep;
    }
    return null;
}
test_split.prototype._getField = test_split__getField;

function test_split__setField(name, value) {
    if (_qrt.equals((name), ("what"))) {
        (this).what = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("sep"))) {
        (this).sep = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("altsep"))) {
        (this).altsep = _qrt.cast(value, function () { return String; });
    }
}
test_split.prototype._setField = test_split__setField;
