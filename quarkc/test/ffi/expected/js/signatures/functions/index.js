var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("functions");


function factorial(n) {
    return _qrt.cast(null, function () { return Number; });
}
exports.factorial = factorial;
_qrt.pumpImports("functions");
