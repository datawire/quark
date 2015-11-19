var _qrt = require("datawire-quark-core");

function main() {
    var four = (2) + (2);
    _qrt.print(_qrt.toString(four));
    var half = Math.floor((1) / (2));
    _qrt.print(_qrt.toString(half));
    var num = 314.0;
    var den = 100.0;
    var pi = (num) / (den);
    _qrt.print(_qrt.toString(pi));
    var pie = 3.14;
    _qrt.print(_qrt.toString(pie));
    var n = Math.floor((-(100)) / (3));
    _qrt.print(_qrt.toString(n));
    var m = Math.floor((100) / (-(3)));
    _qrt.print(_qrt.toString(m));
    var l = _qrt.modulo((100), (3));
    _qrt.print(_qrt.toString(l));
    var k = _qrt.modulo((-(100)), (3));
    _qrt.print(_qrt.toString(k));
}
exports.main = main;

main();
