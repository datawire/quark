var _Q_util = require("util");
function _Q_toString(value) {
    if (value === null) {
        return "null";
    }
    if (Array.isArray(value)) {
        return "[" + value.map(_Q_toString).join(", ") + "]";
    }
    return value.toString();
}

//

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
    console.log(_Q_toString(3));
}
exports.main = main;

main();
