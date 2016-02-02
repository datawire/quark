var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



// CLASS builtin_List_Object_

function builtin_List_Object_() {
    builtin_List_Object_.super_.call(this, "builtin.List<Object>");
    (this).name = "builtin.List";
    (this).parameters = ["Object"];
    (this).fields = [];
    (this).methods = [];
}
exports.builtin_List_Object_ = builtin_List_Object_;
_qrt.util.inherits(builtin_List_Object_, builtin.reflect.Class);

function builtin_List_Object___init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
builtin_List_Object_.prototype.__init_fields__ = builtin_List_Object___init_fields__;
builtin_List_Object_.singleton = new builtin_List_Object_();
function builtin_List_Object__construct(args) {
    return new Array();
}
builtin_List_Object_.prototype.construct = builtin_List_Object__construct;

function builtin_List_Object___getClass() {
    return null;
}
builtin_List_Object_.prototype._getClass = builtin_List_Object___getClass;

function builtin_List_Object___getField(name) {
    return null;
}
builtin_List_Object_.prototype._getField = builtin_List_Object___getField;

function builtin_List_Object___setField(name, value) {}
builtin_List_Object_.prototype._setField = builtin_List_Object___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.builtin_List_Object__md = builtin_List_Object_.singleton;
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
