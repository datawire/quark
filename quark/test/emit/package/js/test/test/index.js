var _qrt = require("datawire-quark-core");


function go() {
    _qrt.print("GOGO!!");
}
exports.go = go;

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {
    this.size = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;

function Test_go() {
    _qrt.print("TTGO!!");
}
Test.prototype.go = Test_go;
