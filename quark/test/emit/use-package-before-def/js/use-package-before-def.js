var _qrt = require("datawire-quark-core");
var test = require('./test');
exports.test = test;


function main() {
    test.go();
}
exports.main = main;

main();
