var _qrt = require("builtin/quark_runtime.js");
var pkg = require('../pkg/index.js');
exports.pkg = pkg;



function main() {
    var box = new pkg.StringBox("asdf");
    _qrt.print((box).contents);
    var foo = new pkg.StringFoo();
    _qrt.print((foo).foo());
}
exports.main = main;
