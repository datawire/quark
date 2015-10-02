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
var test1 = require('./test1');
var test2 = require('./test2');
var test3 = require('./test3');




function main() {
    test1.go();
    test2.go();
    test3.go();
}
exports.main = main;
