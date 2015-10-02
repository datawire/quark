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

function test() {
    var o = "Hello World!";
    var s = o;
    var s2;
    s2 = o;
}
exports.test = test;
