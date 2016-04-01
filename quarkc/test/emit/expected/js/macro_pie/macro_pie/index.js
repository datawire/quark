var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var macro_pie_md = require('../macro_pie_md/index.js');
exports.macro_pie_md = macro_pie_md;



// CLASS Pie
function Pie() {
    this.__init_fields__();
}
exports.Pie = Pie;

function Pie__init_fields__() {}
Pie.prototype.__init_fields__ = Pie__init_fields__;
Pie.macro_pie_Pie_ref = macro_pie_md.Root.macro_pie_Pie_md;
function Pie_test() {
    var p = new Pie();
    var x = 3;
}
Pie.prototype.test = Pie_test;

function Pie__getClass() {
    return "macro_pie.Pie";
}
Pie.prototype._getClass = Pie__getClass;

function Pie__getField(name) {
    return null;
}
Pie.prototype._getField = Pie__getField;

function Pie__setField(name, value) {}
Pie.prototype._setField = Pie__setField;
exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    _qrt.print(3);
}
exports.main = main;
