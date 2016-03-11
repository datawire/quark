var _qrt = require("builtin/quark_runtime.js");


function factorial(n) {
    if ((n) === (0)) {
        return 1;
    } else {
        return (n) * (factorial((n) - (1)));
    }
}
exports.factorial = factorial;

function main() {
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
