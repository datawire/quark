var _qrt = require("quark/quark_runtime.js");
var test1 = require('../test1/index.js');
exports.test1 = test1;
var test2 = require('../test2/index.js');
exports.test2 = test2;
var test3 = require('../test3/index.js');
exports.test3 = test3;
var test4 = require('../test4/index.js');
exports.test4 = test4;


exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    test1.go();
    test2.go();
    test3.go();
    test4.go();
}
exports.main = main;
