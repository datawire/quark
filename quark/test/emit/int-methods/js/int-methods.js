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
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;

function Test_test() {
    var x = 1;
    var y = 2;
    var z = (((x) + (y)) - (3)) * (4);
    console.log(_Q_toString(z));
    var four = (2) + (2);
    console.log(_Q_toString(four));
}
Test.prototype.test = Test_test;

function main() {
    (new Test()).test();
}
exports.main = main;

main();
