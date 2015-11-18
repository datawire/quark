var _qrt = require("quark_runtime.js");

function foo(s) {
    _qrt.print(s);
}
exports.foo = foo;

function main() {
    var o = "Hello World!";
    var s = o;
    var s2;
    s2 = o;
    foo(o);
}
exports.main = main;

main();
