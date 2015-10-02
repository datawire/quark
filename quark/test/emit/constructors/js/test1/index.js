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

// CLASS Test

function Test() {
    this.__init_fields__();
    (this).name = "Hello World!";
}
exports.Test = Test;

function Test__init_fields__() {
    this.name = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;


function go() {
    var t = new Test();
    console.log(_Q_toString((t).name));
    console.log(_Q_toString((new Test()).name));
}
exports.go = go;