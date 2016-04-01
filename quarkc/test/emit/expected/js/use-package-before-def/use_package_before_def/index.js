var _qrt = require("quark/quark_runtime.js");
var test = require('../test/index.js');
exports.test = test;


exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    test.go();
}
exports.main = main;
