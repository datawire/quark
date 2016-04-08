var _qrt = require("quark/quark_runtime.js");


function factorial(n) {
    if (require('lodash').isEqual((n), (0))) {
        return 1;
    } else {
        return (n) * (factorial((n) - (1)));
    }
}
exports.factorial = factorial;
exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    _qrt.print(factorial(1));
    _qrt.print(factorial(2));
    _qrt.print(factorial(3));
    _qrt.print(factorial(4));
    _qrt.print(factorial(5));
    _qrt.print(factorial(6));
    _qrt.print(factorial(7));
    _qrt.print(factorial(8));
    _qrt.print(factorial(9));
    _qrt.print(factorial(10));
}
exports.main = main;
