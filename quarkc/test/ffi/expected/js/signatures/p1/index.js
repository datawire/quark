var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("p1");
var p2 = require('./p2/index.js');
exports.p2 = p2;



function c() {}
exports.c = c;


function d() {}
exports.d = d;
_qrt.pumpImports("p1");
