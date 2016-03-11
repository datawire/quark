var _qrt = require("builtin/quark_runtime.js");


function test_modulo(a, b) {
    _qrt.print(((((_qrt.toString(a)) + (" % ")) + (_qrt.toString(b))) + (" = ")) + (_qrt.toString(_qrt.modulo((a), (b)))));
}
exports.test_modulo = test_modulo;

function main() {
    test_modulo(4, 3);
    test_modulo(4, -(3));
    test_modulo(-(4), 3);
    test_modulo(-(4), -(3));
}
exports.main = main;
