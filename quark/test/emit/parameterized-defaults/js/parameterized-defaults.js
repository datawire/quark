var _qrt = require("datawire-quark-core");
var pkg = require('./pkg');
exports.pkg = pkg;


function main() {
    var box = new pkg.StringBox("asdf");
    _qrt.print((box).contents);
    var foo = new pkg.StringFoo();
    _qrt.print((foo).foo());
}
exports.main = main;

main();
