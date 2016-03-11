var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



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
