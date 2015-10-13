var _qrt = require("quark_runtime.js");

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;

function Test_foo(t) {
    return new Test();
}
Test.prototype.foo = Test_foo;

function Test_test() {
    var x = 2;
    var y = 2;
    var z = (x) + (y);
    _qrt.print(z);
    var hello = "hello";
    _qrt.print(hello);
    var t1 = new Test();
    var t2 = (t1).foo(t1);
    if ((t2) !== (t1)) {
        _qrt.print("YAY!");
    }
    var four = (2) + (2);
    _qrt.print(four);
}
Test.prototype.test = Test_test;

function main() {
    (new Test()).test();
}
exports.main = main;

main();
