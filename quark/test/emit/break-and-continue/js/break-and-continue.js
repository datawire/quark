var _qrt = require("quark_runtime.js");

function main() {
    var stuff = ["one", "two", "three", "four"];
    var idx = 0;
    while (true) {
        var s = (stuff)[idx];
        if ((s) === ("three")) {
            _qrt.print("breaking");
            break;
        }
        _qrt.print("not breaking");
        idx = (idx) + (1);
    }
    idx = 0;
    var loop = true;
    while (loop) {
        var s2 = (stuff)[idx];
        if ((s2) !== ("three")) {
            idx = (idx) + (1);
            _qrt.print("continuing");
            continue;
        }
        _qrt.print("not continuing");
        loop = false;
    }
}
exports.main = main;

main();
