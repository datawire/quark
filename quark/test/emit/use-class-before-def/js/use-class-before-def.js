var _qrt = require("datawire-quark-core");
var pkg = require('./pkg');
exports.pkg = pkg;



function main() {
    var bar = new pkg.Bar();
    (bar).go();
}
exports.main = main;

main();
