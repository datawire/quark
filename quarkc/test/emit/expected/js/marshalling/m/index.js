var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var marshalling_md = require('../marshalling_md');
exports.marshalling_md = marshalling_md;



// CLASS Inner
function Inner() {
    this.__init_fields__();
}
exports.Inner = Inner;

function Inner__init_fields__() {
    this.inner_int = null;
    this.inner_string = null;
    this.inner_float = null;
    this.inner_string_list = null;
}
Inner.prototype.__init_fields__ = Inner__init_fields__;
Inner.m_Inner_ref = marshalling_md.Root.m_Inner_md;
Inner.builtin_List_builtin_String__ref = marshalling_md.Root.builtin_List_builtin_String__md;
function Inner_setup(i) {
    var f = (i);
    (this).inner_int = i;
    (this).inner_string = ("str of ") + (_qrt.toString(i));
    (this).inner_float = (300.14) + (f);
    (this).inner_string_list = ["i"];
    return this;
}
Inner.prototype.setup = Inner_setup;

function Inner__getClass() {
    return "m.Inner";
}
Inner.prototype._getClass = Inner__getClass;

function Inner__getField(name) {
    if ((name) === ("inner_int")) {
        return (this).inner_int;
    }
    if ((name) === ("inner_string")) {
        return (this).inner_string;
    }
    if ((name) === ("inner_float")) {
        return (this).inner_float;
    }
    if ((name) === ("inner_string_list")) {
        return (this).inner_string_list;
    }
    return null;
}
Inner.prototype._getField = Inner__getField;

function Inner__setField(name, value) {
    if ((name) === ("inner_int")) {
        (this).inner_int = value;
    }
    if ((name) === ("inner_string")) {
        (this).inner_string = value;
    }
    if ((name) === ("inner_float")) {
        (this).inner_float = value;
    }
    if ((name) === ("inner_string_list")) {
        (this).inner_string_list = value;
    }
}
Inner.prototype._setField = Inner__setField;

// CLASS Outer
function Outer() {
    this.__init_fields__();
}
exports.Outer = Outer;

function Outer__init_fields__() {
    this.outer_int = null;
    this.outer_string = null;
    this.outer_float = null;
    this.outer_inner_list = null;
}
Outer.prototype.__init_fields__ = Outer__init_fields__;
Outer.m_Outer_ref = marshalling_md.Root.m_Outer_md;
Outer.builtin_List_m_Inner__ref = marshalling_md.Root.builtin_List_m_Inner__md;
function Outer_setup(i) {
    var f = (i);
    (this).outer_int = (i) * (10);
    (this).outer_string = ("str of ") + (_qrt.toString(i));
    (this).outer_float = (314000.15) + (f);
    (this).outer_inner_list = [(new Inner()).setup(i), (new Inner()).setup((i) + (42)), (new Inner()).setup((i) * (42))];
    return this;
}
Outer.prototype.setup = Outer_setup;

function Outer__getClass() {
    return "m.Outer";
}
Outer.prototype._getClass = Outer__getClass;

function Outer__getField(name) {
    if ((name) === ("outer_int")) {
        return (this).outer_int;
    }
    if ((name) === ("outer_string")) {
        return (this).outer_string;
    }
    if ((name) === ("outer_float")) {
        return (this).outer_float;
    }
    if ((name) === ("outer_inner_list")) {
        return (this).outer_inner_list;
    }
    return null;
}
Outer.prototype._getField = Outer__getField;

function Outer__setField(name, value) {
    if ((name) === ("outer_int")) {
        (this).outer_int = value;
    }
    if ((name) === ("outer_string")) {
        (this).outer_string = value;
    }
    if ((name) === ("outer_float")) {
        (this).outer_float = value;
    }
    if ((name) === ("outer_inner_list")) {
        (this).outer_inner_list = value;
    }
}
Outer.prototype._setField = Outer__setField;

function test_marshalling() {
    var actual = (new Outer()).setup(101);
    var encoded = (builtin.toJSON(actual, builtin.reflect.Class.get(_qrt._getClass(actual)))).toString();
    _qrt.print(encoded);
    var expected = new Outer();
    builtin.fromJSON(builtin.reflect.Class.get(_qrt._getClass(expected)), expected, _qrt.json_from_string(encoded));
    _qrt.print(_qrt.toString((expected).outer_int));
    _qrt.print((expected).outer_string);
    _qrt.print(_qrt.toString((expected).outer_float));
    _qrt.print(_qrt.toString((((expected).outer_inner_list)[1]).inner_float));
}
exports.test_marshalling = test_marshalling;

function main() {
    test_marshalling();
}
exports.main = main;
