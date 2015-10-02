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

// CLASS Native
function Native() {
    this.__init_fields__();
}
exports.Native = Native;

function Native__init_fields__() {}
Native.prototype.__init_fields__ = Native__init_fields__;


function Native_test() {
    var n1 = new Native();
    var n2 = new Native();
    var n1n2 = new Native();
    var n3 = n1n2;
}
Native.prototype.test = Native_test;
