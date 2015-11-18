var _qrt = require("quark_runtime.js");

// CLASS string_test
function string_test() {
    this.__init_fields__();
}
exports.string_test = string_test;

function string_test__init_fields__() {}
string_test.prototype.__init_fields__ = string_test__init_fields__;

function string_test_check(actual, expected, op, q) {
    if ((actual) === (expected)) {
        _qrt.print(((((("OK   ") + (op)) + (" = ")) + (q)) + (actual)) + (q));
    } else {
        _qrt.print(((((((((("FAIL ") + (op)) + (" = ")) + (q)) + (actual)) + (q)) + (" != ")) + (q)) + (expected)) + (q));
    }
}
string_test.prototype.check = string_test_check;

// CLASS test_size

function test_size(what) {
    test_size.super_.call(this);
    (this).what = what;
}
exports.test_size = test_size;
_qrt.util.inherits(test_size, string_test);

function test_size__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
}
test_size.prototype.__init_fields__ = test_size__init_fields__;

function test_size_does(expected) {
    var actual = (this.what).length;
    var op = (("'") + (this.what)) + ("'.size()");
    (this).check(_qrt.toString(actual), _qrt.toString(expected), op, "");
    return this;
}
test_size.prototype.does = test_size_does;

// CLASS test_startsWith

function test_startsWith(what) {
    test_startsWith.super_.call(this);
    (this).what = what;
}
exports.test_startsWith = test_startsWith;
_qrt.util.inherits(test_startsWith, string_test);

function test_startsWith__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this._that = null;
}
test_startsWith.prototype.__init_fields__ = test_startsWith__init_fields__;

function test_startsWith_that(_that) {
    (this)._that = _that;
    return this;
}
test_startsWith.prototype.that = test_startsWith_that;

function test_startsWith_does(expected) {
    (this).check(((((this).what).indexOf((this)._that)===0)).toString(), (expected).toString(), (((("'") + ((this).what)) + ("'.startsWith('")) + ((this)._that)) + ("'"), "");
    return this;
}
test_startsWith.prototype.does = test_startsWith_does;

// CLASS test_endsWith

function test_endsWith(what) {
    test_endsWith.super_.call(this);
    (this).what = what;
}
exports.test_endsWith = test_endsWith;
_qrt.util.inherits(test_endsWith, string_test);

function test_endsWith__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this._that = null;
}
test_endsWith.prototype.__init_fields__ = test_endsWith__init_fields__;

function test_endsWith_that(_that) {
    (this)._that = _that;
    return this;
}
test_endsWith.prototype.that = test_endsWith_that;

function test_endsWith_does(expected) {
    (this).check(((((this).what).indexOf(((this)._that), ((this).what).length - ((this)._that).length) !== -1)).toString(), (expected).toString(), (((("'") + ((this).what)) + ("'.endsWith('")) + ((this)._that)) + ("'"), "");
    return this;
}
test_endsWith.prototype.does = test_endsWith_does;

// CLASS test_find

function test_find(what) {
    test_find.super_.call(this);
    (this).what = what;
}
exports.test_find = test_find;
_qrt.util.inherits(test_find, string_test);

function test_find__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this._that = null;
}
test_find.prototype.__init_fields__ = test_find__init_fields__;

function test_find_that(_that) {
    (this)._that = _that;
    return this;
}
test_find.prototype.that = test_find_that;

function test_find_does(expected) {
    (this).check(_qrt.toString(((this).what).indexOf((this)._that)), _qrt.toString(expected), (((("'") + ((this).what)) + ("'.find('")) + ((this)._that)) + ("'"), "");
    return this;
}
test_find.prototype.does = test_find_does;

// CLASS test_substring

function test_substring(what) {
    test_substring.super_.call(this);
    (this).what = what;
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

function test_substring_that(start, end) {
    (this).start = start;
    (this).end = end;
    return this;
}
test_substring.prototype.that = test_substring_that;

function test_substring_does(expected) {
    (this).check(((this).what).substring(((this).start), ((this).end)), expected, (((((("'") + ((this).what)) + ("'.substring(")) + (_qrt.toString((this).start))) + (", ")) + (_qrt.toString((this).end))) + (")"), "'");
    return this;
}
test_substring.prototype.does = test_substring_does;

// CLASS test_replace

function test_replace(what) {
    test_replace.super_.call(this);
    (this).what = what;
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

function test_replace_that(start, end) {
    (this).start = start;
    (this).end = end;
    return this;
}
test_replace.prototype.that = test_replace_that;

function test_replace_does(expected) {
    (this).check(((this).what).replace(((this).start), ((this).end)), expected, (((((("'") + ((this).what)) + ("'.replace('")) + ((this).start)) + ("', '")) + ((this).end)) + ("')"), "'");
    return this;
}
test_replace.prototype.does = test_replace_does;

// CLASS test_join

function test_join(what) {
    test_join.super_.call(this);
    (this).what = what;
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

function test_join_that() {
    (this).parts = new Array();
    (this).strparts = "";
    (this).sep = "";
    return this;
}
test_join.prototype.that = test_join_that;

function test_join_a(part) {
    ((this).parts).push(part);
    (this).strparts = (((((this).strparts) + ((this).sep)) + ("'")) + (part)) + ("'");
    (this).sep = ", ";
    return this;
}
test_join.prototype.a = test_join_a;

function test_join_does(expected) {
    (this).check(((this).parts).join((this).what), expected, (((("'") + ((this).what)) + ("'.join([")) + ((this).strparts)) + ("])"), "'");
    return this;
}
test_join.prototype.does = test_join_does;

// CLASS test_split

function test_split(sep, altsep) {
    test_split.super_.call(this);
    (this).sep = sep;
    (this).altsep = altsep;
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

function test_split_that(what) {
    (this).what = what;
    return this;
}
test_split.prototype.that = test_split_that;

function test_split_does(expected) {
    var parts = ((this).what).split((this).sep);
    var actual = (parts).join((this).altsep);
    (this).check(actual, expected, (((((("'") + ((this).altsep)) + ("'.join('")) + ((this).what)) + ("'.split('")) + ((this).sep)) + ("'))"), "'");
    return this;
}
test_split.prototype.does = test_split_does;

function main() {
    (new test_size("")).does(0);
    (new test_size("1")).does(1);
    (new test_size("22")).does(2);
    (new test_size("333")).does(3);
    (new test_size("4444")).does(4);
    ((((((((new test_startsWith("abcd")).that("abc")).does(true)).that("bc")).does(false)).that("")).does(true)).that("abcde")).does(false);
    ((((((((new test_endsWith("abcd")).that("bcd")).does(true)).that("bc")).does(false)).that("")).does(true)).that("xabcd")).does(false);
    ((((((((((((((((new test_find("abcd")).that("bcd")).does(1)).that("bc")).does(1)).that("")).does(0)).that("xabcd")).does(-(1))).that("abcd")).does(0)).that("abc")).does(0)).that("a")).does(0)).that("x")).does(-(1));
    ((((((((((((((((new test_substring("abcd")).that(0, 0)).does("")).that(0, 4)).does("abcd")).that(0, 1)).does("a")).that(1, 2)).does("b")).that(2, 4)).does("cd")).that(3, 4)).does("d")).that(1, 1)).does("")).that(2, 2)).does("");
    ((((((((((((((new test_replace("abcd")).that("ab", "AB")).does("ABcd")).that("b", "bb")).does("abbcd")).that("ab", "ab")).does("abcd")).that("", "EE")).does("EEabcd")).that("c", "EE")).does("abEEd")).that("d", "EE")).does("abcEE")).that("x", "EE")).does("abcd");
    ((((((((((((((new test_join("")).that()).does("")).that()).a("a")).does("a")).that()).a("a")).a("b")).does("ab")).that()).a("a")).a("b")).a("c")).does("abc");
    ((((((((((((((new test_join(",")).that()).does("")).that()).a("a")).does("a")).that()).a("a")).a("b")).does("a,b")).that()).a("a")).a("b")).a("c")).does("a,b,c");
    ((((((((((((((((new test_split(",", "|")).that("")).does("")).that("a")).does("a")).that(",")).does("|")).that("a,")).does("a|")).that(",a")).does("|a")).that("a,b")).does("a|b")).that("a,,b")).does("a||b")).that("a,b,c")).does("a|b|c");
    ((((((((((((((((new test_split("foo", "|")).that("")).does("")).that("a")).does("a")).that("foo")).does("|")).that("afoo")).does("a|")).that("fooa")).does("|a")).that("afoob")).does("a|b")).that("afoofoob")).does("a||b")).that("afoobfooc")).does("a|b|c");
}
exports.main = main;

main();
