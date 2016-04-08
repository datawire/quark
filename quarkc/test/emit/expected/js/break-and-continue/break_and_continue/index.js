var _qrt = require("quark/quark_runtime.js");

exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var stuff = ["one", "two", "three", "four"];
    var idx = 0;
    while (true) {
        var s = (stuff)[idx];
        if (require('lodash').isEqual((s), ("three"))) {
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
