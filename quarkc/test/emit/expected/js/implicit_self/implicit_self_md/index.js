var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS implicit_self_Foo_next_Method

function implicit_self_Foo_next_Method() {
    implicit_self_Foo_next_Method.super_.call(this, "quark.void", "next", []);
}
exports.implicit_self_Foo_next_Method = implicit_self_Foo_next_Method;
_qrt.util.inherits(implicit_self_Foo_next_Method, quark.reflect.Method);

function implicit_self_Foo_next_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
implicit_self_Foo_next_Method.prototype.__init_fields__ = implicit_self_Foo_next_Method__init_fields__;

function implicit_self_Foo_next_Method_invoke(object, args) {
    var obj = object;
    (obj).next();
    return null;
}
implicit_self_Foo_next_Method.prototype.invoke = implicit_self_Foo_next_Method_invoke;

function implicit_self_Foo_next_Method__getClass() {
    return null;
}
implicit_self_Foo_next_Method.prototype._getClass = implicit_self_Foo_next_Method__getClass;

function implicit_self_Foo_next_Method__getField(name) {
    return null;
}
implicit_self_Foo_next_Method.prototype._getField = implicit_self_Foo_next_Method__getField;

function implicit_self_Foo_next_Method__setField(name, value) {}
implicit_self_Foo_next_Method.prototype._setField = implicit_self_Foo_next_Method__setField;

// CLASS implicit_self_Foo_test_Method

function implicit_self_Foo_test_Method() {
    implicit_self_Foo_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.implicit_self_Foo_test_Method = implicit_self_Foo_test_Method;
_qrt.util.inherits(implicit_self_Foo_test_Method, quark.reflect.Method);

function implicit_self_Foo_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
implicit_self_Foo_test_Method.prototype.__init_fields__ = implicit_self_Foo_test_Method__init_fields__;

function implicit_self_Foo_test_Method_invoke(object, args) {
    var obj = object;
    (obj).test();
    return null;
}
implicit_self_Foo_test_Method.prototype.invoke = implicit_self_Foo_test_Method_invoke;

function implicit_self_Foo_test_Method__getClass() {
    return null;
}
implicit_self_Foo_test_Method.prototype._getClass = implicit_self_Foo_test_Method__getClass;

function implicit_self_Foo_test_Method__getField(name) {
    return null;
}
implicit_self_Foo_test_Method.prototype._getField = implicit_self_Foo_test_Method__getField;

function implicit_self_Foo_test_Method__setField(name, value) {}
implicit_self_Foo_test_Method.prototype._setField = implicit_self_Foo_test_Method__setField;

// CLASS implicit_self_Foo

function implicit_self_Foo() {
    implicit_self_Foo.super_.call(this, "implicit_self.Foo");
    (this).name = "implicit_self.Foo";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new implicit_self_Foo_next_Method(), new implicit_self_Foo_test_Method()];
}
exports.implicit_self_Foo = implicit_self_Foo;
_qrt.util.inherits(implicit_self_Foo, quark.reflect.Class);

function implicit_self_Foo__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
implicit_self_Foo.prototype.__init_fields__ = implicit_self_Foo__init_fields__;
implicit_self_Foo.singleton = new implicit_self_Foo();
function implicit_self_Foo_construct(args) {
    return new implicit_self.Foo();
}
implicit_self_Foo.prototype.construct = implicit_self_Foo_construct;

function implicit_self_Foo__getClass() {
    return null;
}
implicit_self_Foo.prototype._getClass = implicit_self_Foo__getClass;

function implicit_self_Foo__getField(name) {
    return null;
}
implicit_self_Foo.prototype._getField = implicit_self_Foo__getField;

function implicit_self_Foo__setField(name, value) {}
implicit_self_Foo.prototype._setField = implicit_self_Foo__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.implicit_self_Foo_md = implicit_self_Foo.singleton;
function Root__getClass() {
    return null;
}
Root.prototype._getClass = Root__getClass;

function Root__getField(name) {
    return null;
}
Root.prototype._getField = Root__getField;

function Root__setField(name, value) {}
Root.prototype._setField = Root__setField;

var implicit_self = require('../implicit_self/index.js');
exports.implicit_self = implicit_self;
