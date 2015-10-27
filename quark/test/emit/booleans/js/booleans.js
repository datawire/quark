var _qrt = require("quark_runtime.js");

function main() {
    if (true) {
        _qrt.print("Hi!");
    }
    var b = (1) > (0);
    if (b) {
        _qrt.print("Hey!");
    }
    var c = false;
    if (!(c)) {
        _qrt.print("Ho!");
    }
    var count = 0;
    while (true) {
        if ((count) > (3)) {
            return;
        }
        count = (count) + (1);
    }
}
exports.main = main;

main();
