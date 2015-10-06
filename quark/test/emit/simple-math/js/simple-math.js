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

function main() {
    var four = (2) + (2);
    console.log(_Q_toString((four).toString()));
    var half = Math.floor((1) / (2));
    console.log(_Q_toString((half).toString()));
    var num = 314;
    var den = 100;
    var pi = (num) / (den);
    console.log(_Q_toString((pi).toString()));
    var pie = 3.14;
    console.log(_Q_toString((pie).toString()));
    var n = Math.floor((-(100)) / (3));
    console.log(_Q_toString((n).toString()));
    var m = Math.floor((100) / (-(3)));
    console.log(_Q_toString((m).toString()));
}
exports.main = main;

main();
