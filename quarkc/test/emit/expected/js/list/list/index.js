var _qrt = require("quark/quark_runtime.js");


function test1() {
    var list = new Array();
    (list).push(1);
    (list).push(2);
    (list).push(3);
    _qrt.print((list)[0]);
    _qrt.print((list)[1]);
    _qrt.print((list)[2]);
}
exports.test1 = test1;

function test2() {
    var list = new Array();
    (list).push("one");
    (list).push("two");
    (list).push("three");
    _qrt.print((list)[0]);
    _qrt.print((list)[1]);
    _qrt.print((list)[2]);
}
exports.test2 = test2;

function test3() {
    var list = [];
    _qrt.print(list);
    list = [1];
    _qrt.print(list);
    list = [1, 2, 3];
    _qrt.print(list);
}
exports.test3 = test3;

function test4() {
    var list = [];
    _qrt.print(list);
    list = ["one"];
    _qrt.print(list);
    list = ["one", "two", "three"];
    _qrt.print(list);
}
exports.test4 = test4;

// CLASS Box
function Box() {
    this.__init_fields__();
}
exports.Box = Box;

function Box__init_fields__() {
    this.contents = null;
}
Box.prototype.__init_fields__ = Box__init_fields__;

function Box_get() {
    return this.contents;
}
Box.prototype.get = Box_get;

function Box_set(contents) {
    (this).contents = contents;
}
Box.prototype.set = Box_set;

function Box__getClass() {
    return "list.Box<quark.Object>";
}
Box.prototype._getClass = Box__getClass;

function Box__getField(name) {
    if (_qrt.equals((name), ("contents"))) {
        return (this).contents;
    }
    return null;
}
Box.prototype._getField = Box__getField;

function Box__setField(name, value) {
    if (_qrt.equals((name), ("contents"))) {
        (this).contents = value;
    }
}
Box.prototype._setField = Box__setField;

function test5() {
    var boxes = [];
    (boxes).push(new Box());
    ((boxes)[0]).set(3);
    _qrt.print(((boxes)[0]).get());
    boxes = [new Box()];
    _qrt.print(((boxes)[0]).get());
}
exports.test5 = test5;

function test6() {
    var matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
    _qrt.print(matrix);
}
exports.test6 = test6;

function sorter() {
    var stuff = ["Richard", "Rafi", "Abhay", "Bozzo", "Phil", "Austin", "Janice", "Flynn", "Vladimir"];
    (stuff).sort();
    _qrt.print(stuff);
}
exports.sorter = sorter;
exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    test1();
    test2();
    test3();
    test4();
    test5();
    test6();
    sorter();
}
exports.main = main;
