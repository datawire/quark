var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("org/example/bar");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS Bar
function Bar() {
    this.__init_fields__();
}
exports.Bar = Bar;

function Bar__init_fields__() {}
Bar.prototype.__init_fields__ = Bar__init_fields__;
_qrt.lazyStatic(function(){Bar.org_example_bar_Bar_ref = null;});
function Bar_test() {}
Bar.prototype.test = Bar_test;

function Bar__getClass() {
    return "org.example.bar.Bar";
}
Bar.prototype._getClass = Bar__getClass;

function Bar__getField(name) {
    return null;
}
Bar.prototype._getField = Bar__getField;

function Bar__setField(name, value) {}
Bar.prototype._setField = Bar__setField;

var overlapping_namespace_md; _qrt.lazyImport('../../../overlapping_namespace_md/index.js', function(){
    overlapping_namespace_md = require('../../../overlapping_namespace_md/index.js');
    exports.overlapping_namespace_md = overlapping_namespace_md;
});



_qrt.pumpImports("org/example/bar");
