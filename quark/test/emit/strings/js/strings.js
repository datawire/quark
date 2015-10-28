var _qrt = require("quark_runtime.js");

function main() {
    _qrt.print("\"");
    _qrt.print("\"\"");
    _qrt.print("\u0000");
    _qrt.print("\u00FF");
    _qrt.print("\u00ff");
    _qrt.print("\u00FF");
    _qrt.print("\u00ff");
    _qrt.print("\n");
}
exports.main = main;

main();
