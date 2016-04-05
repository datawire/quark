var _qrt = require("quark/quark_runtime.js");


function test1() {
    var map = new Map();
    (map).set(("pi"), (3));
    _qrt.print(_qrt.map_get((map), ("pi")));
    _qrt.print(_qrt.map_get((map), ("not_there")));
    _qrt.print("^--- should be null");
}
exports.test1 = test1;

function test_update() {
    var first = new Map();
    var second = new Map();
    (first).set(("a"), ("first_a"));
    (first).set(("b"), ("first_b"));
    (second).set(("b"), ("second_b"));
    (second).set(("c"), ("second_c"));
    (second).forEach(function (v, k) { (first).set(k, v); });
    _qrt.print(_qrt.map_get((first), ("a")));
    _qrt.print(_qrt.map_get((first), ("b")));
    _qrt.print(_qrt.map_get((first), ("c")));
}
exports.test_update = test_update;

function test_literal() {
    var map = new Map([]);
    map = new Map([["pi", 3.14159], ["e", 2.718]]);
    _qrt.print(_qrt.map_get((map), ("pi")));
    _qrt.print(_qrt.map_get((map), ("e")));
}
exports.test_literal = test_literal;

function iterables() {
    var numbers = new Map([["zero", 0], ["one", 1], ["two", 2], ["e", 2], ["three", 3], ["pi", 3], ["fun", 69], ["dockingbay", 94]]);
    var keys = Array.from((numbers).keys());
    (keys).sort();
    _qrt.print(keys);
}
exports.iterables = iterables;
exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    test1();
    test_update();
    test_literal();
    iterables();
}
exports.main = main;
