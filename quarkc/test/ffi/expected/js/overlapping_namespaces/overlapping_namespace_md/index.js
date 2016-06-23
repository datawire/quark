var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS org_example_bar_Bar_test_Method

function org_example_bar_Bar_test_Method() {
    org_example_bar_Bar_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.org_example_bar_Bar_test_Method = org_example_bar_Bar_test_Method;
_qrt.util.inherits(org_example_bar_Bar_test_Method, quark.reflect.Method);

function org_example_bar_Bar_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
org_example_bar_Bar_test_Method.prototype.__init_fields__ = org_example_bar_Bar_test_Method__init_fields__;

function org_example_bar_Bar_test_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return org.example.bar.Bar; });
    (obj).test();
    return null;
}
org_example_bar_Bar_test_Method.prototype.invoke = org_example_bar_Bar_test_Method_invoke;

function org_example_bar_Bar_test_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
org_example_bar_Bar_test_Method.prototype._getClass = org_example_bar_Bar_test_Method__getClass;

function org_example_bar_Bar_test_Method__getField(name) {
    return null;
}
org_example_bar_Bar_test_Method.prototype._getField = org_example_bar_Bar_test_Method__getField;

function org_example_bar_Bar_test_Method__setField(name, value) {}
org_example_bar_Bar_test_Method.prototype._setField = org_example_bar_Bar_test_Method__setField;

// CLASS org_example_bar_Bar

function org_example_bar_Bar() {
    org_example_bar_Bar.super_.call(this, "org.example.bar.Bar");
    (this).name = "org.example.bar.Bar";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new org_example_bar_Bar_test_Method()];
    (this).parents = [quark.reflect.Class.OBJECT];
}
exports.org_example_bar_Bar = org_example_bar_Bar;
_qrt.util.inherits(org_example_bar_Bar, quark.reflect.Class);

function org_example_bar_Bar__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
org_example_bar_Bar.prototype.__init_fields__ = org_example_bar_Bar__init_fields__;
org_example_bar_Bar.singleton = new org_example_bar_Bar();
function org_example_bar_Bar_construct(args) {
    return new org.example.bar.Bar();
}
org_example_bar_Bar.prototype.construct = org_example_bar_Bar_construct;

function org_example_bar_Bar__getClass() {
    return _qrt.cast(null, function () { return String; });
}
org_example_bar_Bar.prototype._getClass = org_example_bar_Bar__getClass;

function org_example_bar_Bar__getField(name) {
    return null;
}
org_example_bar_Bar.prototype._getField = org_example_bar_Bar__getField;

function org_example_bar_Bar__setField(name, value) {}
org_example_bar_Bar.prototype._setField = org_example_bar_Bar__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.org_example_bar_Bar_md = org_example_bar_Bar.singleton;
function Root__getClass() {
    return _qrt.cast(null, function () { return String; });
}
Root.prototype._getClass = Root__getClass;

function Root__getField(name) {
    return null;
}
Root.prototype._getField = Root__getField;

function Root__setField(name, value) {}
Root.prototype._setField = Root__setField;

var org = require('../org/index.js');
exports.org = org;
