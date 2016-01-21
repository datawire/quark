var _qrt = require("datawire-quark-core");
var p2 = require('./p2');
exports.p2 = p2;



function c() {
    _qrt.print("c");
}
exports.c = c;


function d() {
    _qrt.print("d");
}
exports.d = d;

function main() {
    p2.a();
    p2.b();
    c();
    d();
}
exports.main = main;
