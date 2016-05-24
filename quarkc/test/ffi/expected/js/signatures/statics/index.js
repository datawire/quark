var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var quark_ffi_signatures_md = require('../quark_ffi_signatures_md/index.js');
exports.quark_ffi_signatures_md = quark_ffi_signatures_md;



// CLASS Foo

function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;
Foo.count = null;
Foo.statics_Foo_ref = quark_ffi_signatures_md.Root.statics_Foo_md;
function Foo_setCount(n) {}
Foo.setCount = Foo_setCount;

function Foo_getCount() {
    return 0;
}
Foo.getCount = Foo_getCount;

function Foo_test1() {}
Foo.prototype.test1 = Foo_test1;

function Foo_test2() {}
Foo.prototype.test2 = Foo_test2;

function Foo_test3() {}
Foo.prototype.test3 = Foo_test3;

function Foo_test4() {}
Foo.prototype.test4 = Foo_test4;

function Foo__getClass() {
    return "statics.Foo";
}
Foo.prototype._getClass = Foo__getClass;

function Foo__getField(name) {
    if (_qrt.equals((name), ("count"))) {
        return Foo.count;
    }
    return null;
}
Foo.prototype._getField = Foo__getField;

function Foo__setField(name, value) {
    if (_qrt.equals((name), ("count"))) {
        Foo.count = _qrt.cast(value, function () { return Number; });
    }
}
Foo.prototype._setField = Foo__setField;
