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
    console.log(_Q_toString((box).get()));
    console.log(_Q_toString((box).contents));
    console.log(_Q_toString((new Box("Hello World!!!")).get()));
    console.log(_Q_toString((new Box("Hello World!!!")).contents));
}
exports.go = go;