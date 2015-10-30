var _qrt = require("quark_runtime.js");
var pkg = require('./pkg');
exports.pkg = pkg;


function main() {
    var c = new pkg.C();
    (c).event1();
    (c).event2();
    (c).run();
}
exports.main = main;

main();
