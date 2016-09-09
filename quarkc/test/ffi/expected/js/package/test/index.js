var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("test");
var quark = require('quark').quark;
exports.quark = quark;
var subtest = require('./subtest/index.js');
exports.subtest = subtest;



function go() {}
exports.go = go;

// CLASS Test
/**
 * This is a package.
 *
 * It has multiple lines of docs.
 * Hurrah!
 * @class Test
 */
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {
    this.name = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;
_qrt.lazyStatic(function(){Test.test_Test_ref = null;});
function Test_go() {}
Test.prototype.go = Test_go;

function Test__getClass() {
    return "test.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {
    if (_qrt.equals((name), ("name"))) {
        (this).name = _qrt.cast(value, function () { return String; });
    }
}
Test.prototype._setField = Test__setField;

var package_md; _qrt.lazyImport('../package_md/index.js', function(){
    package_md = require('../package_md/index.js');
    exports.package_md = package_md;
});



_qrt.pumpImports("test");
