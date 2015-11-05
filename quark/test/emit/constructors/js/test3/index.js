var _qrt = require("quark_runtime.js");
var test3 = require('../test3');


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

function go() {
    var box = new Box("Hello World!!!");
    _qrt.print((box).get());
    _qrt.print((box).contents);
    _qrt.print((new Box("Hello World!!!")).get());
    _qrt.print((new Box("Hello World!!!")).contents);
}
exports.go = go;
