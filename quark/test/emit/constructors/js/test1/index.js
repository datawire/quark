var _qrt = require("quark_runtime.js");
var test1 = require('../test1');


// CLASS Test

function Test() {
    this.__init_fields__();
    (this).name = "Hello World!";
}
exports.Test = Test;

function Test__init_fields__() {
    this.name = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;


function go() {
    var t = new Test();
    _qrt.print((t).name);
    _qrt.print((new Test()).name);
}
exports.go = go;
