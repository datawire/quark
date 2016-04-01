var _qrt = require("quark/quark_runtime.js");
var pkg = require('../pkg/index.js');
exports.pkg = pkg;


exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var box = new pkg.StringBox("asdf");
    _qrt.print((box).contents);
    var foo = new pkg.StringFoo();
    _qrt.print((foo).foo());
}
exports.main = main;
