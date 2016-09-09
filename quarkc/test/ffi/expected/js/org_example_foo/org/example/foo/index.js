var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("org/example/foo");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;
_qrt.lazyStatic(function(){Foo.org_example_foo_Foo_ref = null;});
function Foo_test() {}
Foo.prototype.test = Foo_test;

function Foo__getClass() {
    return "org.example.foo.Foo";
}
Foo.prototype._getClass = Foo__getClass;

function Foo__getField(name) {
    return null;
}
Foo.prototype._getField = Foo__getField;

function Foo__setField(name, value) {}
Foo.prototype._setField = Foo__setField;

var org_example_foo_md; _qrt.lazyImport('../../../org_example_foo_md/index.js', function(){
    org_example_foo_md = require('../../../org_example_foo_md/index.js');
    exports.org_example_foo_md = org_example_foo_md;
});



_qrt.pumpImports("org/example/foo");
