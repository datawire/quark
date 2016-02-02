var _qrt = require("builtin/quark_runtime.js");

// CLASS Pie
function Pie() {
    this.__init_fields__();
}
exports.Pie = Pie;

function Pie__init_fields__() {}
Pie.prototype.__init_fields__ = Pie__init_fields__;

function Pie_test() {
    var p = new Pie();
    var x = 3;
}
Pie.prototype.test = Pie_test;

function Pie__getClass() {
    return "Pie";
}
Pie.prototype._getClass = Pie__getClass;

function Pie__getField(name) {
    return null;
}
Pie.prototype._getField = Pie__getField;

function Pie__setField(name, value) {}
Pie.prototype._setField = Pie__setField;

function main() {
    _qrt.print(3);
}
exports.main = main;
