var _qrt = require("builtin/quark_runtime.js");
var pkg = require('../pkg/index.js');
exports.pkg = pkg;



function main() {
    var c = new pkg.C();
    (c).event1();
    (c).event2();
    (c).run();
}
exports.main = main;
