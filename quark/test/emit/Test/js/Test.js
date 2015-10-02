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

function Test_foo(t) {
    return new Test();
}
Test.prototype.foo = Test_foo;

function Test_test() {
    var x = 2;
    var y = 2;
    var z = (x) + (y);
    console.log(_Q_toString(z));
    var hello = "hello";
    console.log(_Q_toString(hello));
    var t1 = new Test();
    var t2 = (t1).foo(t1);
    if ((t2) !== (t1)) {
        console.log(_Q_toString("YAY!"));
    }
    var four = (2) + (2);
    console.log(_Q_toString(four));
}
Test.prototype.test = Test_test;

function main() {
    (new Test()).test();
}
exports.main = main;
