var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("docs");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS Test
/**
 * hey, here are some docs
 * here are some more docs
 * a bunch of docs in fact
 * @class Test
 */
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {
    /**
     * field docs
     */
    this.name = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;
_qrt.lazyStatic(function(){Test.docs_Test_ref = null;});
/**
 * method docs
 * @method test
 * @memberof Test
 * @instance
 * @param {*} param
 */
function Test_test(param) {
    return 3;
}
Test.prototype.test = Test_test;

function Test__getClass() {
    return "docs.Test";
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

var quark_ffi_signatures_md; _qrt.lazyImport('../quark_ffi_signatures_md/index.js', function(){
    quark_ffi_signatures_md = require('../quark_ffi_signatures_md/index.js');
    exports.quark_ffi_signatures_md = quark_ffi_signatures_md;
});



_qrt.pumpImports("docs");
