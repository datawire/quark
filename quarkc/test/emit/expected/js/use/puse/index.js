var _qrt = require("quark/quark_runtime.js");
var testlib = require('test').testlib;
exports.testlib = testlib;
var t2 = require('test').t2;
exports.t2 = t2;
var foo = require('../foo/index.js');
exports.foo = foo;


exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    _qrt.print(testlib.atest());
    _qrt.print(testlib.foo());
    _qrt.print(testlib.foo());
    t2.atest();
    _qrt.print(foo.qux());
}
exports.main = main;
