var _qrt = require("builtin/quark_runtime.js");


// CLASS Box

function Box(contents) {
    this.__init_fields__();
    (this).contents = contents;
}
exports.Box = Box;

function Box__init_fields__() {
    this.contents = null;
}
Box.prototype.__init_fields__ = Box__init_fields__;

function Box_get() {
    return (this).contents;
}
Box.prototype.get = Box_get;

function Box__getClass() {
    return "test3.Box<Object>";
}
Box.prototype._getClass = Box__getClass;

function Box__getField(name) {
    if ((name) === ("contents")) {
        return (this).contents;
    }
    return null;
}
Box.prototype._getField = Box__getField;

function Box__setField(name, value) {
    if ((name) === ("contents")) {
        (this).contents = value;
    }
}
Box.prototype._setField = Box__setField;

function go() {
    var box = new Box("Hello World!!!");
    _qrt.print((box).get());
    _qrt.print((box).contents);
    _qrt.print((new Box("Hello World!!!")).get());
    _qrt.print((new Box("Hello World!!!")).contents);
}
exports.go = go;
