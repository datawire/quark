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

function a() {
    console.log(_Q_toString("a"));
}
exports.a = a;


function b() {
    console.log(_Q_toString("b"));
}
exports.b = b;
