var _qrt = require("quark/quark_runtime.js");
var pkg = require('../pkg/index.js');
exports.pkg = pkg;


exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var bar = new pkg.Bar();
    (bar).go();
}
exports.main = main;
