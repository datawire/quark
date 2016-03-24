var _qrt = require("quark/quark_runtime.js");
var testlib = require('../testlib/index.js');
exports.testlib = testlib;



function atest() {
    /* import testlib; */

    var f = testlib.foo();
    _qrt.print(f);
}
exports.atest = atest;
