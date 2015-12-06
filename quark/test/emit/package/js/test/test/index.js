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

function Test__getClass() {
    return "test.test.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    if ((name) === ("size")) {
        return (this).size;
    }
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {
    if ((name) === ("size")) {
        (this).size = value;
    }
}
Test.prototype._setField = Test__setField;
