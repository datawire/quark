var _qrt = require("quark_runtime.js");

function test1() {
    var map = new Map();
    (map).set(("pi"), (3));
    _qrt.print((map).get("pi"));
}
exports.test1 = test1;

function main() {
    test1();
}
exports.main = main;

main();
