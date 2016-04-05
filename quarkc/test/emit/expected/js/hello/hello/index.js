var _qrt = require("quark/quark_runtime.js");

exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    _qrt.print("Hello World");
}
exports.main = main;
