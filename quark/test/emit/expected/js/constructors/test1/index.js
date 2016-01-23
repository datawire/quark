var _qrt = require("datawire-quark-core");
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var constructors_md = require('../constructors_md');
exports.constructors_md = constructors_md;



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
Test.test1_Test_ref = constructors_md.Root.test1_Test_md;
function Test__getClass() {
    return "test1.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {
    if ((name) === ("name")) {
        (this).name = value;
    }
}
Test.prototype._setField = Test__setField;

function go() {
    var t = new Test();
    _qrt.print((t).name);
    _qrt.print((new Test()).name);
}
exports.go = go;
