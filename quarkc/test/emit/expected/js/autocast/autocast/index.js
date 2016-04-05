var _qrt = require("quark/quark_runtime.js");


function foo(s) {
    _qrt.print(s);
}
exports.foo = foo;
exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var o = "Hello World!";
    var s = o;
    var s2 = null;
    s2 = o;
    foo(o);
}
exports.main = main;
