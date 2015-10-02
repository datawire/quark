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

function test1() {
    var list = new Array();
    (list).push(1);
    (list).push(2);
    (list).push(3);
    console.log(_Q_toString((list)[0]));
    console.log(_Q_toString((list)[1]));
    console.log(_Q_toString((list)[2]));
}
exports.test1 = test1;

function test2() {
    var list = new Array();
    (list).push("one");
    (list).push("two");
    (list).push("three");
    console.log(_Q_toString((list)[0]));
    console.log(_Q_toString((list)[1]));
    console.log(_Q_toString((list)[2]));
}
exports.test2 = test2;

function test3() {
    var list = [];
    console.log(_Q_toString(list));
    list = [1];
    console.log(_Q_toString(list));
    list = [1, 2, 3];
    console.log(_Q_toString(list));
}
exports.test3 = test3;

function test4() {
    var list = [];
    console.log(_Q_toString(list));
    list = ["one"];
    console.log(_Q_toString(list));
    list = ["one", "two", "three"];
    console.log(_Q_toString(list));
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

function test5() {
    var boxes = [];
    (boxes).push(new Box());
    ((boxes)[0]).set(3);
    console.log(_Q_toString(((boxes)[0]).get()));
    boxes = [new Box()];
    console.log(_Q_toString(((boxes)[0]).get()));
}
exports.test5 = test5;

function test6() {
    var matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
    console.log(_Q_toString(matrix));
}
exports.test6 = test6;

function main() {
    test1();
    test2();
    test3();
    test4();
    test5();
    test6();
}
exports.main = main;
