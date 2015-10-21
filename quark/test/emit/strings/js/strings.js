var _qrt = require("quark_runtime.js");

function test_split() {
    var chunk = "a:b:c:d:e:f";
    var sep = ":";
    var pieces = (chunk).split(sep);
    _qrt.print(("size: ") + (_qrt.toString((pieces).length)));
    var i = 0;
    while ((i) < ((pieces).length)) {
        _qrt.print((((("piece[") + (_qrt.toString(i))) + ("] = '")) + ((pieces)[i])) + ("'"));
        i = (i) + (1);
    }
}
exports.test_split = test_split;

function main() {
    test_split();
}
exports.main = main;

main();
