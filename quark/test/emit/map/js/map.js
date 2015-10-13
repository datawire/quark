var _qrt = require("quark_runtime.js");

function test1() {
    var map = new Map();
    (map).set(("pi"), (3));
    _qrt.print((map).get("pi"));
}
exports.test1 = test1;

function test_update() {
    var first = new Map();
    var second = new Map();
    (first).set(("a"), ("first_a"));
    (first).set(("b"), ("first_b"));
    (second).set(("b"), ("second_b"));
    (second).set(("c"), ("second_c"));
    for(var _ of (second)){(first).set(_[0], _[1])};
    _qrt.print((first).get("a"));
    _qrt.print((first).get("b"));
    _qrt.print((first).get("c"));
}
exports.test_update = test_update;

function main() {
    test1();
    test_update();
}
exports.main = main;

main();
