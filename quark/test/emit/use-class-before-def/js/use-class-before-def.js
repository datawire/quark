var _qrt = require("quark_runtime.js");
var pkg = require('./pkg');
exports.pkg = pkg;


function main() {
    var bar = new pkg.Bar();
    (bar).go();
}
exports.main = main;

main();
