var _qrt = require("quark_runtime.js");
var test = require('./test');
exports.test = test;


function main() {
    test.go();
}
exports.main = main;

main();
