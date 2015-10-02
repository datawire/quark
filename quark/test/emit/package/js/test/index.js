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
var test = require('./test');
exports.test = test;

function go() {
    console.log(_Q_toString("GO!"));
}
exports.go = go;

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {
    this.name = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;

function Test_go() {
    console.log(_Q_toString("TGO!"));
}
Test.prototype.go = Test_go;
