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

function test1() {
    var map = new Map();
    (map).set(("pi"), (3));
    console.log(_Q_toString((map).get("pi")));
}
exports.test1 = test1;

function main() {
    test1();
}
exports.main = main;

main();
