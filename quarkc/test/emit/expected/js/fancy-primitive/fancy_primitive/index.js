var _qrt = require("quark/quark_runtime.js");

exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var s = [1, 2, 3];
    _qrt.print(s);
}
exports.main = main;
