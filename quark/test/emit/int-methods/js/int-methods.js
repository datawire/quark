var _qrt = require("quark_runtime.js");

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
    _qrt.print(z);
    var four = (2) + (2);
    _qrt.print(four);
}
Test.prototype.test = Test_test;

function main() {
    (new Test()).test();
}
exports.main = main;

main();
