var _qrt = require("quark/quark_runtime.js");


function main() {
    var map = new Map();
    (map).set(("pi"), (3.14159));
    _qrt.print(_qrt.urlencode(map));
}
exports.main = main;
