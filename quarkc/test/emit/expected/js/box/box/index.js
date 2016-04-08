var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var box_md = require('../box_md/index.js');
exports.box_md = box_md;



// CLASS Box
function Box() {
    this.__init_fields__();
}
exports.Box = Box;

function Box__init_fields__() {
    this.contents = null;
}
Box.prototype.__init_fields__ = Box__init_fields__;

function Box_set(contents) {
    (this).contents = contents;
}
Box.prototype.set = Box_set;

function Box_get() {
    return (this).contents;
}
Box.prototype.get = Box_get;

function Box__getClass() {
    return "box.Box<quark.Object>";
}
Box.prototype._getClass = Box__getClass;

function Box__getField(name) {
    if (require('lodash').isEqual((name), ("contents"))) {
        return (this).contents;
    }
    return null;
}
Box.prototype._getField = Box__getField;

function Box__setField(name, value) {
    if (require('lodash').isEqual((name), ("contents"))) {
        (this).contents = value;
    }
}
Box.prototype._setField = Box__setField;

// CLASS Crate
function Crate() {
    this.__init_fields__();
}
exports.Crate = Crate;

function Crate__init_fields__() {
    this.box = new Box();
    this.ibox = new Box();
}
Crate.prototype.__init_fields__ = Crate__init_fields__;
Crate.box_Box_quark_Object__ref = box_md.Root.box_Box_quark_Object__md;
Crate.box_Box_quark_int__ref = box_md.Root.box_Box_quark_int__md;
function Crate_set(stuff) {
    ((this).box).set(stuff);
}
Crate.prototype.set = Crate_set;

function Crate_get() {
    return ((this).box).get();
}
Crate.prototype.get = Crate_get;

function Crate__getClass() {
    return "box.Crate<quark.Object>";
}
Crate.prototype._getClass = Crate__getClass;

function Crate__getField(name) {
    if (require('lodash').isEqual((name), ("box"))) {
        return (this).box;
    }
    if (require('lodash').isEqual((name), ("ibox"))) {
        return (this).ibox;
    }
    return null;
}
Crate.prototype._getField = Crate__getField;

function Crate__setField(name, value) {
    if (require('lodash').isEqual((name), ("box"))) {
        (this).box = value;
    }
    if (require('lodash').isEqual((name), ("ibox"))) {
        (this).ibox = value;
    }
}
Crate.prototype._setField = Crate__setField;

// CLASS Sack
function Sack() {
    this.__init_fields__();
}
exports.Sack = Sack;

function Sack__init_fields__() {
    this.ints = new Box();
}
Sack.prototype.__init_fields__ = Sack__init_fields__;
Sack.box_Sack_ref = box_md.Root.box_Sack_md;
function Sack__getClass() {
    return "box.Sack";
}
Sack.prototype._getClass = Sack__getClass;

function Sack__getField(name) {
    if (require('lodash').isEqual((name), ("ints"))) {
        return (this).ints;
    }
    return null;
}
Sack.prototype._getField = Sack__getField;

function Sack__setField(name, value) {
    if (require('lodash').isEqual((name), ("ints"))) {
        (this).ints = value;
    }
}
Sack.prototype._setField = Sack__setField;

function test1() {
    var ibox = new Box();
    (ibox).set(3);
    var three = (ibox).get();
    _qrt.print(three);
    (ibox).contents = 4;
    _qrt.print((ibox).contents);
}
exports.test1 = test1;

function test2() {
    var sbox = new Box();
    (sbox).set("hello");
    var hello = (sbox).get();
    _qrt.print(hello);
    (sbox).contents = "world";
    _qrt.print((sbox).contents);
}
exports.test2 = test2;

function test3() {
    var icrate = new Crate();
    (icrate).set(3);
    _qrt.print((icrate).get());
    (icrate).set(4);
    _qrt.print(((icrate).box).contents);
}
exports.test3 = test3;

function test4() {
    var s = new Sack();
    _qrt.print(((s).ints).get());
    _qrt.print(((s).ints).contents);
    ((s).ints).set(3);
    _qrt.print(((s).ints).get());
    _qrt.print(((s).ints).contents);
    ((s).ints).contents = 4;
    _qrt.print(((s).ints).get());
    _qrt.print(((s).ints).contents);
}
exports.test4 = test4;

function test5() {
    var scrate = new Crate();
    _qrt.print((scrate).get());
    _qrt.print(((scrate).box).contents);
    (scrate).set("hello");
    _qrt.print((scrate).get());
    _qrt.print(((scrate).box).contents);
    ((scrate).ibox).contents = 3;
    _qrt.print(((scrate).ibox).contents);
}
exports.test5 = test5;

function test6() {
    var box = new Box();
    (box).set(new Box());
    ((box).get()).set(3);
    _qrt.print(((box).get()).get());
    _qrt.print(((box).contents).contents);
}
exports.test6 = test6;
exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    _qrt.print("test1:\n--");
    test1();
    _qrt.print("");
    _qrt.print("test2:\n--");
    test2();
    _qrt.print("");
    _qrt.print("test3:\n--");
    test3();
    _qrt.print("");
    _qrt.print("test4:\n--");
    test4();
    _qrt.print("");
    _qrt.print("test5:\n--");
    test5();
    _qrt.print("");
    _qrt.print("test6:\n--");
    test6();
}
exports.main = main;
