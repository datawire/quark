var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("org/example");
var foo = require('./foo/index.js');
exports.foo = foo;


_qrt.pumpImports("org/example");
