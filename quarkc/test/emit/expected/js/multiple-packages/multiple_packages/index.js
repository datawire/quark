var _qrt = require("quark/quark_runtime.js");
var p1 = require('../p1/index.js');
exports.p1 = p1;
var p1 = require('../p1/index.js');
exports.p1 = p1;


exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    p1.p2.a();
    p1.p2.b();
    p1.c();
    p1.d();
}
exports.main = main;
