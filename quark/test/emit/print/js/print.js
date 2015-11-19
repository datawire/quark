var _qrt = require("datawire-quark-core");

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;

function Test_test() {
    _qrt.print("Hello World!");
}
Test.prototype.test = Test_test;

function main() {
    (new Test()).test();
}
exports.main = main;

main();
