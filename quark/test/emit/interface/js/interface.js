var _qrt = require("quark_runtime.js");

// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;

function Foo_m1() { /* interface */ }
Foo.prototype.m1 = Foo_m1;

function Foo_m2(arg) { /* interface */ }
Foo.prototype.m2 = Foo_m2;

function Foo_m3(args) { /* interface */ }
Foo.prototype.m3 = Foo_m3;

// CLASS Bar
function Bar() {
    this.__init_fields__();
}
exports.Bar = Bar;

function Bar__init_fields__() {}
Bar.prototype.__init_fields__ = Bar__init_fields__;

function Bar_m1() { /* interface */ }
Bar.prototype.m1 = Bar_m1;

function Bar_m2(arg) { /* interface */ }
Bar.prototype.m2 = Bar_m2;

function Bar_m3(args) { /* interface */ }
Bar.prototype.m3 = Bar_m3;

// CLASS Baz
function Baz() {
    Baz.super_.call(this);
}
exports.Baz = Baz;
_qrt.util.inherits(Baz, Foo);

function Baz__init_fields__() {
    Foo.prototype.__init_fields__.call(this);
}
Baz.prototype.__init_fields__ = Baz__init_fields__;

function Baz_m2(arg) {}
Baz.prototype.m2 = Baz_m2;

function Baz_m1() {}
Baz.prototype.m1 = Baz_m1;

function Baz_m3(args) {}
Baz.prototype.m3 = Baz_m3;

// CLASS RazBar
function RazBar() {
    RazBar.super_.call(this);
}
exports.RazBar = RazBar;
_qrt.util.inherits(RazBar, Bar);

function RazBar__init_fields__() {
    Bar.prototype.__init_fields__.call(this);
}
RazBar.prototype.__init_fields__ = RazBar__init_fields__;


// CLASS RazFaz
function RazFaz() {
    RazFaz.super_.call(this);
}
exports.RazFaz = RazFaz;
_qrt.util.inherits(RazFaz, Bar);

function RazFaz__init_fields__() {
    Bar.prototype.__init_fields__.call(this);
}
RazFaz.prototype.__init_fields__ = RazFaz__init_fields__;


// CLASS BazBar
function BazBar() {
    BazBar.super_.call(this);
}
exports.BazBar = BazBar;
_qrt.util.inherits(BazBar, Bar);

function BazBar__init_fields__() {
    Bar.prototype.__init_fields__.call(this);
}
BazBar.prototype.__init_fields__ = BazBar__init_fields__;

function BazBar_m1() {}
BazBar.prototype.m1 = BazBar_m1;

function BazBar_m2(arg) {}
BazBar.prototype.m2 = BazBar_m2;

function BazBar_m3(args) {}
BazBar.prototype.m3 = BazBar_m3;

// CLASS BazFaz
function BazFaz() {
    BazFaz.super_.call(this);
}
exports.BazFaz = BazFaz;
_qrt.util.inherits(BazFaz, Bar);

function BazFaz__init_fields__() {
    Bar.prototype.__init_fields__.call(this);
}
BazFaz.prototype.__init_fields__ = BazFaz__init_fields__;

function BazFaz_m1() {}
BazFaz.prototype.m1 = BazFaz_m1;

function BazFaz_m2(arg) {}
BazFaz.prototype.m2 = BazFaz_m2;

function BazFaz_m3(args) {}
BazFaz.prototype.m3 = BazFaz_m3;
