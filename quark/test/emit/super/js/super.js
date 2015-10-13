var _Q_util = require("util");
function _Q_toString(value) {
    if (value === null) {
        return "null";
    }
    if (Array.isArray(value)) {
        return "[" + value.map(_Q_toString).join(", ") + "]";
    }
    return value.toString();
}

//

// CLASS A

function A(name) {
    this.__init_fields__();
    (this).name = name;
}
exports.A = A;

function A__init_fields__() {
    this.name = null;
}
A.prototype.__init_fields__ = A__init_fields__;

function A_greet() {
    console.log(_Q_toString("Hello"));
}
A.prototype.greet = A_greet;

// CLASS B

function B() {
    B.super_.call(this, "Bob");
}
exports.B = B;
_Q_util.inherits(B, A);

function B__init_fields__() {
    A.prototype.__init_fields__.call(this);
}
B.prototype.__init_fields__ = B__init_fields__;

function B_greet() {
    this.constructor.super_.prototype.greet.call(this);
    console.log(_Q_toString(("I'm ") + ((this).name)));
}
B.prototype.greet = B_greet;

function main() {
    var b = new B();
    (b).greet();
}
exports.main = main;

main();
