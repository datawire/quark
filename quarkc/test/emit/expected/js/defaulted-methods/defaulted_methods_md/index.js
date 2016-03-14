var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS pkg_A_foo_Method

function pkg_A_foo_Method() {
    pkg_A_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.pkg_A_foo_Method = pkg_A_foo_Method;
_qrt.util.inherits(pkg_A_foo_Method, quark.reflect.Method);

function pkg_A_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_A_foo_Method.prototype.__init_fields__ = pkg_A_foo_Method__init_fields__;

function pkg_A_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_A_foo_Method.prototype.invoke = pkg_A_foo_Method_invoke;

function pkg_A_foo_Method__getClass() {
    return null;
}
pkg_A_foo_Method.prototype._getClass = pkg_A_foo_Method__getClass;

function pkg_A_foo_Method__getField(name) {
    return null;
}
pkg_A_foo_Method.prototype._getField = pkg_A_foo_Method__getField;

function pkg_A_foo_Method__setField(name, value) {}
pkg_A_foo_Method.prototype._setField = pkg_A_foo_Method__setField;

// CLASS pkg_A_bar_Method

function pkg_A_bar_Method() {
    pkg_A_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.pkg_A_bar_Method = pkg_A_bar_Method;
_qrt.util.inherits(pkg_A_bar_Method, quark.reflect.Method);

function pkg_A_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_A_bar_Method.prototype.__init_fields__ = pkg_A_bar_Method__init_fields__;

function pkg_A_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_A_bar_Method.prototype.invoke = pkg_A_bar_Method_invoke;

function pkg_A_bar_Method__getClass() {
    return null;
}
pkg_A_bar_Method.prototype._getClass = pkg_A_bar_Method__getClass;

function pkg_A_bar_Method__getField(name) {
    return null;
}
pkg_A_bar_Method.prototype._getField = pkg_A_bar_Method__getField;

function pkg_A_bar_Method__setField(name, value) {}
pkg_A_bar_Method.prototype._setField = pkg_A_bar_Method__setField;

// CLASS pkg_A

function pkg_A() {
    pkg_A.super_.call(this, "pkg.A");
    (this).name = "pkg.A";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_A_foo_Method(), new pkg_A_bar_Method()];
}
exports.pkg_A = pkg_A;
_qrt.util.inherits(pkg_A, quark.reflect.Class);

function pkg_A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_A.prototype.__init_fields__ = pkg_A__init_fields__;
pkg_A.singleton = new pkg_A();
function pkg_A_construct(args) {
    return null;
}
pkg_A.prototype.construct = pkg_A_construct;

function pkg_A__getClass() {
    return null;
}
pkg_A.prototype._getClass = pkg_A__getClass;

function pkg_A__getField(name) {
    return null;
}
pkg_A.prototype._getField = pkg_A__getField;

function pkg_A__setField(name, value) {}
pkg_A.prototype._setField = pkg_A__setField;


// CLASS pkg_B_bar_Method

function pkg_B_bar_Method() {
    pkg_B_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.pkg_B_bar_Method = pkg_B_bar_Method;
_qrt.util.inherits(pkg_B_bar_Method, quark.reflect.Method);

function pkg_B_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_B_bar_Method.prototype.__init_fields__ = pkg_B_bar_Method__init_fields__;

function pkg_B_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_B_bar_Method.prototype.invoke = pkg_B_bar_Method_invoke;

function pkg_B_bar_Method__getClass() {
    return null;
}
pkg_B_bar_Method.prototype._getClass = pkg_B_bar_Method__getClass;

function pkg_B_bar_Method__getField(name) {
    return null;
}
pkg_B_bar_Method.prototype._getField = pkg_B_bar_Method__getField;

function pkg_B_bar_Method__setField(name, value) {}
pkg_B_bar_Method.prototype._setField = pkg_B_bar_Method__setField;

// CLASS pkg_B

function pkg_B() {
    pkg_B.super_.call(this, "pkg.B");
    (this).name = "pkg.B";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_B_bar_Method()];
}
exports.pkg_B = pkg_B;
_qrt.util.inherits(pkg_B, quark.reflect.Class);

function pkg_B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_B.prototype.__init_fields__ = pkg_B__init_fields__;
pkg_B.singleton = new pkg_B();
function pkg_B_construct(args) {
    return null;
}
pkg_B.prototype.construct = pkg_B_construct;

function pkg_B__getClass() {
    return null;
}
pkg_B.prototype._getClass = pkg_B__getClass;

function pkg_B__getField(name) {
    return null;
}
pkg_B.prototype._getField = pkg_B__getField;

function pkg_B__setField(name, value) {}
pkg_B.prototype._setField = pkg_B__setField;


// CLASS pkg_C_foo_Method

function pkg_C_foo_Method() {
    pkg_C_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.pkg_C_foo_Method = pkg_C_foo_Method;
_qrt.util.inherits(pkg_C_foo_Method, quark.reflect.Method);

function pkg_C_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_C_foo_Method.prototype.__init_fields__ = pkg_C_foo_Method__init_fields__;

function pkg_C_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_C_foo_Method.prototype.invoke = pkg_C_foo_Method_invoke;

function pkg_C_foo_Method__getClass() {
    return null;
}
pkg_C_foo_Method.prototype._getClass = pkg_C_foo_Method__getClass;

function pkg_C_foo_Method__getField(name) {
    return null;
}
pkg_C_foo_Method.prototype._getField = pkg_C_foo_Method__getField;

function pkg_C_foo_Method__setField(name, value) {}
pkg_C_foo_Method.prototype._setField = pkg_C_foo_Method__setField;

// CLASS pkg_C

function pkg_C() {
    pkg_C.super_.call(this, "pkg.C");
    (this).name = "pkg.C";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_C_foo_Method()];
}
exports.pkg_C = pkg_C;
_qrt.util.inherits(pkg_C, quark.reflect.Class);

function pkg_C__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_C.prototype.__init_fields__ = pkg_C__init_fields__;
pkg_C.singleton = new pkg_C();
function pkg_C_construct(args) {
    return null;
}
pkg_C.prototype.construct = pkg_C_construct;

function pkg_C__getClass() {
    return null;
}
pkg_C.prototype._getClass = pkg_C__getClass;

function pkg_C__getField(name) {
    return null;
}
pkg_C.prototype._getField = pkg_C__getField;

function pkg_C__setField(name, value) {}
pkg_C.prototype._setField = pkg_C__setField;


// CLASS pkg_T1_foo_Method

function pkg_T1_foo_Method() {
    pkg_T1_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.pkg_T1_foo_Method = pkg_T1_foo_Method;
_qrt.util.inherits(pkg_T1_foo_Method, quark.reflect.Method);

function pkg_T1_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T1_foo_Method.prototype.__init_fields__ = pkg_T1_foo_Method__init_fields__;

function pkg_T1_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T1_foo_Method.prototype.invoke = pkg_T1_foo_Method_invoke;

function pkg_T1_foo_Method__getClass() {
    return null;
}
pkg_T1_foo_Method.prototype._getClass = pkg_T1_foo_Method__getClass;

function pkg_T1_foo_Method__getField(name) {
    return null;
}
pkg_T1_foo_Method.prototype._getField = pkg_T1_foo_Method__getField;

function pkg_T1_foo_Method__setField(name, value) {}
pkg_T1_foo_Method.prototype._setField = pkg_T1_foo_Method__setField;

// CLASS pkg_T1_bar_Method

function pkg_T1_bar_Method() {
    pkg_T1_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.pkg_T1_bar_Method = pkg_T1_bar_Method;
_qrt.util.inherits(pkg_T1_bar_Method, quark.reflect.Method);

function pkg_T1_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T1_bar_Method.prototype.__init_fields__ = pkg_T1_bar_Method__init_fields__;

function pkg_T1_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_T1_bar_Method.prototype.invoke = pkg_T1_bar_Method_invoke;

function pkg_T1_bar_Method__getClass() {
    return null;
}
pkg_T1_bar_Method.prototype._getClass = pkg_T1_bar_Method__getClass;

function pkg_T1_bar_Method__getField(name) {
    return null;
}
pkg_T1_bar_Method.prototype._getField = pkg_T1_bar_Method__getField;

function pkg_T1_bar_Method__setField(name, value) {}
pkg_T1_bar_Method.prototype._setField = pkg_T1_bar_Method__setField;

// CLASS pkg_T1

function pkg_T1() {
    pkg_T1.super_.call(this, "pkg.T1");
    (this).name = "pkg.T1";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T1_foo_Method(), new pkg_T1_bar_Method()];
}
exports.pkg_T1 = pkg_T1;
_qrt.util.inherits(pkg_T1, quark.reflect.Class);

function pkg_T1__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T1.prototype.__init_fields__ = pkg_T1__init_fields__;
pkg_T1.singleton = new pkg_T1();
function pkg_T1_construct(args) {
    return new pkg.T1();
}
pkg_T1.prototype.construct = pkg_T1_construct;

function pkg_T1__getClass() {
    return null;
}
pkg_T1.prototype._getClass = pkg_T1__getClass;

function pkg_T1__getField(name) {
    return null;
}
pkg_T1.prototype._getField = pkg_T1__getField;

function pkg_T1__setField(name, value) {}
pkg_T1.prototype._setField = pkg_T1__setField;


// CLASS pkg_T2_foo_Method

function pkg_T2_foo_Method() {
    pkg_T2_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.pkg_T2_foo_Method = pkg_T2_foo_Method;
_qrt.util.inherits(pkg_T2_foo_Method, quark.reflect.Method);

function pkg_T2_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T2_foo_Method.prototype.__init_fields__ = pkg_T2_foo_Method__init_fields__;

function pkg_T2_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T2_foo_Method.prototype.invoke = pkg_T2_foo_Method_invoke;

function pkg_T2_foo_Method__getClass() {
    return null;
}
pkg_T2_foo_Method.prototype._getClass = pkg_T2_foo_Method__getClass;

function pkg_T2_foo_Method__getField(name) {
    return null;
}
pkg_T2_foo_Method.prototype._getField = pkg_T2_foo_Method__getField;

function pkg_T2_foo_Method__setField(name, value) {}
pkg_T2_foo_Method.prototype._setField = pkg_T2_foo_Method__setField;

// CLASS pkg_T2_bar_Method

function pkg_T2_bar_Method() {
    pkg_T2_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.pkg_T2_bar_Method = pkg_T2_bar_Method;
_qrt.util.inherits(pkg_T2_bar_Method, quark.reflect.Method);

function pkg_T2_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T2_bar_Method.prototype.__init_fields__ = pkg_T2_bar_Method__init_fields__;

function pkg_T2_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_T2_bar_Method.prototype.invoke = pkg_T2_bar_Method_invoke;

function pkg_T2_bar_Method__getClass() {
    return null;
}
pkg_T2_bar_Method.prototype._getClass = pkg_T2_bar_Method__getClass;

function pkg_T2_bar_Method__getField(name) {
    return null;
}
pkg_T2_bar_Method.prototype._getField = pkg_T2_bar_Method__getField;

function pkg_T2_bar_Method__setField(name, value) {}
pkg_T2_bar_Method.prototype._setField = pkg_T2_bar_Method__setField;

// CLASS pkg_T2

function pkg_T2() {
    pkg_T2.super_.call(this, "pkg.T2");
    (this).name = "pkg.T2";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T2_foo_Method(), new pkg_T2_bar_Method()];
}
exports.pkg_T2 = pkg_T2;
_qrt.util.inherits(pkg_T2, quark.reflect.Class);

function pkg_T2__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T2.prototype.__init_fields__ = pkg_T2__init_fields__;
pkg_T2.singleton = new pkg_T2();
function pkg_T2_construct(args) {
    return new pkg.T2();
}
pkg_T2.prototype.construct = pkg_T2_construct;

function pkg_T2__getClass() {
    return null;
}
pkg_T2.prototype._getClass = pkg_T2__getClass;

function pkg_T2__getField(name) {
    return null;
}
pkg_T2.prototype._getField = pkg_T2__getField;

function pkg_T2__setField(name, value) {}
pkg_T2.prototype._setField = pkg_T2__setField;


// CLASS pkg_T3_foo_Method

function pkg_T3_foo_Method() {
    pkg_T3_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.pkg_T3_foo_Method = pkg_T3_foo_Method;
_qrt.util.inherits(pkg_T3_foo_Method, quark.reflect.Method);

function pkg_T3_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T3_foo_Method.prototype.__init_fields__ = pkg_T3_foo_Method__init_fields__;

function pkg_T3_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T3_foo_Method.prototype.invoke = pkg_T3_foo_Method_invoke;

function pkg_T3_foo_Method__getClass() {
    return null;
}
pkg_T3_foo_Method.prototype._getClass = pkg_T3_foo_Method__getClass;

function pkg_T3_foo_Method__getField(name) {
    return null;
}
pkg_T3_foo_Method.prototype._getField = pkg_T3_foo_Method__getField;

function pkg_T3_foo_Method__setField(name, value) {}
pkg_T3_foo_Method.prototype._setField = pkg_T3_foo_Method__setField;

// CLASS pkg_T3_bar_Method

function pkg_T3_bar_Method() {
    pkg_T3_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.pkg_T3_bar_Method = pkg_T3_bar_Method;
_qrt.util.inherits(pkg_T3_bar_Method, quark.reflect.Method);

function pkg_T3_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T3_bar_Method.prototype.__init_fields__ = pkg_T3_bar_Method__init_fields__;

function pkg_T3_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_T3_bar_Method.prototype.invoke = pkg_T3_bar_Method_invoke;

function pkg_T3_bar_Method__getClass() {
    return null;
}
pkg_T3_bar_Method.prototype._getClass = pkg_T3_bar_Method__getClass;

function pkg_T3_bar_Method__getField(name) {
    return null;
}
pkg_T3_bar_Method.prototype._getField = pkg_T3_bar_Method__getField;

function pkg_T3_bar_Method__setField(name, value) {}
pkg_T3_bar_Method.prototype._setField = pkg_T3_bar_Method__setField;

// CLASS pkg_T3

function pkg_T3() {
    pkg_T3.super_.call(this, "pkg.T3");
    (this).name = "pkg.T3";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T3_foo_Method(), new pkg_T3_bar_Method()];
}
exports.pkg_T3 = pkg_T3;
_qrt.util.inherits(pkg_T3, quark.reflect.Class);

function pkg_T3__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T3.prototype.__init_fields__ = pkg_T3__init_fields__;
pkg_T3.singleton = new pkg_T3();
function pkg_T3_construct(args) {
    return new pkg.T3();
}
pkg_T3.prototype.construct = pkg_T3_construct;

function pkg_T3__getClass() {
    return null;
}
pkg_T3.prototype._getClass = pkg_T3__getClass;

function pkg_T3__getField(name) {
    return null;
}
pkg_T3.prototype._getField = pkg_T3__getField;

function pkg_T3__setField(name, value) {}
pkg_T3.prototype._setField = pkg_T3__setField;


// CLASS pkg_T4_foo_Method

function pkg_T4_foo_Method() {
    pkg_T4_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.pkg_T4_foo_Method = pkg_T4_foo_Method;
_qrt.util.inherits(pkg_T4_foo_Method, quark.reflect.Method);

function pkg_T4_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T4_foo_Method.prototype.__init_fields__ = pkg_T4_foo_Method__init_fields__;

function pkg_T4_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T4_foo_Method.prototype.invoke = pkg_T4_foo_Method_invoke;

function pkg_T4_foo_Method__getClass() {
    return null;
}
pkg_T4_foo_Method.prototype._getClass = pkg_T4_foo_Method__getClass;

function pkg_T4_foo_Method__getField(name) {
    return null;
}
pkg_T4_foo_Method.prototype._getField = pkg_T4_foo_Method__getField;

function pkg_T4_foo_Method__setField(name, value) {}
pkg_T4_foo_Method.prototype._setField = pkg_T4_foo_Method__setField;

// CLASS pkg_T4_bar_Method

function pkg_T4_bar_Method() {
    pkg_T4_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.pkg_T4_bar_Method = pkg_T4_bar_Method;
_qrt.util.inherits(pkg_T4_bar_Method, quark.reflect.Method);

function pkg_T4_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T4_bar_Method.prototype.__init_fields__ = pkg_T4_bar_Method__init_fields__;

function pkg_T4_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_T4_bar_Method.prototype.invoke = pkg_T4_bar_Method_invoke;

function pkg_T4_bar_Method__getClass() {
    return null;
}
pkg_T4_bar_Method.prototype._getClass = pkg_T4_bar_Method__getClass;

function pkg_T4_bar_Method__getField(name) {
    return null;
}
pkg_T4_bar_Method.prototype._getField = pkg_T4_bar_Method__getField;

function pkg_T4_bar_Method__setField(name, value) {}
pkg_T4_bar_Method.prototype._setField = pkg_T4_bar_Method__setField;

// CLASS pkg_T4

function pkg_T4() {
    pkg_T4.super_.call(this, "pkg.T4");
    (this).name = "pkg.T4";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T4_foo_Method(), new pkg_T4_bar_Method()];
}
exports.pkg_T4 = pkg_T4;
_qrt.util.inherits(pkg_T4, quark.reflect.Class);

function pkg_T4__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T4.prototype.__init_fields__ = pkg_T4__init_fields__;
pkg_T4.singleton = new pkg_T4();
function pkg_T4_construct(args) {
    return new pkg.T4();
}
pkg_T4.prototype.construct = pkg_T4_construct;

function pkg_T4__getClass() {
    return null;
}
pkg_T4.prototype._getClass = pkg_T4__getClass;

function pkg_T4__getField(name) {
    return null;
}
pkg_T4.prototype._getField = pkg_T4__getField;

function pkg_T4__setField(name, value) {}
pkg_T4.prototype._setField = pkg_T4__setField;


// CLASS pkg_T5_foo_Method

function pkg_T5_foo_Method() {
    pkg_T5_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.pkg_T5_foo_Method = pkg_T5_foo_Method;
_qrt.util.inherits(pkg_T5_foo_Method, quark.reflect.Method);

function pkg_T5_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T5_foo_Method.prototype.__init_fields__ = pkg_T5_foo_Method__init_fields__;

function pkg_T5_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T5_foo_Method.prototype.invoke = pkg_T5_foo_Method_invoke;

function pkg_T5_foo_Method__getClass() {
    return null;
}
pkg_T5_foo_Method.prototype._getClass = pkg_T5_foo_Method__getClass;

function pkg_T5_foo_Method__getField(name) {
    return null;
}
pkg_T5_foo_Method.prototype._getField = pkg_T5_foo_Method__getField;

function pkg_T5_foo_Method__setField(name, value) {}
pkg_T5_foo_Method.prototype._setField = pkg_T5_foo_Method__setField;

// CLASS pkg_T5_bar_Method

function pkg_T5_bar_Method() {
    pkg_T5_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.pkg_T5_bar_Method = pkg_T5_bar_Method;
_qrt.util.inherits(pkg_T5_bar_Method, quark.reflect.Method);

function pkg_T5_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T5_bar_Method.prototype.__init_fields__ = pkg_T5_bar_Method__init_fields__;

function pkg_T5_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_T5_bar_Method.prototype.invoke = pkg_T5_bar_Method_invoke;

function pkg_T5_bar_Method__getClass() {
    return null;
}
pkg_T5_bar_Method.prototype._getClass = pkg_T5_bar_Method__getClass;

function pkg_T5_bar_Method__getField(name) {
    return null;
}
pkg_T5_bar_Method.prototype._getField = pkg_T5_bar_Method__getField;

function pkg_T5_bar_Method__setField(name, value) {}
pkg_T5_bar_Method.prototype._setField = pkg_T5_bar_Method__setField;

// CLASS pkg_T5

function pkg_T5() {
    pkg_T5.super_.call(this, "pkg.T5");
    (this).name = "pkg.T5";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T5_foo_Method(), new pkg_T5_bar_Method()];
}
exports.pkg_T5 = pkg_T5;
_qrt.util.inherits(pkg_T5, quark.reflect.Class);

function pkg_T5__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T5.prototype.__init_fields__ = pkg_T5__init_fields__;
pkg_T5.singleton = new pkg_T5();
function pkg_T5_construct(args) {
    return new pkg.T5();
}
pkg_T5.prototype.construct = pkg_T5_construct;

function pkg_T5__getClass() {
    return null;
}
pkg_T5.prototype._getClass = pkg_T5__getClass;

function pkg_T5__getField(name) {
    return null;
}
pkg_T5.prototype._getField = pkg_T5__getField;

function pkg_T5__setField(name, value) {}
pkg_T5.prototype._setField = pkg_T5__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.pkg_A_md = pkg_A.singleton;
Root.pkg_B_md = pkg_B.singleton;
Root.pkg_C_md = pkg_C.singleton;
Root.pkg_T1_md = pkg_T1.singleton;
Root.pkg_T2_md = pkg_T2.singleton;
Root.pkg_T3_md = pkg_T3.singleton;
Root.pkg_T4_md = pkg_T4.singleton;
Root.pkg_T5_md = pkg_T5.singleton;
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

var pkg = require('../pkg/index.js');
exports.pkg = pkg;
