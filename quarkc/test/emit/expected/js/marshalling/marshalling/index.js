var _qrt = require("quark/quark_runtime.js");
var m = require('../m/index.js');
exports.m = m;


exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    m.test_marshalling();
}
exports.main = main;
