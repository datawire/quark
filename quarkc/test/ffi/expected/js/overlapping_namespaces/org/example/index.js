var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("org/example");
var bar = require('./bar/index.js');
exports.bar = bar;


_qrt.pumpImports("org/example");
