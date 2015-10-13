var _qrt = require("quark_runtime.js");
var p1 = require('./p1');
exports.p1 = p1;



function main() {
    p1.p2.a();
    p1.p2.b();
    p1.c();
    p1.d();
}
exports.main = main;

main();
