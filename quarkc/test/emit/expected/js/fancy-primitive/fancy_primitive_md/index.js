var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS quark_List_quark_Object_

function quark_List_quark_Object_() {
    quark_List_quark_Object_.super_.call(this, "quark.List<quark.Object>");
    (this).name = "quark.List";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_Object_ = quark_List_quark_Object_;
_qrt.util.inherits(quark_List_quark_Object_, quark.reflect.Class);

function quark_List_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_Object_.prototype.__init_fields__ = quark_List_quark_Object___init_fields__;
quark_List_quark_Object_.singleton = new quark_List_quark_Object_();
function quark_List_quark_Object__construct(args) {
    return new Array();
}
quark_List_quark_Object_.prototype.construct = quark_List_quark_Object__construct;

function quark_List_quark_Object___getClass() {
    return null;
}
quark_List_quark_Object_.prototype._getClass = quark_List_quark_Object___getClass;

function quark_List_quark_Object___getField(name) {
    return null;
}
quark_List_quark_Object_.prototype._getField = quark_List_quark_Object___getField;

function quark_List_quark_Object___setField(name, value) {}
quark_List_quark_Object_.prototype._setField = quark_List_quark_Object___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.quark_List_quark_Object__md = quark_List_quark_Object_.singleton;
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
