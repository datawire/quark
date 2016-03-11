var _qrt = require("builtin/quark_runtime.js");
var p2 = require('./p2/index.js');
exports.p2 = p2;



function c() {
    _qrt.print("c");
}
exports.c = c;


function d() {
    _qrt.print("d");
}
exports.d = d;
