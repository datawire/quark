var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



// CLASS m_Inner_setup_Method

function m_Inner_setup_Method() {
    m_Inner_setup_Method.super_.call(this, "m.Inner", "setup", ["builtin.int"]);
}
exports.m_Inner_setup_Method = m_Inner_setup_Method;
_qrt.util.inherits(m_Inner_setup_Method, builtin.reflect.Method);

function m_Inner_setup_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
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
    (this).fields = [new builtin.reflect.Field("builtin.int", "inner_int"), new builtin.reflect.Field("builtin.String", "inner_string"), new builtin.reflect.Field("builtin.float", "inner_float"), new builtin.reflect.Field("builtin.List<builtin.String>", "inner_string_list")];
    (this).methods = [new m_Inner_setup_Method()];
}
exports.m_Inner = m_Inner;
_qrt.util.inherits(m_Inner, builtin.reflect.Class);

function m_Inner__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
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
    m_Outer_setup_Method.super_.call(this, "m.Outer", "setup", ["builtin.int"]);
}
exports.m_Outer_setup_Method = m_Outer_setup_Method;
_qrt.util.inherits(m_Outer_setup_Method, builtin.reflect.Method);

function m_Outer_setup_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
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
    (this).fields = [new builtin.reflect.Field("builtin.int", "outer_int"), new builtin.reflect.Field("builtin.String", "outer_string"), new builtin.reflect.Field("builtin.float", "outer_float"), new builtin.reflect.Field("builtin.List<m.Inner>", "outer_inner_list")];
    (this).methods = [new m_Outer_setup_Method()];
}
exports.m_Outer = m_Outer;
_qrt.util.inherits(m_Outer, builtin.reflect.Class);

function m_Outer__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
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


// CLASS builtin_List_m_Inner_

function builtin_List_m_Inner_() {
    builtin_List_m_Inner_.super_.call(this, "builtin.List<m.Inner>");
    (this).name = "builtin.List";
    (this).parameters = ["m.Inner"];
    (this).fields = [];
    (this).methods = [];
}
exports.builtin_List_m_Inner_ = builtin_List_m_Inner_;
_qrt.util.inherits(builtin_List_m_Inner_, builtin.reflect.Class);

function builtin_List_m_Inner___init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
builtin_List_m_Inner_.prototype.__init_fields__ = builtin_List_m_Inner___init_fields__;
builtin_List_m_Inner_.singleton = new builtin_List_m_Inner_();
function builtin_List_m_Inner__construct(args) {
    return new Array();
}
builtin_List_m_Inner_.prototype.construct = builtin_List_m_Inner__construct;

function builtin_List_m_Inner___getClass() {
    return null;
}
builtin_List_m_Inner_.prototype._getClass = builtin_List_m_Inner___getClass;

function builtin_List_m_Inner___getField(name) {
    return null;
}
builtin_List_m_Inner_.prototype._getField = builtin_List_m_Inner___getField;

function builtin_List_m_Inner___setField(name, value) {}
builtin_List_m_Inner_.prototype._setField = builtin_List_m_Inner___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.m_Inner_md = m_Inner.singleton;
Root.m_Outer_md = m_Outer.singleton;
Root.builtin_List_builtin_String__md = builtin_List_builtin_String_.singleton;
Root.builtin_List_m_Inner__md = builtin_List_m_Inner_.singleton;
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

var m = require('../m');
exports.m = m;
