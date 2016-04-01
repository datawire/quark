var _qrt = require("quark/quark_runtime.js");

exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var map = new Map();
    (map).set(("pi"), (3.14159));
    _qrt.print(_qrt.urlencode(map));
}
exports.main = main;
