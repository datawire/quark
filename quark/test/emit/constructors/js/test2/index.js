var _qrt = require("quark_runtime.js");

// CLASS Test

function Test(name) {
    this.__init_fields__();
    (this).name = name;
}
exports.Test = Test;

function Test__init_fields__() {
    this.name = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;


function go() {
    var t = new Test("Hello World!!");
    _qrt.print((t).name);
    _qrt.print((new Test("Hello World!!")).name);
}
exports.go = go;
