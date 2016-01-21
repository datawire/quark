var _qrt = require("datawire-quark-core");
var test1 = require('../test1');
exports.test1 = test1;
var test2 = require('../test2');
exports.test2 = test2;
var test3 = require('../test3');
exports.test3 = test3;


function main() {
    test1.go();
    test2.go();
    test3.go();
}
exports.main = main;
