var _qrt = require("quark_runtime.js");

// CLASS side_effects

function side_effects() {
    this.__init_fields__();
    this.trace = "T";
}
exports.side_effects = side_effects;

function side_effects__init_fields__() {
    this.trace = null;
}
side_effects.prototype.__init_fields__ = side_effects__init_fields__;

function side_effects_R() {
    (this).trace = ((this).trace) + ("R");
    return (this).trace;
}
side_effects.prototype.R = side_effects_R;

function side_effects_A() {
    (this).trace = ((this).trace) + ("A");
    return (this).trace;
}
side_effects.prototype.A = side_effects_A;

function side_effects_E() {
    (this).trace = ((this).trace) + ("CE");
    return (this).trace;
}
side_effects.prototype.E = side_effects_E;

function triop(a, b, c) {
    if (a) {
        return b;
    } else {
        return c;
    }
}
exports.triop = triop;


function main() {
    var a = new side_effects();
    _qrt.print((triop(((a).R()) !== ("a"), (a).R(), "null")) + (triop(((a).A()) !== ("b"), (a).A(), "null")));
    _qrt.print(("trace: ") + ((a).E()));
}
exports.main = main;

main();
