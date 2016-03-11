var _qrt = require("builtin/quark_runtime.js");
var pkg = require('../pkg/index.js');
exports.pkg = pkg;



function main() {
    var bar = new pkg.Bar();
    (bar).go();
}
exports.main = main;
