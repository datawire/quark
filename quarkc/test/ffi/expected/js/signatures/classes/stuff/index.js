var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("classes/stuff");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;
_qrt.lazyStatic(function(){Test.classes_stuff_Test_ref = null;});
function Test_foo(t) {
    return _qrt.cast(null, function () { return Test; });
}
Test.prototype.foo = Test_foo;

function Test_test() {}
Test.prototype.test = Test_test;

function Test__getClass() {
    return "classes.stuff.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {}
Test.prototype._setField = Test__setField;

var quark_ffi_signatures_md; _qrt.lazyImport('../../quark_ffi_signatures_md/index.js', function(){
    quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
    exports.quark_ffi_signatures_md = quark_ffi_signatures_md;
});



_qrt.pumpImports("classes/stuff");
