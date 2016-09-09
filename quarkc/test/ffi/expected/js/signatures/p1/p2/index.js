var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("p1/p2");


function a() {}
exports.a = a;


function b() {}
exports.b = b;
_qrt.pumpImports("p1/p2");
