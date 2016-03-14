var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS m_Inner_setup_Method

function m_Inner_setup_Method() {
    m_Inner_setup_Method.super_.call(this, "m.Inner", "setup", ["quark.int"]);
}
exports.m_Inner_setup_Method = m_Inner_setup_Method;
_qrt.util.inherits(m_Inner_setup_Method, quark.reflect.Method);

function m_Inner_setup_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
m_Inner_setup_Method.prototype.__init_fields__ = m_Inner_setup_Method__init_fields__;

function m_Inner_setup_Method_invoke(object, args) {
    var obj = object;
    return (obj).setup((args)[0]);
}
m_Inner_setup_Method.prototype.invoke = m_Inner_setup_Method_invoke;

function m_Inner_setup_Method__getClass() {
    return null;
}
m_Inner_setup_Method.prototype._getClass = m_Inner_setup_Method__getClass;

function m_Inner_setup_Method__getField(name) {
    return null;
}
m_Inner_setup_Method.prototype._getField = m_Inner_setup_Method__getField;

function m_Inner_setup_Method__setField(name, value) {}
m_Inner_setup_Method.prototype._setField = m_Inner_setup_Method__setField;

// CLASS m_Inner

function m_Inner() {
    m_Inner.super_.call(this, "m.Inner");
    (this).name = "m.Inner";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.int", "inner_int"), new quark.reflect.Field("quark.String", "inner_string"), new quark.reflect.Field("quark.float", "inner_float"), new quark.reflect.Field("quark.List<quark.String>", "inner_string_list")];
    (this).methods = [new m_Inner_setup_Method()];
}
exports.m_Inner = m_Inner;
_qrt.util.inherits(m_Inner, quark.reflect.Class);

function m_Inner__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
m_Inner.prototype.__init_fields__ = m_Inner__init_fields__;
m_Inner.singleton = new m_Inner();
function m_Inner_construct(args) {
    return new m.Inner();
}
m_Inner.prototype.construct = m_Inner_construct;

function m_Inner__getClass() {
    return null;
}
m_Inner.prototype._getClass = m_Inner__getClass;

function m_Inner__getField(name) {
    return null;
}
m_Inner.prototype._getField = m_Inner__getField;

function m_Inner__setField(name, value) {}
m_Inner.prototype._setField = m_Inner__setField;


// CLASS m_Outer_setup_Method

function m_Outer_setup_Method() {
    m_Outer_setup_Method.super_.call(this, "m.Outer", "setup", ["quark.int"]);
}
exports.m_Outer_setup_Method = m_Outer_setup_Method;
_qrt.util.inherits(m_Outer_setup_Method, quark.reflect.Method);

function m_Outer_setup_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
m_Outer_setup_Method.prototype.__init_fields__ = m_Outer_setup_Method__init_fields__;

function m_Outer_setup_Method_invoke(object, args) {
    var obj = object;
    return (obj).setup((args)[0]);
}
m_Outer_setup_Method.prototype.invoke = m_Outer_setup_Method_invoke;

function m_Outer_setup_Method__getClass() {
    return null;
}
m_Outer_setup_Method.prototype._getClass = m_Outer_setup_Method__getClass;

function m_Outer_setup_Method__getField(name) {
    return null;
}
m_Outer_setup_Method.prototype._getField = m_Outer_setup_Method__getField;

function m_Outer_setup_Method__setField(name, value) {}
m_Outer_setup_Method.prototype._setField = m_Outer_setup_Method__setField;

// CLASS m_Outer

function m_Outer() {
    m_Outer.super_.call(this, "m.Outer");
    (this).name = "m.Outer";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.int", "outer_int"), new quark.reflect.Field("quark.String", "outer_string"), new quark.reflect.Field("quark.float", "outer_float"), new quark.reflect.Field("quark.List<m.Inner>", "outer_inner_list")];
    (this).methods = [new m_Outer_setup_Method()];
}
exports.m_Outer = m_Outer;
_qrt.util.inherits(m_Outer, quark.reflect.Class);

function m_Outer__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
m_Outer.prototype.__init_fields__ = m_Outer__init_fields__;
m_Outer.singleton = new m_Outer();
function m_Outer_construct(args) {
    return new m.Outer();
}
m_Outer.prototype.construct = m_Outer_construct;

function m_Outer__getClass() {
    return null;
}
m_Outer.prototype._getClass = m_Outer__getClass;

function m_Outer__getField(name) {
    return null;
}
m_Outer.prototype._getField = m_Outer__getField;

function m_Outer__setField(name, value) {}
m_Outer.prototype._setField = m_Outer__setField;


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


// CLASS quark_List_m_Inner_

function quark_List_m_Inner_() {
    quark_List_m_Inner_.super_.call(this, "quark.List<m.Inner>");
    (this).name = "quark.List";
    (this).parameters = ["m.Inner"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_m_Inner_ = quark_List_m_Inner_;
_qrt.util.inherits(quark_List_m_Inner_, quark.reflect.Class);

function quark_List_m_Inner___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_m_Inner_.prototype.__init_fields__ = quark_List_m_Inner___init_fields__;
quark_List_m_Inner_.singleton = new quark_List_m_Inner_();
function quark_List_m_Inner__construct(args) {
    return new Array();
}
quark_List_m_Inner_.prototype.construct = quark_List_m_Inner__construct;

function quark_List_m_Inner___getClass() {
    return null;
}
quark_List_m_Inner_.prototype._getClass = quark_List_m_Inner___getClass;

function quark_List_m_Inner___getField(name) {
    return null;
}
quark_List_m_Inner_.prototype._getField = quark_List_m_Inner___getField;

function quark_List_m_Inner___setField(name, value) {}
quark_List_m_Inner_.prototype._setField = quark_List_m_Inner___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.m_Inner_md = m_Inner.singleton;
Root.m_Outer_md = m_Outer.singleton;
Root.quark_List_quark_String__md = quark_List_quark_String_.singleton;
Root.quark_List_m_Inner__md = quark_List_m_Inner_.singleton;
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

var m = require('../m/index.js');
exports.m = m;
