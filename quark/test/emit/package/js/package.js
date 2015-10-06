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
var test = require('./test');
exports.test = test;


function main() {
    test.go();
    test.test.go();
    var t1 = new test.Test();
    var t2 = new test.test.Test();
    (t1).go();
    (t2).go();
}
exports.main = main;

main();
