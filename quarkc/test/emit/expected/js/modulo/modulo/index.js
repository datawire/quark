var _qrt = require("quark/quark_runtime.js");


function test_modulo(a, b) {
    _qrt.print(((((_qrt.toString(a)) + (" % ")) + (_qrt.toString(b))) + (" = ")) + (_qrt.toString(_qrt.modulo((a), (b)))));
}
exports.test_modulo = test_modulo;
exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    test_modulo(4, 3);
    test_modulo(4, -(3));
    test_modulo(-(4), 3);
    test_modulo(-(4), -(3));
}
exports.main = main;
