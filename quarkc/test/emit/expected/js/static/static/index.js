var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var static_md = require('../static_md/index.js');
exports.static_md = static_md;



// CLASS Foo

function Foo() {
    this.__init_fields__();
    Foo.count = (Foo.count) + (1);
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;
Foo.count = 0;
Foo.static_Foo_ref = static_md.Root.static_Foo_md;
function Foo_setCount(n) {
    Foo.count = n;
}
Foo.setCount = Foo_setCount;

function Foo_getCount() {
    return Foo.count;
}
Foo.getCount = Foo_getCount;

function Foo_test1() {
    Foo.count = (Foo.count) + (1);
}
Foo.prototype.test1 = Foo_test1;

function Foo_test2() {
    Foo.count = (Foo.count) + (1);
}
Foo.prototype.test2 = Foo_test2;

function Foo_test3() {
    Foo.count = (Foo.count) + (1);
}
Foo.prototype.test3 = Foo_test3;

function Foo_test4() {
    Foo.setCount((Foo.getCount()) + (1));
}
Foo.prototype.test4 = Foo_test4;

function Foo__getClass() {
    return "static.Foo";
}
Foo.prototype._getClass = Foo__getClass;

function Foo__getField(name) {
    if ((name) === ("count")) {
        return Foo.count;
    }
    return null;
}
Foo.prototype._getField = Foo__getField;

function Foo__setField(name, value) {
    if ((name) === ("count")) {
        Foo.count = value;
    }
}
Foo.prototype._setField = Foo__setField;

function main() {
    _qrt.print(Foo.count);
    var f = new Foo();
    _qrt.print(Foo.count);
    _qrt.print(Foo.count);
    f = new Foo();
    _qrt.print(Foo.count);
    _qrt.print(Foo.count);
    _qrt.print("==");
    (f).test1();
    _qrt.print(Foo.count);
    _qrt.print(Foo.count);
    _qrt.print("==");
    (f).test2();
    _qrt.print(Foo.count);
    _qrt.print(Foo.count);
    _qrt.print("==");
    (f).test3();
    _qrt.print(Foo.count);
    _qrt.print(Foo.count);
    _qrt.print("==");
    (f).test4();
    _qrt.print(Foo.getCount());
    _qrt.print(Foo.getCount());
    _qrt.print("==");
    Foo.setCount(0);
    _qrt.print(Foo.count);
    _qrt.print(Foo.count);
    _qrt.print(Foo.getCount());
    _qrt.print(Foo.getCount());
    _qrt.print("==");
    Foo.setCount(-(1));
    _qrt.print(Foo.count);
    _qrt.print(Foo.count);
    _qrt.print(Foo.getCount());
    _qrt.print(Foo.getCount());
}
exports.main = main;
