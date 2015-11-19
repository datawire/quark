var _qrt = require("datawire-quark-core");

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

function main() {
    _qrt.print(3);
}
exports.main = main;

main();
