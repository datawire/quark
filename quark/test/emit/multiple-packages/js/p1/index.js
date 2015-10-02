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
var p2 = require('./p2');
exports.p2 = p2;



function c() {
    console.log(_Q_toString("c"));
}
exports.c = c;


function d() {
    console.log(_Q_toString("d"));
}
exports.d = d;