var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var t1 = require('./t1/index.js');
exports.t1 = t1;
var t2 = require('./t2/index.js');
exports.t2 = t2;
var pets = require('./pets/index.js');
exports.pets = pets;
var super_ = require('./super_/index.js');
exports.super_ = super_;
var use_before_def = require('./use_before_def/index.js');
exports.use_before_def = use_before_def;
var quark_ffi_signatures_md = require('../quark_ffi_signatures_md/index.js');
exports.quark_ffi_signatures_md = quark_ffi_signatures_md;



// CLASS Base
function Base() {
    this.__init_fields__();
}
exports.Base = Base;

function Base__init_fields__() {
    this.name = null;
}
Base.prototype.__init_fields__ = Base__init_fields__;
Base.inheritance_Base_ref = quark_ffi_signatures_md.Root.inheritance_Base_md;
function Base__getClass() {
    return "inheritance.Base";
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
        (this).name = _qrt.cast(value, function () { return String; });
    }
}
Base.prototype._setField = Base__setField;

// CLASS Test

function Test() {
    Test.super_.call(this);
}
exports.Test = Test;
_qrt.util.inherits(Test, Base);

function Test__init_fields__() {
    Base.prototype.__init_fields__.call(this);
    this.mumble = null;
    this.later = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.inheritance_Test_ref = quark_ffi_signatures_md.Root.inheritance_Test_md;
function Test__getClass() {
    return "inheritance.Test";
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
        (this).name = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("mumble"))) {
        (this).mumble = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("later"))) {
        (this).later = _qrt.cast(value, function () { return String; });
    }
}
Test.prototype._setField = Test__setField;

// CLASS A

function A(name) {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {
    this.name = null;
}
A.prototype.__init_fields__ = A__init_fields__;
A.inheritance_A_ref = quark_ffi_signatures_md.Root.inheritance_A_md;
function A__getClass() {
    return "inheritance.A";
}
A.prototype._getClass = A__getClass;

function A__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
A.prototype._getField = A__getField;

function A__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = _qrt.cast(value, function () { return String; });
    }
}
A.prototype._setField = A__setField;

// CLASS B

function B(name) {
    B.super_.call(this, name);
}
exports.B = B;
_qrt.util.inherits(B, A);

function B__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
B.prototype.__init_fields__ = B__init_fields__;
B.inheritance_B_ref = quark_ffi_signatures_md.Root.inheritance_B_md;
function B_greet() {}
B.prototype.greet = B_greet;

function B__getClass() {
    return "inheritance.B";
}
B.prototype._getClass = B__getClass;

function B__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
B.prototype._getField = B__getField;

function B__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = _qrt.cast(value, function () { return String; });
    }
}
B.prototype._setField = B__setField;

// CLASS C

function C(name) {
    C.super_.call(this, ("C") + (name));
}
exports.C = C;
_qrt.util.inherits(C, A);

function C__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
C.prototype.__init_fields__ = C__init_fields__;
C.inheritance_C_ref = quark_ffi_signatures_md.Root.inheritance_C_md;
function C_greet() {}
C.prototype.greet = C_greet;

function C__getClass() {
    return "inheritance.C";
}
C.prototype._getClass = C__getClass;

function C__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
C.prototype._getField = C__getField;

function C__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = _qrt.cast(value, function () { return String; });
    }
}
C.prototype._setField = C__setField;

// CLASS X
function X() {
    this.__init_fields__();
}
exports.X = X;

function X__init_fields__() {}
X.prototype.__init_fields__ = X__init_fields__;
X.inheritance_X_ref = quark_ffi_signatures_md.Root.inheritance_X_md;
function X__getClass() {
    return "inheritance.X";
}
X.prototype._getClass = X__getClass;

function X__getField(name) {
    return null;
}
X.prototype._getField = X__getField;

function X__setField(name, value) {}
X.prototype._setField = X__setField;

// CLASS Y

function Y(name) {
    Y.super_.call(this);
}
exports.Y = Y;
_qrt.util.inherits(Y, X);

function Y__init_fields__() {
    X.prototype.__init_fields__.call(this);
    this.name = null;
}
Y.prototype.__init_fields__ = Y__init_fields__;
Y.inheritance_Y_ref = quark_ffi_signatures_md.Root.inheritance_Y_md;
function Y_test() {}
Y.prototype.test = Y_test;

function Y__getClass() {
    return "inheritance.Y";
}
Y.prototype._getClass = Y__getClass;

function Y__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
Y.prototype._getField = Y__getField;

function Y__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = _qrt.cast(value, function () { return String; });
    }
}
Y.prototype._setField = Y__setField;

// CLASS Message
function Message() {
    this.__init_fields__();
}
exports.Message = Message;

function Message__init_fields__() {}
Message.prototype.__init_fields__ = Message__init_fields__;
Message.inheritance_Message_ref = quark_ffi_signatures_md.Root.inheritance_Message_md;
function Message_encode() {
    return _qrt.cast(null, function () { return String; });
}
Message.prototype.encode = Message_encode;

function Message__getClass() {
    return "inheritance.Message";
}
Message.prototype._getClass = Message__getClass;

function Message__getField(name) {
    return null;
}
Message.prototype._getField = Message__getField;

function Message__setField(name, value) {}
Message.prototype._setField = Message__setField;

// CLASS Ping

function Ping() {
    Ping.super_.call(this);
}
exports.Ping = Ping;
_qrt.util.inherits(Ping, Message);

function Ping__init_fields__() {
    Message.prototype.__init_fields__.call(this);
}
Ping.prototype.__init_fields__ = Ping__init_fields__;
Ping.inheritance_Ping_ref = quark_ffi_signatures_md.Root.inheritance_Ping_md;
function Ping__getClass() {
    return "inheritance.Ping";
}
Ping.prototype._getClass = Ping__getClass;

function Ping__getField(name) {
    return null;
}
Ping.prototype._getField = Ping__getField;

function Ping__setField(name, value) {}
Ping.prototype._setField = Ping__setField;

// CLASS Pong

function Pong() {
    Pong.super_.call(this);
}
exports.Pong = Pong;
_qrt.util.inherits(Pong, Message);

function Pong__init_fields__() {
    Message.prototype.__init_fields__.call(this);
}
Pong.prototype.__init_fields__ = Pong__init_fields__;
Pong.inheritance_Pong_ref = quark_ffi_signatures_md.Root.inheritance_Pong_md;
function Pong_toString() {
    return _qrt.cast(null, function () { return String; });
}
Pong.prototype.toString = Pong_toString;

function Pong__getClass() {
    return "inheritance.Pong";
}
Pong.prototype._getClass = Pong__getClass;

function Pong__getField(name) {
    return null;
}
Pong.prototype._getField = Pong__getField;

function Pong__setField(name, value) {}
Pong.prototype._setField = Pong__setField;
