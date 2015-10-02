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

function go() {
    console.log(_Q_toString("GOGO!!"));
}
exports.go = go;

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {
    this.size = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;

function Test_go() {
    console.log(_Q_toString("TTGO!!"));
}
Test.prototype.go = Test_go;