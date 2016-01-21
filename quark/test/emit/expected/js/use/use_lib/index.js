var _qrt = require("datawire-quark-core");
var testlib = require('test').testlib;
exports.testlib = testlib;
var t2 = require('test').t2;
exports.t2 = t2;


function main() {
    _qrt.print(testlib.test());
    _qrt.print(testlib.foo());
    _qrt.print(testlib.foo());
    t2.test();
    _qrt.print(qux());
}
exports.main = main;

function qux() {
    return "moo";
}
exports.qux = qux;
