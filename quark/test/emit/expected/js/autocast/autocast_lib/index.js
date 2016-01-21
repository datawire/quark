var _qrt = require("datawire-quark-core");

function foo(s) {
    _qrt.print(s);
}
exports.foo = foo;

function main() {
    var o = "Hello World!";
    var s = o;
    var s2 = null;
    s2 = o;
    foo(o);
}
exports.main = main;
