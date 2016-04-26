var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var overlapping_namespace_md = require('../../../overlapping_namespace_md/index.js');
exports.overlapping_namespace_md = overlapping_namespace_md;



// CLASS Bar
function Bar() {
    this.__init_fields__();
}
exports.Bar = Bar;

function Bar__init_fields__() {}
Bar.prototype.__init_fields__ = Bar__init_fields__;
Bar.org_example_bar_Bar_ref = overlapping_namespace_md.Root.org_example_bar_Bar_md;
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
