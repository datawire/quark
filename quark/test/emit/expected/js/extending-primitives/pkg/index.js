var _qrt = require("datawire-quark-core");
var reflect = require('builtin').reflect;
exports.reflect = reflect;
var extending_primitives_md = require('../extending_primitives_md');
exports.extending_primitives_md = extending_primitives_md;



// CLASS C
function C() {
    this.__init_fields__();
}
exports.C = C;

function C__init_fields__() {}
C.prototype.__init_fields__ = C__init_fields__;
C.pkg_C_ref = extending_primitives_md.Root.pkg_C_md;
function C_event1() {
    _qrt.print("event1");
}
C.prototype.event1 = C_event1;

function C__getClass() {
    return "pkg.C";
}
C.prototype._getClass = C__getClass;

function C__getField(name) {
    return null;
}
C.prototype._getField = C__getField;

function C__setField(name, value) {}
C.prototype._setField = C__setField;

function C_run() {
    _qrt.print("running");
}
C.prototype.run = C_run;

function C_event2() {
    _qrt.print("default event2");
}
C.prototype.event2 = C_event2;

function main() {
    var c = new C();
    (c).event1();
    (c).event2();
    (c).run();
}
exports.main = main;
