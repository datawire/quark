var _qrt = require("quark/quark_runtime.js");
var testlib = require('test').testlib;
exports.testlib = testlib;
var t2 = require('test').t2;
exports.t2 = t2;
var foo = require('../foo/index.js');
exports.foo = foo;



function main() {
    _qrt.print(testlib.test());
    _qrt.print(testlib.foo());
    _qrt.print(testlib.foo());
    t2.test();
    _qrt.print(foo.qux());
}
exports.main = main;
