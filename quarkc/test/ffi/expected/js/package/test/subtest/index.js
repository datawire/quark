var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("test/subtest");
var quark = require('quark').quark;
exports.quark = quark;



function go() {}
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
_qrt.lazyStatic(function(){Test.test_subtest_Test_ref = null;});
function Test_go() {}
Test.prototype.go = Test_go;

function Test__getClass() {
    return "test.subtest.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    if (_qrt.equals((name), ("size"))) {
        return (this).size;
    }
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {
    if (_qrt.equals((name), ("size"))) {
        (this).size = _qrt.cast(value, function () { return Number; });
    }
}
Test.prototype._setField = Test__setField;

var package_md; _qrt.lazyImport('../../package_md/index.js', function(){
    package_md = require('../../package_md/index.js');
    exports.package_md = package_md;
});



_qrt.pumpImports("test/subtest");
