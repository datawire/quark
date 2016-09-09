var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("testlib");


function atest() {
    return _qrt.cast(null, function () { return String; });
}
exports.atest = atest;

function foo() {
    return _qrt.cast(null, function () { return String; });
}
exports.foo = foo;
_qrt.pumpImports("testlib");
