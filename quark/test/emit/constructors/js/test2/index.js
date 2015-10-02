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

function Test(name) {
    this.__init_fields__();
    (this).name = name;
}
exports.Test = Test;

function Test__init_fields__() {
    this.name = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;


function go() {
    var t = new Test("Hello World!!");
    console.log(_Q_toString((t).name));
    console.log(_Q_toString((new Test("Hello World!!")).name));
}
exports.go = go;