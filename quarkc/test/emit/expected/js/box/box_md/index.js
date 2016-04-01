var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS box_Box_quark_Object__set_Method

function box_Box_quark_Object__set_Method() {
    box_Box_quark_Object__set_Method.super_.call(this, "quark.void", "set", ["quark.Object"]);
}
exports.box_Box_quark_Object__set_Method = box_Box_quark_Object__set_Method;
_qrt.util.inherits(box_Box_quark_Object__set_Method, quark.reflect.Method);

function box_Box_quark_Object__set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Box_quark_Object__set_Method.prototype.__init_fields__ = box_Box_quark_Object__set_Method__init_fields__;

function box_Box_quark_Object__set_Method_invoke(object, args) {
    var obj = object;
    (obj).set((args)[0]);
    return null;
}
box_Box_quark_Object__set_Method.prototype.invoke = box_Box_quark_Object__set_Method_invoke;

function box_Box_quark_Object__set_Method__getClass() {
    return null;
}
box_Box_quark_Object__set_Method.prototype._getClass = box_Box_quark_Object__set_Method__getClass;

function box_Box_quark_Object__set_Method__getField(name) {
    return null;
}
box_Box_quark_Object__set_Method.prototype._getField = box_Box_quark_Object__set_Method__getField;

function box_Box_quark_Object__set_Method__setField(name, value) {}
box_Box_quark_Object__set_Method.prototype._setField = box_Box_quark_Object__set_Method__setField;

// CLASS box_Box_quark_Object__get_Method

function box_Box_quark_Object__get_Method() {
    box_Box_quark_Object__get_Method.super_.call(this, "quark.Object", "get", []);
}
exports.box_Box_quark_Object__get_Method = box_Box_quark_Object__get_Method;
_qrt.util.inherits(box_Box_quark_Object__get_Method, quark.reflect.Method);

function box_Box_quark_Object__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Box_quark_Object__get_Method.prototype.__init_fields__ = box_Box_quark_Object__get_Method__init_fields__;

function box_Box_quark_Object__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
box_Box_quark_Object__get_Method.prototype.invoke = box_Box_quark_Object__get_Method_invoke;

function box_Box_quark_Object__get_Method__getClass() {
    return null;
}
box_Box_quark_Object__get_Method.prototype._getClass = box_Box_quark_Object__get_Method__getClass;

function box_Box_quark_Object__get_Method__getField(name) {
    return null;
}
box_Box_quark_Object__get_Method.prototype._getField = box_Box_quark_Object__get_Method__getField;

function box_Box_quark_Object__get_Method__setField(name, value) {}
box_Box_quark_Object__get_Method.prototype._setField = box_Box_quark_Object__get_Method__setField;

// CLASS box_Box_quark_Object_

function box_Box_quark_Object_() {
    box_Box_quark_Object_.super_.call(this, "box.Box<quark.Object>");
    (this).name = "box.Box";
    (this).parameters = ["quark.Object"];
    (this).fields = [new quark.reflect.Field("quark.Object", "contents")];
    (this).methods = [new box_Box_quark_Object__set_Method(), new box_Box_quark_Object__get_Method()];
}
exports.box_Box_quark_Object_ = box_Box_quark_Object_;
_qrt.util.inherits(box_Box_quark_Object_, quark.reflect.Class);

function box_Box_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
box_Box_quark_Object_.prototype.__init_fields__ = box_Box_quark_Object___init_fields__;
box_Box_quark_Object_.singleton = new box_Box_quark_Object_();
function box_Box_quark_Object__construct(args) {
    return new box.Box();
}
box_Box_quark_Object_.prototype.construct = box_Box_quark_Object__construct;

function box_Box_quark_Object___getClass() {
    return null;
}
box_Box_quark_Object_.prototype._getClass = box_Box_quark_Object___getClass;

function box_Box_quark_Object___getField(name) {
    return null;
}
box_Box_quark_Object_.prototype._getField = box_Box_quark_Object___getField;

function box_Box_quark_Object___setField(name, value) {}
box_Box_quark_Object_.prototype._setField = box_Box_quark_Object___setField;


// CLASS box_Box_quark_int__set_Method

function box_Box_quark_int__set_Method() {
    box_Box_quark_int__set_Method.super_.call(this, "quark.void", "set", ["quark.int"]);
}
exports.box_Box_quark_int__set_Method = box_Box_quark_int__set_Method;
_qrt.util.inherits(box_Box_quark_int__set_Method, quark.reflect.Method);

function box_Box_quark_int__set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Box_quark_int__set_Method.prototype.__init_fields__ = box_Box_quark_int__set_Method__init_fields__;

function box_Box_quark_int__set_Method_invoke(object, args) {
    var obj = object;
    (obj).set((args)[0]);
    return null;
}
box_Box_quark_int__set_Method.prototype.invoke = box_Box_quark_int__set_Method_invoke;

function box_Box_quark_int__set_Method__getClass() {
    return null;
}
box_Box_quark_int__set_Method.prototype._getClass = box_Box_quark_int__set_Method__getClass;

function box_Box_quark_int__set_Method__getField(name) {
    return null;
}
box_Box_quark_int__set_Method.prototype._getField = box_Box_quark_int__set_Method__getField;

function box_Box_quark_int__set_Method__setField(name, value) {}
box_Box_quark_int__set_Method.prototype._setField = box_Box_quark_int__set_Method__setField;

// CLASS box_Box_quark_int__get_Method

function box_Box_quark_int__get_Method() {
    box_Box_quark_int__get_Method.super_.call(this, "quark.int", "get", []);
}
exports.box_Box_quark_int__get_Method = box_Box_quark_int__get_Method;
_qrt.util.inherits(box_Box_quark_int__get_Method, quark.reflect.Method);

function box_Box_quark_int__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Box_quark_int__get_Method.prototype.__init_fields__ = box_Box_quark_int__get_Method__init_fields__;

function box_Box_quark_int__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
box_Box_quark_int__get_Method.prototype.invoke = box_Box_quark_int__get_Method_invoke;

function box_Box_quark_int__get_Method__getClass() {
    return null;
}
box_Box_quark_int__get_Method.prototype._getClass = box_Box_quark_int__get_Method__getClass;

function box_Box_quark_int__get_Method__getField(name) {
    return null;
}
box_Box_quark_int__get_Method.prototype._getField = box_Box_quark_int__get_Method__getField;

function box_Box_quark_int__get_Method__setField(name, value) {}
box_Box_quark_int__get_Method.prototype._setField = box_Box_quark_int__get_Method__setField;

// CLASS box_Box_quark_int_

function box_Box_quark_int_() {
    box_Box_quark_int_.super_.call(this, "box.Box<quark.int>");
    (this).name = "box.Box";
    (this).parameters = ["quark.int"];
    (this).fields = [new quark.reflect.Field("quark.int", "contents")];
    (this).methods = [new box_Box_quark_int__set_Method(), new box_Box_quark_int__get_Method()];
}
exports.box_Box_quark_int_ = box_Box_quark_int_;
_qrt.util.inherits(box_Box_quark_int_, quark.reflect.Class);

function box_Box_quark_int___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
box_Box_quark_int_.prototype.__init_fields__ = box_Box_quark_int___init_fields__;
box_Box_quark_int_.singleton = new box_Box_quark_int_();
function box_Box_quark_int__construct(args) {
    return new box.Box();
}
box_Box_quark_int_.prototype.construct = box_Box_quark_int__construct;

function box_Box_quark_int___getClass() {
    return null;
}
box_Box_quark_int_.prototype._getClass = box_Box_quark_int___getClass;

function box_Box_quark_int___getField(name) {
    return null;
}
box_Box_quark_int_.prototype._getField = box_Box_quark_int___getField;

function box_Box_quark_int___setField(name, value) {}
box_Box_quark_int_.prototype._setField = box_Box_quark_int___setField;


// CLASS box_Box_quark_String__set_Method

function box_Box_quark_String__set_Method() {
    box_Box_quark_String__set_Method.super_.call(this, "quark.void", "set", ["quark.String"]);
}
exports.box_Box_quark_String__set_Method = box_Box_quark_String__set_Method;
_qrt.util.inherits(box_Box_quark_String__set_Method, quark.reflect.Method);

function box_Box_quark_String__set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Box_quark_String__set_Method.prototype.__init_fields__ = box_Box_quark_String__set_Method__init_fields__;

function box_Box_quark_String__set_Method_invoke(object, args) {
    var obj = object;
    (obj).set((args)[0]);
    return null;
}
box_Box_quark_String__set_Method.prototype.invoke = box_Box_quark_String__set_Method_invoke;

function box_Box_quark_String__set_Method__getClass() {
    return null;
}
box_Box_quark_String__set_Method.prototype._getClass = box_Box_quark_String__set_Method__getClass;

function box_Box_quark_String__set_Method__getField(name) {
    return null;
}
box_Box_quark_String__set_Method.prototype._getField = box_Box_quark_String__set_Method__getField;

function box_Box_quark_String__set_Method__setField(name, value) {}
box_Box_quark_String__set_Method.prototype._setField = box_Box_quark_String__set_Method__setField;

// CLASS box_Box_quark_String__get_Method

function box_Box_quark_String__get_Method() {
    box_Box_quark_String__get_Method.super_.call(this, "quark.String", "get", []);
}
exports.box_Box_quark_String__get_Method = box_Box_quark_String__get_Method;
_qrt.util.inherits(box_Box_quark_String__get_Method, quark.reflect.Method);

function box_Box_quark_String__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Box_quark_String__get_Method.prototype.__init_fields__ = box_Box_quark_String__get_Method__init_fields__;

function box_Box_quark_String__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
box_Box_quark_String__get_Method.prototype.invoke = box_Box_quark_String__get_Method_invoke;

function box_Box_quark_String__get_Method__getClass() {
    return null;
}
box_Box_quark_String__get_Method.prototype._getClass = box_Box_quark_String__get_Method__getClass;

function box_Box_quark_String__get_Method__getField(name) {
    return null;
}
box_Box_quark_String__get_Method.prototype._getField = box_Box_quark_String__get_Method__getField;

function box_Box_quark_String__get_Method__setField(name, value) {}
box_Box_quark_String__get_Method.prototype._setField = box_Box_quark_String__get_Method__setField;

// CLASS box_Box_quark_String_

function box_Box_quark_String_() {
    box_Box_quark_String_.super_.call(this, "box.Box<quark.String>");
    (this).name = "box.Box";
    (this).parameters = ["quark.String"];
    (this).fields = [new quark.reflect.Field("quark.String", "contents")];
    (this).methods = [new box_Box_quark_String__set_Method(), new box_Box_quark_String__get_Method()];
}
exports.box_Box_quark_String_ = box_Box_quark_String_;
_qrt.util.inherits(box_Box_quark_String_, quark.reflect.Class);

function box_Box_quark_String___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
box_Box_quark_String_.prototype.__init_fields__ = box_Box_quark_String___init_fields__;
box_Box_quark_String_.singleton = new box_Box_quark_String_();
function box_Box_quark_String__construct(args) {
    return new box.Box();
}
box_Box_quark_String_.prototype.construct = box_Box_quark_String__construct;

function box_Box_quark_String___getClass() {
    return null;
}
box_Box_quark_String_.prototype._getClass = box_Box_quark_String___getClass;

function box_Box_quark_String___getField(name) {
    return null;
}
box_Box_quark_String_.prototype._getField = box_Box_quark_String___getField;

function box_Box_quark_String___setField(name, value) {}
box_Box_quark_String_.prototype._setField = box_Box_quark_String___setField;


// CLASS box_Box_box_Box_quark_int___set_Method

function box_Box_box_Box_quark_int___set_Method() {
    box_Box_box_Box_quark_int___set_Method.super_.call(this, "quark.void", "set", ["box.Box<quark.int>"]);
}
exports.box_Box_box_Box_quark_int___set_Method = box_Box_box_Box_quark_int___set_Method;
_qrt.util.inherits(box_Box_box_Box_quark_int___set_Method, quark.reflect.Method);

function box_Box_box_Box_quark_int___set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Box_box_Box_quark_int___set_Method.prototype.__init_fields__ = box_Box_box_Box_quark_int___set_Method__init_fields__;

function box_Box_box_Box_quark_int___set_Method_invoke(object, args) {
    var obj = object;
    (obj).set((args)[0]);
    return null;
}
box_Box_box_Box_quark_int___set_Method.prototype.invoke = box_Box_box_Box_quark_int___set_Method_invoke;

function box_Box_box_Box_quark_int___set_Method__getClass() {
    return null;
}
box_Box_box_Box_quark_int___set_Method.prototype._getClass = box_Box_box_Box_quark_int___set_Method__getClass;

function box_Box_box_Box_quark_int___set_Method__getField(name) {
    return null;
}
box_Box_box_Box_quark_int___set_Method.prototype._getField = box_Box_box_Box_quark_int___set_Method__getField;

function box_Box_box_Box_quark_int___set_Method__setField(name, value) {}
box_Box_box_Box_quark_int___set_Method.prototype._setField = box_Box_box_Box_quark_int___set_Method__setField;

// CLASS box_Box_box_Box_quark_int___get_Method

function box_Box_box_Box_quark_int___get_Method() {
    box_Box_box_Box_quark_int___get_Method.super_.call(this, "box.Box<quark.int>", "get", []);
}
exports.box_Box_box_Box_quark_int___get_Method = box_Box_box_Box_quark_int___get_Method;
_qrt.util.inherits(box_Box_box_Box_quark_int___get_Method, quark.reflect.Method);

function box_Box_box_Box_quark_int___get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Box_box_Box_quark_int___get_Method.prototype.__init_fields__ = box_Box_box_Box_quark_int___get_Method__init_fields__;

function box_Box_box_Box_quark_int___get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
box_Box_box_Box_quark_int___get_Method.prototype.invoke = box_Box_box_Box_quark_int___get_Method_invoke;

function box_Box_box_Box_quark_int___get_Method__getClass() {
    return null;
}
box_Box_box_Box_quark_int___get_Method.prototype._getClass = box_Box_box_Box_quark_int___get_Method__getClass;

function box_Box_box_Box_quark_int___get_Method__getField(name) {
    return null;
}
box_Box_box_Box_quark_int___get_Method.prototype._getField = box_Box_box_Box_quark_int___get_Method__getField;

function box_Box_box_Box_quark_int___get_Method__setField(name, value) {}
box_Box_box_Box_quark_int___get_Method.prototype._setField = box_Box_box_Box_quark_int___get_Method__setField;

// CLASS box_Box_box_Box_quark_int__

function box_Box_box_Box_quark_int__() {
    box_Box_box_Box_quark_int__.super_.call(this, "box.Box<box.Box<quark.int>>");
    (this).name = "box.Box";
    (this).parameters = ["box.Box<quark.int>"];
    (this).fields = [new quark.reflect.Field("box.Box<quark.int>", "contents")];
    (this).methods = [new box_Box_box_Box_quark_int___set_Method(), new box_Box_box_Box_quark_int___get_Method()];
}
exports.box_Box_box_Box_quark_int__ = box_Box_box_Box_quark_int__;
_qrt.util.inherits(box_Box_box_Box_quark_int__, quark.reflect.Class);

function box_Box_box_Box_quark_int____init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
box_Box_box_Box_quark_int__.prototype.__init_fields__ = box_Box_box_Box_quark_int____init_fields__;
box_Box_box_Box_quark_int__.singleton = new box_Box_box_Box_quark_int__();
function box_Box_box_Box_quark_int___construct(args) {
    return new box.Box();
}
box_Box_box_Box_quark_int__.prototype.construct = box_Box_box_Box_quark_int___construct;

function box_Box_box_Box_quark_int____getClass() {
    return null;
}
box_Box_box_Box_quark_int__.prototype._getClass = box_Box_box_Box_quark_int____getClass;

function box_Box_box_Box_quark_int____getField(name) {
    return null;
}
box_Box_box_Box_quark_int__.prototype._getField = box_Box_box_Box_quark_int____getField;

function box_Box_box_Box_quark_int____setField(name, value) {}
box_Box_box_Box_quark_int__.prototype._setField = box_Box_box_Box_quark_int____setField;


// CLASS box_Crate_quark_int__set_Method

function box_Crate_quark_int__set_Method() {
    box_Crate_quark_int__set_Method.super_.call(this, "quark.void", "set", ["quark.int"]);
}
exports.box_Crate_quark_int__set_Method = box_Crate_quark_int__set_Method;
_qrt.util.inherits(box_Crate_quark_int__set_Method, quark.reflect.Method);

function box_Crate_quark_int__set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Crate_quark_int__set_Method.prototype.__init_fields__ = box_Crate_quark_int__set_Method__init_fields__;

function box_Crate_quark_int__set_Method_invoke(object, args) {
    var obj = object;
    (obj).set((args)[0]);
    return null;
}
box_Crate_quark_int__set_Method.prototype.invoke = box_Crate_quark_int__set_Method_invoke;

function box_Crate_quark_int__set_Method__getClass() {
    return null;
}
box_Crate_quark_int__set_Method.prototype._getClass = box_Crate_quark_int__set_Method__getClass;

function box_Crate_quark_int__set_Method__getField(name) {
    return null;
}
box_Crate_quark_int__set_Method.prototype._getField = box_Crate_quark_int__set_Method__getField;

function box_Crate_quark_int__set_Method__setField(name, value) {}
box_Crate_quark_int__set_Method.prototype._setField = box_Crate_quark_int__set_Method__setField;

// CLASS box_Crate_quark_int__get_Method

function box_Crate_quark_int__get_Method() {
    box_Crate_quark_int__get_Method.super_.call(this, "quark.int", "get", []);
}
exports.box_Crate_quark_int__get_Method = box_Crate_quark_int__get_Method;
_qrt.util.inherits(box_Crate_quark_int__get_Method, quark.reflect.Method);

function box_Crate_quark_int__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Crate_quark_int__get_Method.prototype.__init_fields__ = box_Crate_quark_int__get_Method__init_fields__;

function box_Crate_quark_int__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
box_Crate_quark_int__get_Method.prototype.invoke = box_Crate_quark_int__get_Method_invoke;

function box_Crate_quark_int__get_Method__getClass() {
    return null;
}
box_Crate_quark_int__get_Method.prototype._getClass = box_Crate_quark_int__get_Method__getClass;

function box_Crate_quark_int__get_Method__getField(name) {
    return null;
}
box_Crate_quark_int__get_Method.prototype._getField = box_Crate_quark_int__get_Method__getField;

function box_Crate_quark_int__get_Method__setField(name, value) {}
box_Crate_quark_int__get_Method.prototype._setField = box_Crate_quark_int__get_Method__setField;

// CLASS box_Crate_quark_int_

function box_Crate_quark_int_() {
    box_Crate_quark_int_.super_.call(this, "box.Crate<quark.int>");
    (this).name = "box.Crate";
    (this).parameters = ["quark.int"];
    (this).fields = [new quark.reflect.Field("box.Box<quark.Object>", "box"), new quark.reflect.Field("box.Box<quark.int>", "ibox")];
    (this).methods = [new box_Crate_quark_int__set_Method(), new box_Crate_quark_int__get_Method()];
}
exports.box_Crate_quark_int_ = box_Crate_quark_int_;
_qrt.util.inherits(box_Crate_quark_int_, quark.reflect.Class);

function box_Crate_quark_int___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
box_Crate_quark_int_.prototype.__init_fields__ = box_Crate_quark_int___init_fields__;
box_Crate_quark_int_.singleton = new box_Crate_quark_int_();
function box_Crate_quark_int__construct(args) {
    return new box.Crate();
}
box_Crate_quark_int_.prototype.construct = box_Crate_quark_int__construct;

function box_Crate_quark_int___getClass() {
    return null;
}
box_Crate_quark_int_.prototype._getClass = box_Crate_quark_int___getClass;

function box_Crate_quark_int___getField(name) {
    return null;
}
box_Crate_quark_int_.prototype._getField = box_Crate_quark_int___getField;

function box_Crate_quark_int___setField(name, value) {}
box_Crate_quark_int_.prototype._setField = box_Crate_quark_int___setField;


// CLASS box_Crate_quark_String__set_Method

function box_Crate_quark_String__set_Method() {
    box_Crate_quark_String__set_Method.super_.call(this, "quark.void", "set", ["quark.String"]);
}
exports.box_Crate_quark_String__set_Method = box_Crate_quark_String__set_Method;
_qrt.util.inherits(box_Crate_quark_String__set_Method, quark.reflect.Method);

function box_Crate_quark_String__set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Crate_quark_String__set_Method.prototype.__init_fields__ = box_Crate_quark_String__set_Method__init_fields__;

function box_Crate_quark_String__set_Method_invoke(object, args) {
    var obj = object;
    (obj).set((args)[0]);
    return null;
}
box_Crate_quark_String__set_Method.prototype.invoke = box_Crate_quark_String__set_Method_invoke;

function box_Crate_quark_String__set_Method__getClass() {
    return null;
}
box_Crate_quark_String__set_Method.prototype._getClass = box_Crate_quark_String__set_Method__getClass;

function box_Crate_quark_String__set_Method__getField(name) {
    return null;
}
box_Crate_quark_String__set_Method.prototype._getField = box_Crate_quark_String__set_Method__getField;

function box_Crate_quark_String__set_Method__setField(name, value) {}
box_Crate_quark_String__set_Method.prototype._setField = box_Crate_quark_String__set_Method__setField;

// CLASS box_Crate_quark_String__get_Method

function box_Crate_quark_String__get_Method() {
    box_Crate_quark_String__get_Method.super_.call(this, "quark.String", "get", []);
}
exports.box_Crate_quark_String__get_Method = box_Crate_quark_String__get_Method;
_qrt.util.inherits(box_Crate_quark_String__get_Method, quark.reflect.Method);

function box_Crate_quark_String__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
box_Crate_quark_String__get_Method.prototype.__init_fields__ = box_Crate_quark_String__get_Method__init_fields__;

function box_Crate_quark_String__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
box_Crate_quark_String__get_Method.prototype.invoke = box_Crate_quark_String__get_Method_invoke;

function box_Crate_quark_String__get_Method__getClass() {
    return null;
}
box_Crate_quark_String__get_Method.prototype._getClass = box_Crate_quark_String__get_Method__getClass;

function box_Crate_quark_String__get_Method__getField(name) {
    return null;
}
box_Crate_quark_String__get_Method.prototype._getField = box_Crate_quark_String__get_Method__getField;

function box_Crate_quark_String__get_Method__setField(name, value) {}
box_Crate_quark_String__get_Method.prototype._setField = box_Crate_quark_String__get_Method__setField;

// CLASS box_Crate_quark_String_

function box_Crate_quark_String_() {
    box_Crate_quark_String_.super_.call(this, "box.Crate<quark.String>");
    (this).name = "box.Crate";
    (this).parameters = ["quark.String"];
    (this).fields = [new quark.reflect.Field("box.Box<quark.Object>", "box"), new quark.reflect.Field("box.Box<quark.int>", "ibox")];
    (this).methods = [new box_Crate_quark_String__set_Method(), new box_Crate_quark_String__get_Method()];
}
exports.box_Crate_quark_String_ = box_Crate_quark_String_;
_qrt.util.inherits(box_Crate_quark_String_, quark.reflect.Class);

function box_Crate_quark_String___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
box_Crate_quark_String_.prototype.__init_fields__ = box_Crate_quark_String___init_fields__;
box_Crate_quark_String_.singleton = new box_Crate_quark_String_();
function box_Crate_quark_String__construct(args) {
    return new box.Crate();
}
box_Crate_quark_String_.prototype.construct = box_Crate_quark_String__construct;

function box_Crate_quark_String___getClass() {
    return null;
}
box_Crate_quark_String_.prototype._getClass = box_Crate_quark_String___getClass;

function box_Crate_quark_String___getField(name) {
    return null;
}
box_Crate_quark_String_.prototype._getField = box_Crate_quark_String___getField;

function box_Crate_quark_String___setField(name, value) {}
box_Crate_quark_String_.prototype._setField = box_Crate_quark_String___setField;


// CLASS box_Sack

function box_Sack() {
    box_Sack.super_.call(this, "box.Sack");
    (this).name = "box.Sack";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("box.Box<quark.int>", "ints")];
    (this).methods = [];
}
exports.box_Sack = box_Sack;
_qrt.util.inherits(box_Sack, quark.reflect.Class);

function box_Sack__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
box_Sack.prototype.__init_fields__ = box_Sack__init_fields__;
box_Sack.singleton = new box_Sack();
function box_Sack_construct(args) {
    return new box.Sack();
}
box_Sack.prototype.construct = box_Sack_construct;

function box_Sack__getClass() {
    return null;
}
box_Sack.prototype._getClass = box_Sack__getClass;

function box_Sack__getField(name) {
    return null;
}
box_Sack.prototype._getField = box_Sack__getField;

function box_Sack__setField(name, value) {}
box_Sack.prototype._setField = box_Sack__setField;


// CLASS quark_List_quark_String_

function quark_List_quark_String_() {
    quark_List_quark_String_.super_.call(this, "quark.List<quark.String>");
    (this).name = "quark.List";
    (this).parameters = ["quark.String"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_String_ = quark_List_quark_String_;
_qrt.util.inherits(quark_List_quark_String_, quark.reflect.Class);

function quark_List_quark_String___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_String_.prototype.__init_fields__ = quark_List_quark_String___init_fields__;
quark_List_quark_String_.singleton = new quark_List_quark_String_();
function quark_List_quark_String__construct(args) {
    return new Array();
}
quark_List_quark_String_.prototype.construct = quark_List_quark_String__construct;

function quark_List_quark_String___getClass() {
    return null;
}
quark_List_quark_String_.prototype._getClass = quark_List_quark_String___getClass;

function quark_List_quark_String___getField(name) {
    return null;
}
quark_List_quark_String_.prototype._getField = quark_List_quark_String___getField;

function quark_List_quark_String___setField(name, value) {}
quark_List_quark_String_.prototype._setField = quark_List_quark_String___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.box_Box_quark_Object__md = box_Box_quark_Object_.singleton;
Root.box_Box_quark_int__md = box_Box_quark_int_.singleton;
Root.box_Sack_md = box_Sack.singleton;
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

var box = require('../box/index.js');
exports.box = box;
