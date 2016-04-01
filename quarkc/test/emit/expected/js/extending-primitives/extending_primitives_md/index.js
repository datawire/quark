var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS pkg_C_event1_Method

function pkg_C_event1_Method() {
    pkg_C_event1_Method.super_.call(this, "quark.void", "event1", []);
}
exports.pkg_C_event1_Method = pkg_C_event1_Method;
_qrt.util.inherits(pkg_C_event1_Method, quark.reflect.Method);

function pkg_C_event1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_C_event1_Method.prototype.__init_fields__ = pkg_C_event1_Method__init_fields__;

function pkg_C_event1_Method_invoke(object, args) {
    var obj = object;
    (obj).event1();
    return null;
}
pkg_C_event1_Method.prototype.invoke = pkg_C_event1_Method_invoke;

function pkg_C_event1_Method__getClass() {
    return null;
}
pkg_C_event1_Method.prototype._getClass = pkg_C_event1_Method__getClass;

function pkg_C_event1_Method__getField(name) {
    return null;
}
pkg_C_event1_Method.prototype._getField = pkg_C_event1_Method__getField;

function pkg_C_event1_Method__setField(name, value) {}
pkg_C_event1_Method.prototype._setField = pkg_C_event1_Method__setField;

// CLASS pkg_C

function pkg_C() {
    pkg_C.super_.call(this, "pkg.C");
    (this).name = "pkg.C";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_C_event1_Method()];
}
exports.pkg_C = pkg_C;
_qrt.util.inherits(pkg_C, quark.reflect.Class);

function pkg_C__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_C.prototype.__init_fields__ = pkg_C__init_fields__;
pkg_C.singleton = new pkg_C();
function pkg_C_construct(args) {
    return new pkg.C();
}
pkg_C.prototype.construct = pkg_C_construct;

function pkg_C__getClass() {
    return null;
}
pkg_C.prototype._getClass = pkg_C__getClass;

function pkg_C__getField(name) {
    return null;
}
pkg_C.prototype._getField = pkg_C__getField;

function pkg_C__setField(name, value) {}
pkg_C.prototype._setField = pkg_C__setField;


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
Root.pkg_C_md = pkg_C.singleton;
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

var pkg = require('../pkg/index.js');
exports.pkg = pkg;
