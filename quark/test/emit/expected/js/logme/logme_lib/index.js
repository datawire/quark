var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;


function main() {
    var l = (builtin.concurrent.Context.runtime()).logger("logme");
    (l).error("logme error");
}
exports.main = main;
