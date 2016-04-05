var _qrt = require("quark/quark_runtime.js");

exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
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
