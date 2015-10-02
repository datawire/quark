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

// CLASS Macro
function Macro() {
    this.__init_fields__();
}
exports.Macro = Macro;

function Macro__init_fields__() {}
Macro.prototype.__init_fields__ = Macro__init_fields__;





function Macro_test() {
    var m1 = new Macro();
    var m2 = new Macro();
    var m3 = m1;
    var m4 = m1;
    var m5 = m2;
    var m6 = m2;
    var m7 = m1;
    var m8 = m1;
    var m9 = m2;
    var m10 = m2;
}
Macro.prototype.test = Macro_test;
