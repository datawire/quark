var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var constructors_md = require('../constructors_md/index.js');
exports.constructors_md = constructors_md;



// CLASS Base
function Base() {
    this.__init_fields__();
}
exports.Base = Base;

function Base__init_fields__() {
    this.name = "Hello World!";
}
Base.prototype.__init_fields__ = Base__init_fields__;
Base.test4_Base_ref = constructors_md.Root.test4_Base_md;
function Base__getClass() {
    return "test4.Base";
}
Base.prototype._getClass = Base__getClass;

function Base__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
Base.prototype._getField = Base__getField;

function Base__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = value;
    }
}
Base.prototype._setField = Base__setField;

// CLASS Test

function Test() {
    Test.super_.call(this);
    (this).later = "Hello World!";
}
exports.Test = Test;
_qrt.util.inherits(Test, Base);

function Test__init_fields__() {
    Base.prototype.__init_fields__.call(this);
    this.mumble = "lalala";
    this.later = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.test4_Test_ref = constructors_md.Root.test4_Test_md;
function Test__getClass() {
    return "test4.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    if (_qrt.equals((name), ("mumble"))) {
        return (this).mumble;
    }
    if (_qrt.equals((name), ("later"))) {
        return (this).later;
    }
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = value;
    }
    if (_qrt.equals((name), ("mumble"))) {
        (this).mumble = value;
    }
    if (_qrt.equals((name), ("later"))) {
        (this).later = value;
    }
}
Test.prototype._setField = Test__setField;

function go() {
    var t = new Test();
    _qrt.print((t).name);
    _qrt.print((new Test()).name);
}
exports.go = go;
