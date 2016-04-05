var _qrt = require("quark/quark_runtime.js");

exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var a = 2;
    var b = 2;
    _qrt.print(_qrt.toString((a) + (b)));
}
exports.main = main;
