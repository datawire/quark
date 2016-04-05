var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var operator_overload_md = require('../operator_overload_md/index.js');
exports.operator_overload_md = operator_overload_md;



// CLASS Overload

function Overload(name) {
    this.__init_fields__();
    (this).name = name;
}
exports.Overload = Overload;

function Overload__init_fields__() {
    this.name = null;
}
Overload.prototype.__init_fields__ = Overload__init_fields__;
Overload.operator_overload_Overload_ref = operator_overload_md.Root.operator_overload_Overload_md;
function Overload___add__(o) {
    return o;
}
Overload.prototype.__add__ = Overload___add__;

function Overload___mul__(o) {
    return this;
}
Overload.prototype.__mul__ = Overload___mul__;

function Overload_test() {
    var o1 = new Overload("one");
    var o2 = new Overload("two");
    var o3 = (o1).__add__(o2);
    _qrt.print((o3).name);
    o3 = (o1).__mul__(o2);
    _qrt.print((o3).name);
    if ((o3) === (o1)) {
        _qrt.print("YAY!");
    }
}
Overload.prototype.test = Overload_test;

function Overload__getClass() {
    return "operator_overload.Overload";
}
Overload.prototype._getClass = Overload__getClass;

function Overload__getField(name) {
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
Overload.prototype._getField = Overload__getField;

function Overload__setField(name, value) {
    if ((name) === ("name")) {
        (this).name = value;
    }
}
Overload.prototype._setField = Overload__setField;
exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var o = new Overload("test");
    (o).test();
}
exports.main = main;
