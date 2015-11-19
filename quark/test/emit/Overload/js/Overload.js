var _qrt = require("datawire-quark-core");

// CLASS Overload

function Overload(name) {
    this.__init_fields__();
    (this).name = name;
}
exports.Overload = Overload;

function Overload__init_fields__() {
    this.name = null;
}
Overload.prototype.__init_fields__ = Overload__init_fields__;

function Overload___add__(o) {
    return o;
}
Overload.prototype.__add__ = Overload___add__;

function Overload___mul__(o) {
    return this;
}
Overload.prototype.__mul__ = Overload___mul__;

function Overload_test() {
    var o1 = new Overload("one");
    var o2 = new Overload("two");
    var o3 = (o1).__add__(o2);
    _qrt.print((o3).name);
    o3 = (o1).__mul__(o2);
    _qrt.print((o3).name);
    if ((o3) === (o1)) {
        _qrt.print("YAY!");
    }
}
Overload.prototype.test = Overload_test;

function main() {
    var o = new Overload("test");
    (o).test();
}
exports.main = main;

main();
