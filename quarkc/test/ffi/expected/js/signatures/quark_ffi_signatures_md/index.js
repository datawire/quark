var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS generics_Box_quark_Object__set_Method

function generics_Box_quark_Object__set_Method() {
    generics_Box_quark_Object__set_Method.super_.call(this, "quark.void", "set", ["quark.Object"]);
}
exports.generics_Box_quark_Object__set_Method = generics_Box_quark_Object__set_Method;
_qrt.util.inherits(generics_Box_quark_Object__set_Method, quark.reflect.Method);

function generics_Box_quark_Object__set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_Box_quark_Object__set_Method.prototype.__init_fields__ = generics_Box_quark_Object__set_Method__init_fields__;

function generics_Box_quark_Object__set_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.Box; });
    (obj).set((args)[0]);
    return null;
}
generics_Box_quark_Object__set_Method.prototype.invoke = generics_Box_quark_Object__set_Method_invoke;

function generics_Box_quark_Object__set_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Box_quark_Object__set_Method.prototype._getClass = generics_Box_quark_Object__set_Method__getClass;

function generics_Box_quark_Object__set_Method__getField(name) {
    return null;
}
generics_Box_quark_Object__set_Method.prototype._getField = generics_Box_quark_Object__set_Method__getField;

function generics_Box_quark_Object__set_Method__setField(name, value) {}
generics_Box_quark_Object__set_Method.prototype._setField = generics_Box_quark_Object__set_Method__setField;

// CLASS generics_Box_quark_Object__get_Method

function generics_Box_quark_Object__get_Method() {
    generics_Box_quark_Object__get_Method.super_.call(this, "quark.Object", "get", []);
}
exports.generics_Box_quark_Object__get_Method = generics_Box_quark_Object__get_Method;
_qrt.util.inherits(generics_Box_quark_Object__get_Method, quark.reflect.Method);

function generics_Box_quark_Object__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_Box_quark_Object__get_Method.prototype.__init_fields__ = generics_Box_quark_Object__get_Method__init_fields__;

function generics_Box_quark_Object__get_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.Box; });
    return (obj).get();
}
generics_Box_quark_Object__get_Method.prototype.invoke = generics_Box_quark_Object__get_Method_invoke;

function generics_Box_quark_Object__get_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Box_quark_Object__get_Method.prototype._getClass = generics_Box_quark_Object__get_Method__getClass;

function generics_Box_quark_Object__get_Method__getField(name) {
    return null;
}
generics_Box_quark_Object__get_Method.prototype._getField = generics_Box_quark_Object__get_Method__getField;

function generics_Box_quark_Object__get_Method__setField(name, value) {}
generics_Box_quark_Object__get_Method.prototype._setField = generics_Box_quark_Object__get_Method__setField;

// CLASS generics_Box_quark_Object_

function generics_Box_quark_Object_() {
    generics_Box_quark_Object_.super_.call(this, "generics.Box<quark.Object>");
    (this).name = "generics.Box";
    (this).parameters = ["quark.Object"];
    (this).fields = [new quark.reflect.Field("quark.Object", "contents")];
    (this).methods = [new generics_Box_quark_Object__set_Method(), new generics_Box_quark_Object__get_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_Box_quark_Object_ = generics_Box_quark_Object_;
_qrt.util.inherits(generics_Box_quark_Object_, quark.reflect.Class);

function generics_Box_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_Box_quark_Object_.prototype.__init_fields__ = generics_Box_quark_Object___init_fields__;
generics_Box_quark_Object_.singleton = new generics_Box_quark_Object_();
function generics_Box_quark_Object__construct(args) {
    return new generics.Box();
}
generics_Box_quark_Object_.prototype.construct = generics_Box_quark_Object__construct;

function generics_Box_quark_Object__isAbstract() {
    return false;
}
generics_Box_quark_Object_.prototype.isAbstract = generics_Box_quark_Object__isAbstract;

function generics_Box_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Box_quark_Object_.prototype._getClass = generics_Box_quark_Object___getClass;

function generics_Box_quark_Object___getField(name) {
    return null;
}
generics_Box_quark_Object_.prototype._getField = generics_Box_quark_Object___getField;

function generics_Box_quark_Object___setField(name, value) {}
generics_Box_quark_Object_.prototype._setField = generics_Box_quark_Object___setField;


// CLASS generics_Box_quark_int__set_Method

function generics_Box_quark_int__set_Method() {
    generics_Box_quark_int__set_Method.super_.call(this, "quark.void", "set", ["quark.int"]);
}
exports.generics_Box_quark_int__set_Method = generics_Box_quark_int__set_Method;
_qrt.util.inherits(generics_Box_quark_int__set_Method, quark.reflect.Method);

function generics_Box_quark_int__set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_Box_quark_int__set_Method.prototype.__init_fields__ = generics_Box_quark_int__set_Method__init_fields__;

function generics_Box_quark_int__set_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.Box; });
    (obj).set(_qrt.cast((args)[0], function () { return Number; }));
    return null;
}
generics_Box_quark_int__set_Method.prototype.invoke = generics_Box_quark_int__set_Method_invoke;

function generics_Box_quark_int__set_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Box_quark_int__set_Method.prototype._getClass = generics_Box_quark_int__set_Method__getClass;

function generics_Box_quark_int__set_Method__getField(name) {
    return null;
}
generics_Box_quark_int__set_Method.prototype._getField = generics_Box_quark_int__set_Method__getField;

function generics_Box_quark_int__set_Method__setField(name, value) {}
generics_Box_quark_int__set_Method.prototype._setField = generics_Box_quark_int__set_Method__setField;

// CLASS generics_Box_quark_int__get_Method

function generics_Box_quark_int__get_Method() {
    generics_Box_quark_int__get_Method.super_.call(this, "quark.int", "get", []);
}
exports.generics_Box_quark_int__get_Method = generics_Box_quark_int__get_Method;
_qrt.util.inherits(generics_Box_quark_int__get_Method, quark.reflect.Method);

function generics_Box_quark_int__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_Box_quark_int__get_Method.prototype.__init_fields__ = generics_Box_quark_int__get_Method__init_fields__;

function generics_Box_quark_int__get_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.Box; });
    return (obj).get();
}
generics_Box_quark_int__get_Method.prototype.invoke = generics_Box_quark_int__get_Method_invoke;

function generics_Box_quark_int__get_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Box_quark_int__get_Method.prototype._getClass = generics_Box_quark_int__get_Method__getClass;

function generics_Box_quark_int__get_Method__getField(name) {
    return null;
}
generics_Box_quark_int__get_Method.prototype._getField = generics_Box_quark_int__get_Method__getField;

function generics_Box_quark_int__get_Method__setField(name, value) {}
generics_Box_quark_int__get_Method.prototype._setField = generics_Box_quark_int__get_Method__setField;

// CLASS generics_Box_quark_int_

function generics_Box_quark_int_() {
    generics_Box_quark_int_.super_.call(this, "generics.Box<quark.int>");
    (this).name = "generics.Box";
    (this).parameters = ["quark.int"];
    (this).fields = [new quark.reflect.Field("quark.int", "contents")];
    (this).methods = [new generics_Box_quark_int__set_Method(), new generics_Box_quark_int__get_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_Box_quark_int_ = generics_Box_quark_int_;
_qrt.util.inherits(generics_Box_quark_int_, quark.reflect.Class);

function generics_Box_quark_int___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_Box_quark_int_.prototype.__init_fields__ = generics_Box_quark_int___init_fields__;
generics_Box_quark_int_.singleton = new generics_Box_quark_int_();
function generics_Box_quark_int__construct(args) {
    return new generics.Box();
}
generics_Box_quark_int_.prototype.construct = generics_Box_quark_int__construct;

function generics_Box_quark_int__isAbstract() {
    return false;
}
generics_Box_quark_int_.prototype.isAbstract = generics_Box_quark_int__isAbstract;

function generics_Box_quark_int___getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Box_quark_int_.prototype._getClass = generics_Box_quark_int___getClass;

function generics_Box_quark_int___getField(name) {
    return null;
}
generics_Box_quark_int_.prototype._getField = generics_Box_quark_int___getField;

function generics_Box_quark_int___setField(name, value) {}
generics_Box_quark_int_.prototype._setField = generics_Box_quark_int___setField;


// CLASS generics_Crate_quark_Object__set_Method

function generics_Crate_quark_Object__set_Method() {
    generics_Crate_quark_Object__set_Method.super_.call(this, "quark.void", "set", ["quark.Object"]);
}
exports.generics_Crate_quark_Object__set_Method = generics_Crate_quark_Object__set_Method;
_qrt.util.inherits(generics_Crate_quark_Object__set_Method, quark.reflect.Method);

function generics_Crate_quark_Object__set_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_Crate_quark_Object__set_Method.prototype.__init_fields__ = generics_Crate_quark_Object__set_Method__init_fields__;

function generics_Crate_quark_Object__set_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.Crate; });
    (obj).set((args)[0]);
    return null;
}
generics_Crate_quark_Object__set_Method.prototype.invoke = generics_Crate_quark_Object__set_Method_invoke;

function generics_Crate_quark_Object__set_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Crate_quark_Object__set_Method.prototype._getClass = generics_Crate_quark_Object__set_Method__getClass;

function generics_Crate_quark_Object__set_Method__getField(name) {
    return null;
}
generics_Crate_quark_Object__set_Method.prototype._getField = generics_Crate_quark_Object__set_Method__getField;

function generics_Crate_quark_Object__set_Method__setField(name, value) {}
generics_Crate_quark_Object__set_Method.prototype._setField = generics_Crate_quark_Object__set_Method__setField;

// CLASS generics_Crate_quark_Object__get_Method

function generics_Crate_quark_Object__get_Method() {
    generics_Crate_quark_Object__get_Method.super_.call(this, "quark.Object", "get", []);
}
exports.generics_Crate_quark_Object__get_Method = generics_Crate_quark_Object__get_Method;
_qrt.util.inherits(generics_Crate_quark_Object__get_Method, quark.reflect.Method);

function generics_Crate_quark_Object__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_Crate_quark_Object__get_Method.prototype.__init_fields__ = generics_Crate_quark_Object__get_Method__init_fields__;

function generics_Crate_quark_Object__get_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.Crate; });
    return (obj).get();
}
generics_Crate_quark_Object__get_Method.prototype.invoke = generics_Crate_quark_Object__get_Method_invoke;

function generics_Crate_quark_Object__get_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Crate_quark_Object__get_Method.prototype._getClass = generics_Crate_quark_Object__get_Method__getClass;

function generics_Crate_quark_Object__get_Method__getField(name) {
    return null;
}
generics_Crate_quark_Object__get_Method.prototype._getField = generics_Crate_quark_Object__get_Method__getField;

function generics_Crate_quark_Object__get_Method__setField(name, value) {}
generics_Crate_quark_Object__get_Method.prototype._setField = generics_Crate_quark_Object__get_Method__setField;

// CLASS generics_Crate_quark_Object_

function generics_Crate_quark_Object_() {
    generics_Crate_quark_Object_.super_.call(this, "generics.Crate<quark.Object>");
    (this).name = "generics.Crate";
    (this).parameters = ["quark.Object"];
    (this).fields = [new quark.reflect.Field("generics.Box<quark.Object>", "box"), new quark.reflect.Field("generics.Box<quark.int>", "ibox")];
    (this).methods = [new generics_Crate_quark_Object__set_Method(), new generics_Crate_quark_Object__get_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_Crate_quark_Object_ = generics_Crate_quark_Object_;
_qrt.util.inherits(generics_Crate_quark_Object_, quark.reflect.Class);

function generics_Crate_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_Crate_quark_Object_.prototype.__init_fields__ = generics_Crate_quark_Object___init_fields__;
generics_Crate_quark_Object_.singleton = new generics_Crate_quark_Object_();
function generics_Crate_quark_Object__construct(args) {
    return new generics.Crate();
}
generics_Crate_quark_Object_.prototype.construct = generics_Crate_quark_Object__construct;

function generics_Crate_quark_Object__isAbstract() {
    return false;
}
generics_Crate_quark_Object_.prototype.isAbstract = generics_Crate_quark_Object__isAbstract;

function generics_Crate_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Crate_quark_Object_.prototype._getClass = generics_Crate_quark_Object___getClass;

function generics_Crate_quark_Object___getField(name) {
    return null;
}
generics_Crate_quark_Object_.prototype._getField = generics_Crate_quark_Object___getField;

function generics_Crate_quark_Object___setField(name, value) {}
generics_Crate_quark_Object_.prototype._setField = generics_Crate_quark_Object___setField;


// CLASS generics_Sack

function generics_Sack() {
    generics_Sack.super_.call(this, "generics.Sack");
    (this).name = "generics.Sack";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("generics.Box<quark.int>", "ints")];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.generics_Sack = generics_Sack;
_qrt.util.inherits(generics_Sack, quark.reflect.Class);

function generics_Sack__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_Sack.prototype.__init_fields__ = generics_Sack__init_fields__;
generics_Sack.singleton = new generics_Sack();
function generics_Sack_construct(args) {
    return new generics.Sack();
}
generics_Sack.prototype.construct = generics_Sack_construct;

function generics_Sack_isAbstract() {
    return false;
}
generics_Sack.prototype.isAbstract = generics_Sack_isAbstract;

function generics_Sack__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Sack.prototype._getClass = generics_Sack__getClass;

function generics_Sack__getField(name) {
    return null;
}
generics_Sack.prototype._getField = generics_Sack__getField;

function generics_Sack__setField(name, value) {}
generics_Sack.prototype._setField = generics_Sack__setField;


// CLASS generics_Matrix_quark_Object____get___Method

function generics_Matrix_quark_Object____get___Method() {
    generics_Matrix_quark_Object____get___Method.super_.call(this, "quark.Object", "__get__", ["quark.int", "quark.int"]);
}
exports.generics_Matrix_quark_Object____get___Method = generics_Matrix_quark_Object____get___Method;
_qrt.util.inherits(generics_Matrix_quark_Object____get___Method, quark.reflect.Method);

function generics_Matrix_quark_Object____get___Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_Matrix_quark_Object____get___Method.prototype.__init_fields__ = generics_Matrix_quark_Object____get___Method__init_fields__;

function generics_Matrix_quark_Object____get___Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.Matrix; });
    return (obj).__get__(_qrt.cast((args)[0], function () { return Number; }), _qrt.cast((args)[1], function () { return Number; }));
}
generics_Matrix_quark_Object____get___Method.prototype.invoke = generics_Matrix_quark_Object____get___Method_invoke;

function generics_Matrix_quark_Object____get___Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Matrix_quark_Object____get___Method.prototype._getClass = generics_Matrix_quark_Object____get___Method__getClass;

function generics_Matrix_quark_Object____get___Method__getField(name) {
    return null;
}
generics_Matrix_quark_Object____get___Method.prototype._getField = generics_Matrix_quark_Object____get___Method__getField;

function generics_Matrix_quark_Object____get___Method__setField(name, value) {}
generics_Matrix_quark_Object____get___Method.prototype._setField = generics_Matrix_quark_Object____get___Method__setField;

// CLASS generics_Matrix_quark_Object____set___Method

function generics_Matrix_quark_Object____set___Method() {
    generics_Matrix_quark_Object____set___Method.super_.call(this, "quark.void", "__set__", ["quark.int", "quark.int", "quark.Object"]);
}
exports.generics_Matrix_quark_Object____set___Method = generics_Matrix_quark_Object____set___Method;
_qrt.util.inherits(generics_Matrix_quark_Object____set___Method, quark.reflect.Method);

function generics_Matrix_quark_Object____set___Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_Matrix_quark_Object____set___Method.prototype.__init_fields__ = generics_Matrix_quark_Object____set___Method__init_fields__;

function generics_Matrix_quark_Object____set___Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.Matrix; });
    (obj).__set__(_qrt.cast((args)[0], function () { return Number; }), _qrt.cast((args)[1], function () { return Number; }), (args)[2]);
    return null;
}
generics_Matrix_quark_Object____set___Method.prototype.invoke = generics_Matrix_quark_Object____set___Method_invoke;

function generics_Matrix_quark_Object____set___Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Matrix_quark_Object____set___Method.prototype._getClass = generics_Matrix_quark_Object____set___Method__getClass;

function generics_Matrix_quark_Object____set___Method__getField(name) {
    return null;
}
generics_Matrix_quark_Object____set___Method.prototype._getField = generics_Matrix_quark_Object____set___Method__getField;

function generics_Matrix_quark_Object____set___Method__setField(name, value) {}
generics_Matrix_quark_Object____set___Method.prototype._setField = generics_Matrix_quark_Object____set___Method__setField;

// CLASS generics_Matrix_quark_Object_

function generics_Matrix_quark_Object_() {
    generics_Matrix_quark_Object_.super_.call(this, "generics.Matrix<quark.Object>");
    (this).name = "generics.Matrix";
    (this).parameters = ["quark.Object"];
    (this).fields = [new quark.reflect.Field("quark.int", "width"), new quark.reflect.Field("quark.int", "height"), new quark.reflect.Field("quark.List<quark.List<quark.Object>>", "columns")];
    (this).methods = [new generics_Matrix_quark_Object____get___Method(), new generics_Matrix_quark_Object____set___Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_Matrix_quark_Object_ = generics_Matrix_quark_Object_;
_qrt.util.inherits(generics_Matrix_quark_Object_, quark.reflect.Class);

function generics_Matrix_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_Matrix_quark_Object_.prototype.__init_fields__ = generics_Matrix_quark_Object___init_fields__;
generics_Matrix_quark_Object_.singleton = new generics_Matrix_quark_Object_();
function generics_Matrix_quark_Object__construct(args) {
    return new generics.Matrix(_qrt.cast((args)[0], function () { return Number; }), _qrt.cast((args)[1], function () { return Number; }));
}
generics_Matrix_quark_Object_.prototype.construct = generics_Matrix_quark_Object__construct;

function generics_Matrix_quark_Object__isAbstract() {
    return false;
}
generics_Matrix_quark_Object_.prototype.isAbstract = generics_Matrix_quark_Object__isAbstract;

function generics_Matrix_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_Matrix_quark_Object_.prototype._getClass = generics_Matrix_quark_Object___getClass;

function generics_Matrix_quark_Object___getField(name) {
    return null;
}
generics_Matrix_quark_Object_.prototype._getField = generics_Matrix_quark_Object___getField;

function generics_Matrix_quark_Object___setField(name, value) {}
generics_Matrix_quark_Object_.prototype._setField = generics_Matrix_quark_Object___setField;


// CLASS generics_constructors_Box_quark_Object__get_Method

function generics_constructors_Box_quark_Object__get_Method() {
    generics_constructors_Box_quark_Object__get_Method.super_.call(this, "quark.Object", "get", []);
}
exports.generics_constructors_Box_quark_Object__get_Method = generics_constructors_Box_quark_Object__get_Method;
_qrt.util.inherits(generics_constructors_Box_quark_Object__get_Method, quark.reflect.Method);

function generics_constructors_Box_quark_Object__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_constructors_Box_quark_Object__get_Method.prototype.__init_fields__ = generics_constructors_Box_quark_Object__get_Method__init_fields__;

function generics_constructors_Box_quark_Object__get_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.constructors.Box; });
    return (obj).get();
}
generics_constructors_Box_quark_Object__get_Method.prototype.invoke = generics_constructors_Box_quark_Object__get_Method_invoke;

function generics_constructors_Box_quark_Object__get_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_constructors_Box_quark_Object__get_Method.prototype._getClass = generics_constructors_Box_quark_Object__get_Method__getClass;

function generics_constructors_Box_quark_Object__get_Method__getField(name) {
    return null;
}
generics_constructors_Box_quark_Object__get_Method.prototype._getField = generics_constructors_Box_quark_Object__get_Method__getField;

function generics_constructors_Box_quark_Object__get_Method__setField(name, value) {}
generics_constructors_Box_quark_Object__get_Method.prototype._setField = generics_constructors_Box_quark_Object__get_Method__setField;

// CLASS generics_constructors_Box_quark_Object_

function generics_constructors_Box_quark_Object_() {
    generics_constructors_Box_quark_Object_.super_.call(this, "generics.constructors.Box<quark.Object>");
    (this).name = "generics.constructors.Box";
    (this).parameters = ["quark.Object"];
    (this).fields = [new quark.reflect.Field("quark.Object", "contents")];
    (this).methods = [new generics_constructors_Box_quark_Object__get_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_constructors_Box_quark_Object_ = generics_constructors_Box_quark_Object_;
_qrt.util.inherits(generics_constructors_Box_quark_Object_, quark.reflect.Class);

function generics_constructors_Box_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_constructors_Box_quark_Object_.prototype.__init_fields__ = generics_constructors_Box_quark_Object___init_fields__;
generics_constructors_Box_quark_Object_.singleton = new generics_constructors_Box_quark_Object_();
function generics_constructors_Box_quark_Object__construct(args) {
    return new generics.constructors.Box((args)[0]);
}
generics_constructors_Box_quark_Object_.prototype.construct = generics_constructors_Box_quark_Object__construct;

function generics_constructors_Box_quark_Object__isAbstract() {
    return false;
}
generics_constructors_Box_quark_Object_.prototype.isAbstract = generics_constructors_Box_quark_Object__isAbstract;

function generics_constructors_Box_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_constructors_Box_quark_Object_.prototype._getClass = generics_constructors_Box_quark_Object___getClass;

function generics_constructors_Box_quark_Object___getField(name) {
    return null;
}
generics_constructors_Box_quark_Object_.prototype._getField = generics_constructors_Box_quark_Object___getField;

function generics_constructors_Box_quark_Object___setField(name, value) {}
generics_constructors_Box_quark_Object_.prototype._setField = generics_constructors_Box_quark_Object___setField;


// CLASS generics_pkg_Foo_quark_Object__foo_Method

function generics_pkg_Foo_quark_Object__foo_Method() {
    generics_pkg_Foo_quark_Object__foo_Method.super_.call(this, "quark.Object", "foo", []);
}
exports.generics_pkg_Foo_quark_Object__foo_Method = generics_pkg_Foo_quark_Object__foo_Method;
_qrt.util.inherits(generics_pkg_Foo_quark_Object__foo_Method, quark.reflect.Method);

function generics_pkg_Foo_quark_Object__foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_pkg_Foo_quark_Object__foo_Method.prototype.__init_fields__ = generics_pkg_Foo_quark_Object__foo_Method__init_fields__;

function generics_pkg_Foo_quark_Object__foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.pkg.Foo; });
    return (obj).foo();
}
generics_pkg_Foo_quark_Object__foo_Method.prototype.invoke = generics_pkg_Foo_quark_Object__foo_Method_invoke;

function generics_pkg_Foo_quark_Object__foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_pkg_Foo_quark_Object__foo_Method.prototype._getClass = generics_pkg_Foo_quark_Object__foo_Method__getClass;

function generics_pkg_Foo_quark_Object__foo_Method__getField(name) {
    return null;
}
generics_pkg_Foo_quark_Object__foo_Method.prototype._getField = generics_pkg_Foo_quark_Object__foo_Method__getField;

function generics_pkg_Foo_quark_Object__foo_Method__setField(name, value) {}
generics_pkg_Foo_quark_Object__foo_Method.prototype._setField = generics_pkg_Foo_quark_Object__foo_Method__setField;

// CLASS generics_pkg_Foo_quark_Object__get_Method

function generics_pkg_Foo_quark_Object__get_Method() {
    generics_pkg_Foo_quark_Object__get_Method.super_.call(this, "quark.Object", "get", []);
}
exports.generics_pkg_Foo_quark_Object__get_Method = generics_pkg_Foo_quark_Object__get_Method;
_qrt.util.inherits(generics_pkg_Foo_quark_Object__get_Method, quark.reflect.Method);

function generics_pkg_Foo_quark_Object__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_pkg_Foo_quark_Object__get_Method.prototype.__init_fields__ = generics_pkg_Foo_quark_Object__get_Method__init_fields__;

function generics_pkg_Foo_quark_Object__get_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.pkg.Foo; });
    return (obj).get();
}
generics_pkg_Foo_quark_Object__get_Method.prototype.invoke = generics_pkg_Foo_quark_Object__get_Method_invoke;

function generics_pkg_Foo_quark_Object__get_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_pkg_Foo_quark_Object__get_Method.prototype._getClass = generics_pkg_Foo_quark_Object__get_Method__getClass;

function generics_pkg_Foo_quark_Object__get_Method__getField(name) {
    return null;
}
generics_pkg_Foo_quark_Object__get_Method.prototype._getField = generics_pkg_Foo_quark_Object__get_Method__getField;

function generics_pkg_Foo_quark_Object__get_Method__setField(name, value) {}
generics_pkg_Foo_quark_Object__get_Method.prototype._setField = generics_pkg_Foo_quark_Object__get_Method__setField;

// CLASS generics_pkg_Foo_quark_Object_

function generics_pkg_Foo_quark_Object_() {
    generics_pkg_Foo_quark_Object_.super_.call(this, "generics.pkg.Foo<quark.Object>");
    (this).name = "generics.pkg.Foo";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [new generics_pkg_Foo_quark_Object__foo_Method(), new generics_pkg_Foo_quark_Object__get_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_pkg_Foo_quark_Object_ = generics_pkg_Foo_quark_Object_;
_qrt.util.inherits(generics_pkg_Foo_quark_Object_, quark.reflect.Class);

function generics_pkg_Foo_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_pkg_Foo_quark_Object_.prototype.__init_fields__ = generics_pkg_Foo_quark_Object___init_fields__;
generics_pkg_Foo_quark_Object_.singleton = new generics_pkg_Foo_quark_Object_();
function generics_pkg_Foo_quark_Object__construct(args) {
    return null;
}
generics_pkg_Foo_quark_Object_.prototype.construct = generics_pkg_Foo_quark_Object__construct;

function generics_pkg_Foo_quark_Object__isAbstract() {
    return true;
}
generics_pkg_Foo_quark_Object_.prototype.isAbstract = generics_pkg_Foo_quark_Object__isAbstract;

function generics_pkg_Foo_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_pkg_Foo_quark_Object_.prototype._getClass = generics_pkg_Foo_quark_Object___getClass;

function generics_pkg_Foo_quark_Object___getField(name) {
    return null;
}
generics_pkg_Foo_quark_Object_.prototype._getField = generics_pkg_Foo_quark_Object___getField;

function generics_pkg_Foo_quark_Object___setField(name, value) {}
generics_pkg_Foo_quark_Object_.prototype._setField = generics_pkg_Foo_quark_Object___setField;


// CLASS generics_pkg_StringFoo_get_Method

function generics_pkg_StringFoo_get_Method() {
    generics_pkg_StringFoo_get_Method.super_.call(this, "quark.String", "get", []);
}
exports.generics_pkg_StringFoo_get_Method = generics_pkg_StringFoo_get_Method;
_qrt.util.inherits(generics_pkg_StringFoo_get_Method, quark.reflect.Method);

function generics_pkg_StringFoo_get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_pkg_StringFoo_get_Method.prototype.__init_fields__ = generics_pkg_StringFoo_get_Method__init_fields__;

function generics_pkg_StringFoo_get_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.pkg.StringFoo; });
    return (obj).get();
}
generics_pkg_StringFoo_get_Method.prototype.invoke = generics_pkg_StringFoo_get_Method_invoke;

function generics_pkg_StringFoo_get_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_pkg_StringFoo_get_Method.prototype._getClass = generics_pkg_StringFoo_get_Method__getClass;

function generics_pkg_StringFoo_get_Method__getField(name) {
    return null;
}
generics_pkg_StringFoo_get_Method.prototype._getField = generics_pkg_StringFoo_get_Method__getField;

function generics_pkg_StringFoo_get_Method__setField(name, value) {}
generics_pkg_StringFoo_get_Method.prototype._setField = generics_pkg_StringFoo_get_Method__setField;

// CLASS generics_pkg_StringFoo_foo_Method

function generics_pkg_StringFoo_foo_Method() {
    generics_pkg_StringFoo_foo_Method.super_.call(this, "quark.String", "foo", []);
}
exports.generics_pkg_StringFoo_foo_Method = generics_pkg_StringFoo_foo_Method;
_qrt.util.inherits(generics_pkg_StringFoo_foo_Method, quark.reflect.Method);

function generics_pkg_StringFoo_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_pkg_StringFoo_foo_Method.prototype.__init_fields__ = generics_pkg_StringFoo_foo_Method__init_fields__;

function generics_pkg_StringFoo_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.pkg.StringFoo; });
    return (obj).foo();
}
generics_pkg_StringFoo_foo_Method.prototype.invoke = generics_pkg_StringFoo_foo_Method_invoke;

function generics_pkg_StringFoo_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_pkg_StringFoo_foo_Method.prototype._getClass = generics_pkg_StringFoo_foo_Method__getClass;

function generics_pkg_StringFoo_foo_Method__getField(name) {
    return null;
}
generics_pkg_StringFoo_foo_Method.prototype._getField = generics_pkg_StringFoo_foo_Method__getField;

function generics_pkg_StringFoo_foo_Method__setField(name, value) {}
generics_pkg_StringFoo_foo_Method.prototype._setField = generics_pkg_StringFoo_foo_Method__setField;

// CLASS generics_pkg_StringFoo

function generics_pkg_StringFoo() {
    generics_pkg_StringFoo.super_.call(this, "generics.pkg.StringFoo");
    (this).name = "generics.pkg.StringFoo";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new generics_pkg_StringFoo_get_Method(), new generics_pkg_StringFoo_foo_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_pkg_StringFoo = generics_pkg_StringFoo;
_qrt.util.inherits(generics_pkg_StringFoo, quark.reflect.Class);

function generics_pkg_StringFoo__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_pkg_StringFoo.prototype.__init_fields__ = generics_pkg_StringFoo__init_fields__;
generics_pkg_StringFoo.singleton = new generics_pkg_StringFoo();
function generics_pkg_StringFoo_construct(args) {
    return new generics.pkg.StringFoo();
}
generics_pkg_StringFoo.prototype.construct = generics_pkg_StringFoo_construct;

function generics_pkg_StringFoo_isAbstract() {
    return false;
}
generics_pkg_StringFoo.prototype.isAbstract = generics_pkg_StringFoo_isAbstract;

function generics_pkg_StringFoo__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_pkg_StringFoo.prototype._getClass = generics_pkg_StringFoo__getClass;

function generics_pkg_StringFoo__getField(name) {
    return null;
}
generics_pkg_StringFoo.prototype._getField = generics_pkg_StringFoo__getField;

function generics_pkg_StringFoo__setField(name, value) {}
generics_pkg_StringFoo.prototype._setField = generics_pkg_StringFoo__setField;


// CLASS generics_pkg_Box_quark_String_

function generics_pkg_Box_quark_String_() {
    generics_pkg_Box_quark_String_.super_.call(this, "generics.pkg.Box<quark.String>");
    (this).name = "generics.pkg.Box";
    (this).parameters = ["quark.String"];
    (this).fields = [new quark.reflect.Field("quark.String", "contents")];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.generics_pkg_Box_quark_String_ = generics_pkg_Box_quark_String_;
_qrt.util.inherits(generics_pkg_Box_quark_String_, quark.reflect.Class);

function generics_pkg_Box_quark_String___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_pkg_Box_quark_String_.prototype.__init_fields__ = generics_pkg_Box_quark_String___init_fields__;
generics_pkg_Box_quark_String_.singleton = new generics_pkg_Box_quark_String_();
function generics_pkg_Box_quark_String__construct(args) {
    return new generics.pkg.Box(_qrt.cast((args)[0], function () { return String; }));
}
generics_pkg_Box_quark_String_.prototype.construct = generics_pkg_Box_quark_String__construct;

function generics_pkg_Box_quark_String__isAbstract() {
    return false;
}
generics_pkg_Box_quark_String_.prototype.isAbstract = generics_pkg_Box_quark_String__isAbstract;

function generics_pkg_Box_quark_String___getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_pkg_Box_quark_String_.prototype._getClass = generics_pkg_Box_quark_String___getClass;

function generics_pkg_Box_quark_String___getField(name) {
    return null;
}
generics_pkg_Box_quark_String_.prototype._getField = generics_pkg_Box_quark_String___getField;

function generics_pkg_Box_quark_String___setField(name, value) {}
generics_pkg_Box_quark_String_.prototype._setField = generics_pkg_Box_quark_String___setField;


// CLASS generics_pkg_StringBox

function generics_pkg_StringBox() {
    generics_pkg_StringBox.super_.call(this, "generics.pkg.StringBox");
    (this).name = "generics.pkg.StringBox";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "contents")];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.generics_pkg_StringBox = generics_pkg_StringBox;
_qrt.util.inherits(generics_pkg_StringBox, quark.reflect.Class);

function generics_pkg_StringBox__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_pkg_StringBox.prototype.__init_fields__ = generics_pkg_StringBox__init_fields__;
generics_pkg_StringBox.singleton = new generics_pkg_StringBox();
function generics_pkg_StringBox_construct(args) {
    return new generics.pkg.StringBox(_qrt.cast((args)[0], function () { return String; }));
}
generics_pkg_StringBox.prototype.construct = generics_pkg_StringBox_construct;

function generics_pkg_StringBox_isAbstract() {
    return false;
}
generics_pkg_StringBox.prototype.isAbstract = generics_pkg_StringBox_isAbstract;

function generics_pkg_StringBox__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_pkg_StringBox.prototype._getClass = generics_pkg_StringBox__getClass;

function generics_pkg_StringBox__getField(name) {
    return null;
}
generics_pkg_StringBox.prototype._getField = generics_pkg_StringBox__getField;

function generics_pkg_StringBox__setField(name, value) {}
generics_pkg_StringBox.prototype._setField = generics_pkg_StringBox__setField;


// CLASS generics_ccc_TLSContextInitializer_getValue_Method

function generics_ccc_TLSContextInitializer_getValue_Method() {
    generics_ccc_TLSContextInitializer_getValue_Method.super_.call(this, "generics.ccc.Context", "getValue", []);
}
exports.generics_ccc_TLSContextInitializer_getValue_Method = generics_ccc_TLSContextInitializer_getValue_Method;
_qrt.util.inherits(generics_ccc_TLSContextInitializer_getValue_Method, quark.reflect.Method);

function generics_ccc_TLSContextInitializer_getValue_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_ccc_TLSContextInitializer_getValue_Method.prototype.__init_fields__ = generics_ccc_TLSContextInitializer_getValue_Method__init_fields__;

function generics_ccc_TLSContextInitializer_getValue_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.ccc.TLSContextInitializer; });
    return (obj).getValue();
}
generics_ccc_TLSContextInitializer_getValue_Method.prototype.invoke = generics_ccc_TLSContextInitializer_getValue_Method_invoke;

function generics_ccc_TLSContextInitializer_getValue_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_ccc_TLSContextInitializer_getValue_Method.prototype._getClass = generics_ccc_TLSContextInitializer_getValue_Method__getClass;

function generics_ccc_TLSContextInitializer_getValue_Method__getField(name) {
    return null;
}
generics_ccc_TLSContextInitializer_getValue_Method.prototype._getField = generics_ccc_TLSContextInitializer_getValue_Method__getField;

function generics_ccc_TLSContextInitializer_getValue_Method__setField(name, value) {}
generics_ccc_TLSContextInitializer_getValue_Method.prototype._setField = generics_ccc_TLSContextInitializer_getValue_Method__setField;

// CLASS generics_ccc_TLSContextInitializer

function generics_ccc_TLSContextInitializer() {
    generics_ccc_TLSContextInitializer.super_.call(this, "generics.ccc.TLSContextInitializer");
    (this).name = "generics.ccc.TLSContextInitializer";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new generics_ccc_TLSContextInitializer_getValue_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_ccc_TLSContextInitializer = generics_ccc_TLSContextInitializer;
_qrt.util.inherits(generics_ccc_TLSContextInitializer, quark.reflect.Class);

function generics_ccc_TLSContextInitializer__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_ccc_TLSContextInitializer.prototype.__init_fields__ = generics_ccc_TLSContextInitializer__init_fields__;
generics_ccc_TLSContextInitializer.singleton = new generics_ccc_TLSContextInitializer();
function generics_ccc_TLSContextInitializer_construct(args) {
    return new generics.ccc.TLSContextInitializer();
}
generics_ccc_TLSContextInitializer.prototype.construct = generics_ccc_TLSContextInitializer_construct;

function generics_ccc_TLSContextInitializer_isAbstract() {
    return false;
}
generics_ccc_TLSContextInitializer.prototype.isAbstract = generics_ccc_TLSContextInitializer_isAbstract;

function generics_ccc_TLSContextInitializer__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_ccc_TLSContextInitializer.prototype._getClass = generics_ccc_TLSContextInitializer__getClass;

function generics_ccc_TLSContextInitializer__getField(name) {
    return null;
}
generics_ccc_TLSContextInitializer.prototype._getField = generics_ccc_TLSContextInitializer__getField;

function generics_ccc_TLSContextInitializer__setField(name, value) {}
generics_ccc_TLSContextInitializer.prototype._setField = generics_ccc_TLSContextInitializer__setField;


// CLASS generics_ccc_Context_current_Method

function generics_ccc_Context_current_Method() {
    generics_ccc_Context_current_Method.super_.call(this, "generics.ccc.Context", "current", []);
}
exports.generics_ccc_Context_current_Method = generics_ccc_Context_current_Method;
_qrt.util.inherits(generics_ccc_Context_current_Method, quark.reflect.Method);

function generics_ccc_Context_current_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_ccc_Context_current_Method.prototype.__init_fields__ = generics_ccc_Context_current_Method__init_fields__;

function generics_ccc_Context_current_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.ccc.Context; });
    return generics.ccc.Context.current();
}
generics_ccc_Context_current_Method.prototype.invoke = generics_ccc_Context_current_Method_invoke;

function generics_ccc_Context_current_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_ccc_Context_current_Method.prototype._getClass = generics_ccc_Context_current_Method__getClass;

function generics_ccc_Context_current_Method__getField(name) {
    return null;
}
generics_ccc_Context_current_Method.prototype._getField = generics_ccc_Context_current_Method__getField;

function generics_ccc_Context_current_Method__setField(name, value) {}
generics_ccc_Context_current_Method.prototype._setField = generics_ccc_Context_current_Method__setField;

// CLASS generics_ccc_Context_global_Method

function generics_ccc_Context_global_Method() {
    generics_ccc_Context_global_Method.super_.call(this, "generics.ccc.Context", "global", []);
}
exports.generics_ccc_Context_global_Method = generics_ccc_Context_global_Method;
_qrt.util.inherits(generics_ccc_Context_global_Method, quark.reflect.Method);

function generics_ccc_Context_global_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_ccc_Context_global_Method.prototype.__init_fields__ = generics_ccc_Context_global_Method__init_fields__;

function generics_ccc_Context_global_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.ccc.Context; });
    return generics.ccc.Context.global();
}
generics_ccc_Context_global_Method.prototype.invoke = generics_ccc_Context_global_Method_invoke;

function generics_ccc_Context_global_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_ccc_Context_global_Method.prototype._getClass = generics_ccc_Context_global_Method__getClass;

function generics_ccc_Context_global_Method__getField(name) {
    return null;
}
generics_ccc_Context_global_Method.prototype._getField = generics_ccc_Context_global_Method__getField;

function generics_ccc_Context_global_Method__setField(name, value) {}
generics_ccc_Context_global_Method.prototype._setField = generics_ccc_Context_global_Method__setField;

// CLASS generics_ccc_Context

function generics_ccc_Context() {
    generics_ccc_Context.super_.call(this, "generics.ccc.Context");
    (this).name = "generics.ccc.Context";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("generics.ccc.Context", "_global"), new quark.reflect.Field("generics.ccc.TLS<generics.ccc.Context>", "_current"), new quark.reflect.Field("generics.ccc.Context", "parent")];
    (this).methods = [new generics_ccc_Context_current_Method(), new generics_ccc_Context_global_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_ccc_Context = generics_ccc_Context;
_qrt.util.inherits(generics_ccc_Context, quark.reflect.Class);

function generics_ccc_Context__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_ccc_Context.prototype.__init_fields__ = generics_ccc_Context__init_fields__;
generics_ccc_Context.singleton = new generics_ccc_Context();
function generics_ccc_Context_construct(args) {
    return new generics.ccc.Context(_qrt.cast((args)[0], function () { return generics.ccc.Context; }));
}
generics_ccc_Context.prototype.construct = generics_ccc_Context_construct;

function generics_ccc_Context_isAbstract() {
    return false;
}
generics_ccc_Context.prototype.isAbstract = generics_ccc_Context_isAbstract;

function generics_ccc_Context__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_ccc_Context.prototype._getClass = generics_ccc_Context__getClass;

function generics_ccc_Context__getField(name) {
    return null;
}
generics_ccc_Context.prototype._getField = generics_ccc_Context__getField;

function generics_ccc_Context__setField(name, value) {}
generics_ccc_Context.prototype._setField = generics_ccc_Context__setField;


// CLASS generics_ccc_TLSInitializer_quark_Object__getValue_Method

function generics_ccc_TLSInitializer_quark_Object__getValue_Method() {
    generics_ccc_TLSInitializer_quark_Object__getValue_Method.super_.call(this, "quark.Object", "getValue", []);
}
exports.generics_ccc_TLSInitializer_quark_Object__getValue_Method = generics_ccc_TLSInitializer_quark_Object__getValue_Method;
_qrt.util.inherits(generics_ccc_TLSInitializer_quark_Object__getValue_Method, quark.reflect.Method);

function generics_ccc_TLSInitializer_quark_Object__getValue_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_ccc_TLSInitializer_quark_Object__getValue_Method.prototype.__init_fields__ = generics_ccc_TLSInitializer_quark_Object__getValue_Method__init_fields__;

function generics_ccc_TLSInitializer_quark_Object__getValue_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.ccc.TLSInitializer; });
    return (obj).getValue();
}
generics_ccc_TLSInitializer_quark_Object__getValue_Method.prototype.invoke = generics_ccc_TLSInitializer_quark_Object__getValue_Method_invoke;

function generics_ccc_TLSInitializer_quark_Object__getValue_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_ccc_TLSInitializer_quark_Object__getValue_Method.prototype._getClass = generics_ccc_TLSInitializer_quark_Object__getValue_Method__getClass;

function generics_ccc_TLSInitializer_quark_Object__getValue_Method__getField(name) {
    return null;
}
generics_ccc_TLSInitializer_quark_Object__getValue_Method.prototype._getField = generics_ccc_TLSInitializer_quark_Object__getValue_Method__getField;

function generics_ccc_TLSInitializer_quark_Object__getValue_Method__setField(name, value) {}
generics_ccc_TLSInitializer_quark_Object__getValue_Method.prototype._setField = generics_ccc_TLSInitializer_quark_Object__getValue_Method__setField;

// CLASS generics_ccc_TLSInitializer_quark_Object_

function generics_ccc_TLSInitializer_quark_Object_() {
    generics_ccc_TLSInitializer_quark_Object_.super_.call(this, "generics.ccc.TLSInitializer<quark.Object>");
    (this).name = "generics.ccc.TLSInitializer";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [new generics_ccc_TLSInitializer_quark_Object__getValue_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_ccc_TLSInitializer_quark_Object_ = generics_ccc_TLSInitializer_quark_Object_;
_qrt.util.inherits(generics_ccc_TLSInitializer_quark_Object_, quark.reflect.Class);

function generics_ccc_TLSInitializer_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_ccc_TLSInitializer_quark_Object_.prototype.__init_fields__ = generics_ccc_TLSInitializer_quark_Object___init_fields__;
generics_ccc_TLSInitializer_quark_Object_.singleton = new generics_ccc_TLSInitializer_quark_Object_();
function generics_ccc_TLSInitializer_quark_Object__construct(args) {
    return null;
}
generics_ccc_TLSInitializer_quark_Object_.prototype.construct = generics_ccc_TLSInitializer_quark_Object__construct;

function generics_ccc_TLSInitializer_quark_Object__isAbstract() {
    return true;
}
generics_ccc_TLSInitializer_quark_Object_.prototype.isAbstract = generics_ccc_TLSInitializer_quark_Object__isAbstract;

function generics_ccc_TLSInitializer_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_ccc_TLSInitializer_quark_Object_.prototype._getClass = generics_ccc_TLSInitializer_quark_Object___getClass;

function generics_ccc_TLSInitializer_quark_Object___getField(name) {
    return null;
}
generics_ccc_TLSInitializer_quark_Object_.prototype._getField = generics_ccc_TLSInitializer_quark_Object___getField;

function generics_ccc_TLSInitializer_quark_Object___setField(name, value) {}
generics_ccc_TLSInitializer_quark_Object_.prototype._setField = generics_ccc_TLSInitializer_quark_Object___setField;


// CLASS generics_ccc_TLS_generics_ccc_Context__getValue_Method

function generics_ccc_TLS_generics_ccc_Context__getValue_Method() {
    generics_ccc_TLS_generics_ccc_Context__getValue_Method.super_.call(this, "generics.ccc.Context", "getValue", []);
}
exports.generics_ccc_TLS_generics_ccc_Context__getValue_Method = generics_ccc_TLS_generics_ccc_Context__getValue_Method;
_qrt.util.inherits(generics_ccc_TLS_generics_ccc_Context__getValue_Method, quark.reflect.Method);

function generics_ccc_TLS_generics_ccc_Context__getValue_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
generics_ccc_TLS_generics_ccc_Context__getValue_Method.prototype.__init_fields__ = generics_ccc_TLS_generics_ccc_Context__getValue_Method__init_fields__;

function generics_ccc_TLS_generics_ccc_Context__getValue_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return generics.ccc.TLS; });
    return (obj).getValue();
}
generics_ccc_TLS_generics_ccc_Context__getValue_Method.prototype.invoke = generics_ccc_TLS_generics_ccc_Context__getValue_Method_invoke;

function generics_ccc_TLS_generics_ccc_Context__getValue_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_ccc_TLS_generics_ccc_Context__getValue_Method.prototype._getClass = generics_ccc_TLS_generics_ccc_Context__getValue_Method__getClass;

function generics_ccc_TLS_generics_ccc_Context__getValue_Method__getField(name) {
    return null;
}
generics_ccc_TLS_generics_ccc_Context__getValue_Method.prototype._getField = generics_ccc_TLS_generics_ccc_Context__getValue_Method__getField;

function generics_ccc_TLS_generics_ccc_Context__getValue_Method__setField(name, value) {}
generics_ccc_TLS_generics_ccc_Context__getValue_Method.prototype._setField = generics_ccc_TLS_generics_ccc_Context__getValue_Method__setField;

// CLASS generics_ccc_TLS_generics_ccc_Context_

function generics_ccc_TLS_generics_ccc_Context_() {
    generics_ccc_TLS_generics_ccc_Context_.super_.call(this, "generics.ccc.TLS<generics.ccc.Context>");
    (this).name = "generics.ccc.TLS";
    (this).parameters = ["generics.ccc.Context"];
    (this).fields = [new quark.reflect.Field("generics.ccc.Context", "_value")];
    (this).methods = [new generics_ccc_TLS_generics_ccc_Context__getValue_Method()];
    (this).parents = ["quark.Object"];
}
exports.generics_ccc_TLS_generics_ccc_Context_ = generics_ccc_TLS_generics_ccc_Context_;
_qrt.util.inherits(generics_ccc_TLS_generics_ccc_Context_, quark.reflect.Class);

function generics_ccc_TLS_generics_ccc_Context___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
generics_ccc_TLS_generics_ccc_Context_.prototype.__init_fields__ = generics_ccc_TLS_generics_ccc_Context___init_fields__;
generics_ccc_TLS_generics_ccc_Context_.singleton = new generics_ccc_TLS_generics_ccc_Context_();
function generics_ccc_TLS_generics_ccc_Context__construct(args) {
    return new generics.ccc.TLS(_qrt.cast((args)[0], function () { return generics.ccc.TLSInitializer; }));
}
generics_ccc_TLS_generics_ccc_Context_.prototype.construct = generics_ccc_TLS_generics_ccc_Context__construct;

function generics_ccc_TLS_generics_ccc_Context__isAbstract() {
    return false;
}
generics_ccc_TLS_generics_ccc_Context_.prototype.isAbstract = generics_ccc_TLS_generics_ccc_Context__isAbstract;

function generics_ccc_TLS_generics_ccc_Context___getClass() {
    return _qrt.cast(null, function () { return String; });
}
generics_ccc_TLS_generics_ccc_Context_.prototype._getClass = generics_ccc_TLS_generics_ccc_Context___getClass;

function generics_ccc_TLS_generics_ccc_Context___getField(name) {
    return null;
}
generics_ccc_TLS_generics_ccc_Context_.prototype._getField = generics_ccc_TLS_generics_ccc_Context___getField;

function generics_ccc_TLS_generics_ccc_Context___setField(name, value) {}
generics_ccc_TLS_generics_ccc_Context_.prototype._setField = generics_ccc_TLS_generics_ccc_Context___setField;


// CLASS inheritance_Base

function inheritance_Base() {
    inheritance_Base.super_.call(this, "inheritance.Base");
    (this).name = "inheritance.Base";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.inheritance_Base = inheritance_Base;
_qrt.util.inherits(inheritance_Base, quark.reflect.Class);

function inheritance_Base__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_Base.prototype.__init_fields__ = inheritance_Base__init_fields__;
inheritance_Base.singleton = new inheritance_Base();
function inheritance_Base_construct(args) {
    return new inheritance.Base();
}
inheritance_Base.prototype.construct = inheritance_Base_construct;

function inheritance_Base_isAbstract() {
    return false;
}
inheritance_Base.prototype.isAbstract = inheritance_Base_isAbstract;

function inheritance_Base__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Base.prototype._getClass = inheritance_Base__getClass;

function inheritance_Base__getField(name) {
    return null;
}
inheritance_Base.prototype._getField = inheritance_Base__getField;

function inheritance_Base__setField(name, value) {}
inheritance_Base.prototype._setField = inheritance_Base__setField;


// CLASS inheritance_Test

function inheritance_Test() {
    inheritance_Test.super_.call(this, "inheritance.Test");
    (this).name = "inheritance.Test";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name"), new quark.reflect.Field("quark.String", "mumble"), new quark.reflect.Field("quark.String", "later")];
    (this).methods = [];
    (this).parents = ["inheritance.Base"];
}
exports.inheritance_Test = inheritance_Test;
_qrt.util.inherits(inheritance_Test, quark.reflect.Class);

function inheritance_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_Test.prototype.__init_fields__ = inheritance_Test__init_fields__;
inheritance_Test.singleton = new inheritance_Test();
function inheritance_Test_construct(args) {
    return new inheritance.Test();
}
inheritance_Test.prototype.construct = inheritance_Test_construct;

function inheritance_Test_isAbstract() {
    return false;
}
inheritance_Test.prototype.isAbstract = inheritance_Test_isAbstract;

function inheritance_Test__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Test.prototype._getClass = inheritance_Test__getClass;

function inheritance_Test__getField(name) {
    return null;
}
inheritance_Test.prototype._getField = inheritance_Test__getField;

function inheritance_Test__setField(name, value) {}
inheritance_Test.prototype._setField = inheritance_Test__setField;


// CLASS inheritance_A

function inheritance_A() {
    inheritance_A.super_.call(this, "inheritance.A");
    (this).name = "inheritance.A";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.inheritance_A = inheritance_A;
_qrt.util.inherits(inheritance_A, quark.reflect.Class);

function inheritance_A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_A.prototype.__init_fields__ = inheritance_A__init_fields__;
inheritance_A.singleton = new inheritance_A();
function inheritance_A_construct(args) {
    return new inheritance.A(_qrt.cast((args)[0], function () { return String; }));
}
inheritance_A.prototype.construct = inheritance_A_construct;

function inheritance_A_isAbstract() {
    return false;
}
inheritance_A.prototype.isAbstract = inheritance_A_isAbstract;

function inheritance_A__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_A.prototype._getClass = inheritance_A__getClass;

function inheritance_A__getField(name) {
    return null;
}
inheritance_A.prototype._getField = inheritance_A__getField;

function inheritance_A__setField(name, value) {}
inheritance_A.prototype._setField = inheritance_A__setField;


// CLASS inheritance_B_greet_Method

function inheritance_B_greet_Method() {
    inheritance_B_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.inheritance_B_greet_Method = inheritance_B_greet_Method;
_qrt.util.inherits(inheritance_B_greet_Method, quark.reflect.Method);

function inheritance_B_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_B_greet_Method.prototype.__init_fields__ = inheritance_B_greet_Method__init_fields__;

function inheritance_B_greet_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.B; });
    (obj).greet();
    return null;
}
inheritance_B_greet_Method.prototype.invoke = inheritance_B_greet_Method_invoke;

function inheritance_B_greet_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_B_greet_Method.prototype._getClass = inheritance_B_greet_Method__getClass;

function inheritance_B_greet_Method__getField(name) {
    return null;
}
inheritance_B_greet_Method.prototype._getField = inheritance_B_greet_Method__getField;

function inheritance_B_greet_Method__setField(name, value) {}
inheritance_B_greet_Method.prototype._setField = inheritance_B_greet_Method__setField;

// CLASS inheritance_B

function inheritance_B() {
    inheritance_B.super_.call(this, "inheritance.B");
    (this).name = "inheritance.B";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new inheritance_B_greet_Method()];
    (this).parents = ["inheritance.A"];
}
exports.inheritance_B = inheritance_B;
_qrt.util.inherits(inheritance_B, quark.reflect.Class);

function inheritance_B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_B.prototype.__init_fields__ = inheritance_B__init_fields__;
inheritance_B.singleton = new inheritance_B();
function inheritance_B_construct(args) {
    return new inheritance.B(_qrt.cast((args)[0], function () { return String; }));
}
inheritance_B.prototype.construct = inheritance_B_construct;

function inheritance_B_isAbstract() {
    return false;
}
inheritance_B.prototype.isAbstract = inheritance_B_isAbstract;

function inheritance_B__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_B.prototype._getClass = inheritance_B__getClass;

function inheritance_B__getField(name) {
    return null;
}
inheritance_B.prototype._getField = inheritance_B__getField;

function inheritance_B__setField(name, value) {}
inheritance_B.prototype._setField = inheritance_B__setField;


// CLASS inheritance_C_greet_Method

function inheritance_C_greet_Method() {
    inheritance_C_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.inheritance_C_greet_Method = inheritance_C_greet_Method;
_qrt.util.inherits(inheritance_C_greet_Method, quark.reflect.Method);

function inheritance_C_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_C_greet_Method.prototype.__init_fields__ = inheritance_C_greet_Method__init_fields__;

function inheritance_C_greet_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.C; });
    (obj).greet();
    return null;
}
inheritance_C_greet_Method.prototype.invoke = inheritance_C_greet_Method_invoke;

function inheritance_C_greet_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_C_greet_Method.prototype._getClass = inheritance_C_greet_Method__getClass;

function inheritance_C_greet_Method__getField(name) {
    return null;
}
inheritance_C_greet_Method.prototype._getField = inheritance_C_greet_Method__getField;

function inheritance_C_greet_Method__setField(name, value) {}
inheritance_C_greet_Method.prototype._setField = inheritance_C_greet_Method__setField;

// CLASS inheritance_C

function inheritance_C() {
    inheritance_C.super_.call(this, "inheritance.C");
    (this).name = "inheritance.C";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new inheritance_C_greet_Method()];
    (this).parents = ["inheritance.A"];
}
exports.inheritance_C = inheritance_C;
_qrt.util.inherits(inheritance_C, quark.reflect.Class);

function inheritance_C__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_C.prototype.__init_fields__ = inheritance_C__init_fields__;
inheritance_C.singleton = new inheritance_C();
function inheritance_C_construct(args) {
    return new inheritance.C(_qrt.cast((args)[0], function () { return String; }));
}
inheritance_C.prototype.construct = inheritance_C_construct;

function inheritance_C_isAbstract() {
    return false;
}
inheritance_C.prototype.isAbstract = inheritance_C_isAbstract;

function inheritance_C__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_C.prototype._getClass = inheritance_C__getClass;

function inheritance_C__getField(name) {
    return null;
}
inheritance_C.prototype._getField = inheritance_C__getField;

function inheritance_C__setField(name, value) {}
inheritance_C.prototype._setField = inheritance_C__setField;


// CLASS inheritance_X

function inheritance_X() {
    inheritance_X.super_.call(this, "inheritance.X");
    (this).name = "inheritance.X";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.inheritance_X = inheritance_X;
_qrt.util.inherits(inheritance_X, quark.reflect.Class);

function inheritance_X__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_X.prototype.__init_fields__ = inheritance_X__init_fields__;
inheritance_X.singleton = new inheritance_X();
function inheritance_X_construct(args) {
    return new inheritance.X();
}
inheritance_X.prototype.construct = inheritance_X_construct;

function inheritance_X_isAbstract() {
    return false;
}
inheritance_X.prototype.isAbstract = inheritance_X_isAbstract;

function inheritance_X__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_X.prototype._getClass = inheritance_X__getClass;

function inheritance_X__getField(name) {
    return null;
}
inheritance_X.prototype._getField = inheritance_X__getField;

function inheritance_X__setField(name, value) {}
inheritance_X.prototype._setField = inheritance_X__setField;


// CLASS inheritance_Y_test_Method

function inheritance_Y_test_Method() {
    inheritance_Y_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.inheritance_Y_test_Method = inheritance_Y_test_Method;
_qrt.util.inherits(inheritance_Y_test_Method, quark.reflect.Method);

function inheritance_Y_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_Y_test_Method.prototype.__init_fields__ = inheritance_Y_test_Method__init_fields__;

function inheritance_Y_test_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.Y; });
    (obj).test();
    return null;
}
inheritance_Y_test_Method.prototype.invoke = inheritance_Y_test_Method_invoke;

function inheritance_Y_test_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Y_test_Method.prototype._getClass = inheritance_Y_test_Method__getClass;

function inheritance_Y_test_Method__getField(name) {
    return null;
}
inheritance_Y_test_Method.prototype._getField = inheritance_Y_test_Method__getField;

function inheritance_Y_test_Method__setField(name, value) {}
inheritance_Y_test_Method.prototype._setField = inheritance_Y_test_Method__setField;

// CLASS inheritance_Y

function inheritance_Y() {
    inheritance_Y.super_.call(this, "inheritance.Y");
    (this).name = "inheritance.Y";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new inheritance_Y_test_Method()];
    (this).parents = ["inheritance.X"];
}
exports.inheritance_Y = inheritance_Y;
_qrt.util.inherits(inheritance_Y, quark.reflect.Class);

function inheritance_Y__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_Y.prototype.__init_fields__ = inheritance_Y__init_fields__;
inheritance_Y.singleton = new inheritance_Y();
function inheritance_Y_construct(args) {
    return new inheritance.Y(_qrt.cast((args)[0], function () { return String; }));
}
inheritance_Y.prototype.construct = inheritance_Y_construct;

function inheritance_Y_isAbstract() {
    return false;
}
inheritance_Y.prototype.isAbstract = inheritance_Y_isAbstract;

function inheritance_Y__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Y.prototype._getClass = inheritance_Y__getClass;

function inheritance_Y__getField(name) {
    return null;
}
inheritance_Y.prototype._getField = inheritance_Y__getField;

function inheritance_Y__setField(name, value) {}
inheritance_Y.prototype._setField = inheritance_Y__setField;


// CLASS inheritance_t1_A_foo_Method

function inheritance_t1_A_foo_Method() {
    inheritance_t1_A_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.inheritance_t1_A_foo_Method = inheritance_t1_A_foo_Method;
_qrt.util.inherits(inheritance_t1_A_foo_Method, quark.reflect.Method);

function inheritance_t1_A_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_t1_A_foo_Method.prototype.__init_fields__ = inheritance_t1_A_foo_Method__init_fields__;

function inheritance_t1_A_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.t1.A; });
    (obj).foo();
    return null;
}
inheritance_t1_A_foo_Method.prototype.invoke = inheritance_t1_A_foo_Method_invoke;

function inheritance_t1_A_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t1_A_foo_Method.prototype._getClass = inheritance_t1_A_foo_Method__getClass;

function inheritance_t1_A_foo_Method__getField(name) {
    return null;
}
inheritance_t1_A_foo_Method.prototype._getField = inheritance_t1_A_foo_Method__getField;

function inheritance_t1_A_foo_Method__setField(name, value) {}
inheritance_t1_A_foo_Method.prototype._setField = inheritance_t1_A_foo_Method__setField;

// CLASS inheritance_t1_A

function inheritance_t1_A() {
    inheritance_t1_A.super_.call(this, "inheritance.t1.A");
    (this).name = "inheritance.t1.A";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_t1_A_foo_Method()];
    (this).parents = ["quark.Object"];
}
exports.inheritance_t1_A = inheritance_t1_A;
_qrt.util.inherits(inheritance_t1_A, quark.reflect.Class);

function inheritance_t1_A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_t1_A.prototype.__init_fields__ = inheritance_t1_A__init_fields__;
inheritance_t1_A.singleton = new inheritance_t1_A();
function inheritance_t1_A_construct(args) {
    return new inheritance.t1.A();
}
inheritance_t1_A.prototype.construct = inheritance_t1_A_construct;

function inheritance_t1_A_isAbstract() {
    return false;
}
inheritance_t1_A.prototype.isAbstract = inheritance_t1_A_isAbstract;

function inheritance_t1_A__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t1_A.prototype._getClass = inheritance_t1_A__getClass;

function inheritance_t1_A__getField(name) {
    return null;
}
inheritance_t1_A.prototype._getField = inheritance_t1_A__getField;

function inheritance_t1_A__setField(name, value) {}
inheritance_t1_A.prototype._setField = inheritance_t1_A__setField;


// CLASS inheritance_t1_B_foo_Method

function inheritance_t1_B_foo_Method() {
    inheritance_t1_B_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.inheritance_t1_B_foo_Method = inheritance_t1_B_foo_Method;
_qrt.util.inherits(inheritance_t1_B_foo_Method, quark.reflect.Method);

function inheritance_t1_B_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_t1_B_foo_Method.prototype.__init_fields__ = inheritance_t1_B_foo_Method__init_fields__;

function inheritance_t1_B_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.t1.B; });
    (obj).foo();
    return null;
}
inheritance_t1_B_foo_Method.prototype.invoke = inheritance_t1_B_foo_Method_invoke;

function inheritance_t1_B_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t1_B_foo_Method.prototype._getClass = inheritance_t1_B_foo_Method__getClass;

function inheritance_t1_B_foo_Method__getField(name) {
    return null;
}
inheritance_t1_B_foo_Method.prototype._getField = inheritance_t1_B_foo_Method__getField;

function inheritance_t1_B_foo_Method__setField(name, value) {}
inheritance_t1_B_foo_Method.prototype._setField = inheritance_t1_B_foo_Method__setField;

// CLASS inheritance_t1_B

function inheritance_t1_B() {
    inheritance_t1_B.super_.call(this, "inheritance.t1.B");
    (this).name = "inheritance.t1.B";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_t1_B_foo_Method()];
    (this).parents = ["inheritance.t1.A"];
}
exports.inheritance_t1_B = inheritance_t1_B;
_qrt.util.inherits(inheritance_t1_B, quark.reflect.Class);

function inheritance_t1_B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_t1_B.prototype.__init_fields__ = inheritance_t1_B__init_fields__;
inheritance_t1_B.singleton = new inheritance_t1_B();
function inheritance_t1_B_construct(args) {
    return new inheritance.t1.B();
}
inheritance_t1_B.prototype.construct = inheritance_t1_B_construct;

function inheritance_t1_B_isAbstract() {
    return false;
}
inheritance_t1_B.prototype.isAbstract = inheritance_t1_B_isAbstract;

function inheritance_t1_B__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t1_B.prototype._getClass = inheritance_t1_B__getClass;

function inheritance_t1_B__getField(name) {
    return null;
}
inheritance_t1_B.prototype._getField = inheritance_t1_B__getField;

function inheritance_t1_B__setField(name, value) {}
inheritance_t1_B.prototype._setField = inheritance_t1_B__setField;


// CLASS inheritance_t1_C_foo_Method

function inheritance_t1_C_foo_Method() {
    inheritance_t1_C_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.inheritance_t1_C_foo_Method = inheritance_t1_C_foo_Method;
_qrt.util.inherits(inheritance_t1_C_foo_Method, quark.reflect.Method);

function inheritance_t1_C_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_t1_C_foo_Method.prototype.__init_fields__ = inheritance_t1_C_foo_Method__init_fields__;

function inheritance_t1_C_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.t1.C; });
    (obj).foo();
    return null;
}
inheritance_t1_C_foo_Method.prototype.invoke = inheritance_t1_C_foo_Method_invoke;

function inheritance_t1_C_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t1_C_foo_Method.prototype._getClass = inheritance_t1_C_foo_Method__getClass;

function inheritance_t1_C_foo_Method__getField(name) {
    return null;
}
inheritance_t1_C_foo_Method.prototype._getField = inheritance_t1_C_foo_Method__getField;

function inheritance_t1_C_foo_Method__setField(name, value) {}
inheritance_t1_C_foo_Method.prototype._setField = inheritance_t1_C_foo_Method__setField;

// CLASS inheritance_t1_C

function inheritance_t1_C() {
    inheritance_t1_C.super_.call(this, "inheritance.t1.C");
    (this).name = "inheritance.t1.C";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_t1_C_foo_Method()];
    (this).parents = ["inheritance.t1.A"];
}
exports.inheritance_t1_C = inheritance_t1_C;
_qrt.util.inherits(inheritance_t1_C, quark.reflect.Class);

function inheritance_t1_C__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_t1_C.prototype.__init_fields__ = inheritance_t1_C__init_fields__;
inheritance_t1_C.singleton = new inheritance_t1_C();
function inheritance_t1_C_construct(args) {
    return new inheritance.t1.C();
}
inheritance_t1_C.prototype.construct = inheritance_t1_C_construct;

function inheritance_t1_C_isAbstract() {
    return false;
}
inheritance_t1_C.prototype.isAbstract = inheritance_t1_C_isAbstract;

function inheritance_t1_C__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t1_C.prototype._getClass = inheritance_t1_C__getClass;

function inheritance_t1_C__getField(name) {
    return null;
}
inheritance_t1_C.prototype._getField = inheritance_t1_C__getField;

function inheritance_t1_C__setField(name, value) {}
inheritance_t1_C.prototype._setField = inheritance_t1_C__setField;


// CLASS inheritance_t2_A

function inheritance_t2_A() {
    inheritance_t2_A.super_.call(this, "inheritance.t2.A");
    (this).name = "inheritance.t2.A";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.inheritance_t2_A = inheritance_t2_A;
_qrt.util.inherits(inheritance_t2_A, quark.reflect.Class);

function inheritance_t2_A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_t2_A.prototype.__init_fields__ = inheritance_t2_A__init_fields__;
inheritance_t2_A.singleton = new inheritance_t2_A();
function inheritance_t2_A_construct(args) {
    return new inheritance.t2.A();
}
inheritance_t2_A.prototype.construct = inheritance_t2_A_construct;

function inheritance_t2_A_isAbstract() {
    return false;
}
inheritance_t2_A.prototype.isAbstract = inheritance_t2_A_isAbstract;

function inheritance_t2_A__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t2_A.prototype._getClass = inheritance_t2_A__getClass;

function inheritance_t2_A__getField(name) {
    return null;
}
inheritance_t2_A.prototype._getField = inheritance_t2_A__getField;

function inheritance_t2_A__setField(name, value) {}
inheritance_t2_A.prototype._setField = inheritance_t2_A__setField;


// CLASS inheritance_t2_B

function inheritance_t2_B() {
    inheritance_t2_B.super_.call(this, "inheritance.t2.B");
    (this).name = "inheritance.t2.B";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
    (this).parents = ["inheritance.t2.A"];
}
exports.inheritance_t2_B = inheritance_t2_B;
_qrt.util.inherits(inheritance_t2_B, quark.reflect.Class);

function inheritance_t2_B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_t2_B.prototype.__init_fields__ = inheritance_t2_B__init_fields__;
inheritance_t2_B.singleton = new inheritance_t2_B();
function inheritance_t2_B_construct(args) {
    return new inheritance.t2.B();
}
inheritance_t2_B.prototype.construct = inheritance_t2_B_construct;

function inheritance_t2_B_isAbstract() {
    return false;
}
inheritance_t2_B.prototype.isAbstract = inheritance_t2_B_isAbstract;

function inheritance_t2_B__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t2_B.prototype._getClass = inheritance_t2_B__getClass;

function inheritance_t2_B__getField(name) {
    return null;
}
inheritance_t2_B.prototype._getField = inheritance_t2_B__getField;

function inheritance_t2_B__setField(name, value) {}
inheritance_t2_B.prototype._setField = inheritance_t2_B__setField;


// CLASS inheritance_t2_X_quark_int_

function inheritance_t2_X_quark_int_() {
    inheritance_t2_X_quark_int_.super_.call(this, "inheritance.t2.X<quark.int>");
    (this).name = "inheritance.t2.X";
    (this).parameters = ["quark.int"];
    (this).fields = [];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.inheritance_t2_X_quark_int_ = inheritance_t2_X_quark_int_;
_qrt.util.inherits(inheritance_t2_X_quark_int_, quark.reflect.Class);

function inheritance_t2_X_quark_int___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_t2_X_quark_int_.prototype.__init_fields__ = inheritance_t2_X_quark_int___init_fields__;
inheritance_t2_X_quark_int_.singleton = new inheritance_t2_X_quark_int_();
function inheritance_t2_X_quark_int__construct(args) {
    return new inheritance.t2.X();
}
inheritance_t2_X_quark_int_.prototype.construct = inheritance_t2_X_quark_int__construct;

function inheritance_t2_X_quark_int__isAbstract() {
    return false;
}
inheritance_t2_X_quark_int_.prototype.isAbstract = inheritance_t2_X_quark_int__isAbstract;

function inheritance_t2_X_quark_int___getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t2_X_quark_int_.prototype._getClass = inheritance_t2_X_quark_int___getClass;

function inheritance_t2_X_quark_int___getField(name) {
    return null;
}
inheritance_t2_X_quark_int_.prototype._getField = inheritance_t2_X_quark_int___getField;

function inheritance_t2_X_quark_int___setField(name, value) {}
inheritance_t2_X_quark_int_.prototype._setField = inheritance_t2_X_quark_int___setField;


// CLASS inheritance_t2_Y

function inheritance_t2_Y() {
    inheritance_t2_Y.super_.call(this, "inheritance.t2.Y");
    (this).name = "inheritance.t2.Y";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.inheritance_t2_Y = inheritance_t2_Y;
_qrt.util.inherits(inheritance_t2_Y, quark.reflect.Class);

function inheritance_t2_Y__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_t2_Y.prototype.__init_fields__ = inheritance_t2_Y__init_fields__;
inheritance_t2_Y.singleton = new inheritance_t2_Y();
function inheritance_t2_Y_construct(args) {
    return new inheritance.t2.Y();
}
inheritance_t2_Y.prototype.construct = inheritance_t2_Y_construct;

function inheritance_t2_Y_isAbstract() {
    return false;
}
inheritance_t2_Y.prototype.isAbstract = inheritance_t2_Y_isAbstract;

function inheritance_t2_Y__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_t2_Y.prototype._getClass = inheritance_t2_Y__getClass;

function inheritance_t2_Y__getField(name) {
    return null;
}
inheritance_t2_Y.prototype._getField = inheritance_t2_Y__getField;

function inheritance_t2_Y__setField(name, value) {}
inheritance_t2_Y.prototype._setField = inheritance_t2_Y__setField;


// CLASS inheritance_pets_Pet_greet_Method

function inheritance_pets_Pet_greet_Method() {
    inheritance_pets_Pet_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.inheritance_pets_Pet_greet_Method = inheritance_pets_Pet_greet_Method;
_qrt.util.inherits(inheritance_pets_Pet_greet_Method, quark.reflect.Method);

function inheritance_pets_Pet_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_pets_Pet_greet_Method.prototype.__init_fields__ = inheritance_pets_Pet_greet_Method__init_fields__;

function inheritance_pets_Pet_greet_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.pets.Pet; });
    (obj).greet();
    return null;
}
inheritance_pets_Pet_greet_Method.prototype.invoke = inheritance_pets_Pet_greet_Method_invoke;

function inheritance_pets_Pet_greet_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_pets_Pet_greet_Method.prototype._getClass = inheritance_pets_Pet_greet_Method__getClass;

function inheritance_pets_Pet_greet_Method__getField(name) {
    return null;
}
inheritance_pets_Pet_greet_Method.prototype._getField = inheritance_pets_Pet_greet_Method__getField;

function inheritance_pets_Pet_greet_Method__setField(name, value) {}
inheritance_pets_Pet_greet_Method.prototype._setField = inheritance_pets_Pet_greet_Method__setField;

// CLASS inheritance_pets_Pet

function inheritance_pets_Pet() {
    inheritance_pets_Pet.super_.call(this, "inheritance.pets.Pet");
    (this).name = "inheritance.pets.Pet";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_pets_Pet_greet_Method()];
    (this).parents = ["quark.Object"];
}
exports.inheritance_pets_Pet = inheritance_pets_Pet;
_qrt.util.inherits(inheritance_pets_Pet, quark.reflect.Class);

function inheritance_pets_Pet__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_pets_Pet.prototype.__init_fields__ = inheritance_pets_Pet__init_fields__;
inheritance_pets_Pet.singleton = new inheritance_pets_Pet();
function inheritance_pets_Pet_construct(args) {
    return null;
}
inheritance_pets_Pet.prototype.construct = inheritance_pets_Pet_construct;

function inheritance_pets_Pet_isAbstract() {
    return true;
}
inheritance_pets_Pet.prototype.isAbstract = inheritance_pets_Pet_isAbstract;

function inheritance_pets_Pet__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_pets_Pet.prototype._getClass = inheritance_pets_Pet__getClass;

function inheritance_pets_Pet__getField(name) {
    return null;
}
inheritance_pets_Pet.prototype._getField = inheritance_pets_Pet__getField;

function inheritance_pets_Pet__setField(name, value) {}
inheritance_pets_Pet.prototype._setField = inheritance_pets_Pet__setField;


// CLASS inheritance_pets_Cat_greet_Method

function inheritance_pets_Cat_greet_Method() {
    inheritance_pets_Cat_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.inheritance_pets_Cat_greet_Method = inheritance_pets_Cat_greet_Method;
_qrt.util.inherits(inheritance_pets_Cat_greet_Method, quark.reflect.Method);

function inheritance_pets_Cat_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_pets_Cat_greet_Method.prototype.__init_fields__ = inheritance_pets_Cat_greet_Method__init_fields__;

function inheritance_pets_Cat_greet_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.pets.Cat; });
    (obj).greet();
    return null;
}
inheritance_pets_Cat_greet_Method.prototype.invoke = inheritance_pets_Cat_greet_Method_invoke;

function inheritance_pets_Cat_greet_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_pets_Cat_greet_Method.prototype._getClass = inheritance_pets_Cat_greet_Method__getClass;

function inheritance_pets_Cat_greet_Method__getField(name) {
    return null;
}
inheritance_pets_Cat_greet_Method.prototype._getField = inheritance_pets_Cat_greet_Method__getField;

function inheritance_pets_Cat_greet_Method__setField(name, value) {}
inheritance_pets_Cat_greet_Method.prototype._setField = inheritance_pets_Cat_greet_Method__setField;

// CLASS inheritance_pets_Cat

function inheritance_pets_Cat() {
    inheritance_pets_Cat.super_.call(this, "inheritance.pets.Cat");
    (this).name = "inheritance.pets.Cat";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_pets_Cat_greet_Method()];
    (this).parents = ["inheritance.pets.Pet"];
}
exports.inheritance_pets_Cat = inheritance_pets_Cat;
_qrt.util.inherits(inheritance_pets_Cat, quark.reflect.Class);

function inheritance_pets_Cat__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_pets_Cat.prototype.__init_fields__ = inheritance_pets_Cat__init_fields__;
inheritance_pets_Cat.singleton = new inheritance_pets_Cat();
function inheritance_pets_Cat_construct(args) {
    return new inheritance.pets.Cat();
}
inheritance_pets_Cat.prototype.construct = inheritance_pets_Cat_construct;

function inheritance_pets_Cat_isAbstract() {
    return false;
}
inheritance_pets_Cat.prototype.isAbstract = inheritance_pets_Cat_isAbstract;

function inheritance_pets_Cat__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_pets_Cat.prototype._getClass = inheritance_pets_Cat__getClass;

function inheritance_pets_Cat__getField(name) {
    return null;
}
inheritance_pets_Cat.prototype._getField = inheritance_pets_Cat__getField;

function inheritance_pets_Cat__setField(name, value) {}
inheritance_pets_Cat.prototype._setField = inheritance_pets_Cat__setField;


// CLASS inheritance_pets_Dog_greet_Method

function inheritance_pets_Dog_greet_Method() {
    inheritance_pets_Dog_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.inheritance_pets_Dog_greet_Method = inheritance_pets_Dog_greet_Method;
_qrt.util.inherits(inheritance_pets_Dog_greet_Method, quark.reflect.Method);

function inheritance_pets_Dog_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_pets_Dog_greet_Method.prototype.__init_fields__ = inheritance_pets_Dog_greet_Method__init_fields__;

function inheritance_pets_Dog_greet_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.pets.Dog; });
    (obj).greet();
    return null;
}
inheritance_pets_Dog_greet_Method.prototype.invoke = inheritance_pets_Dog_greet_Method_invoke;

function inheritance_pets_Dog_greet_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_pets_Dog_greet_Method.prototype._getClass = inheritance_pets_Dog_greet_Method__getClass;

function inheritance_pets_Dog_greet_Method__getField(name) {
    return null;
}
inheritance_pets_Dog_greet_Method.prototype._getField = inheritance_pets_Dog_greet_Method__getField;

function inheritance_pets_Dog_greet_Method__setField(name, value) {}
inheritance_pets_Dog_greet_Method.prototype._setField = inheritance_pets_Dog_greet_Method__setField;

// CLASS inheritance_pets_Dog

function inheritance_pets_Dog() {
    inheritance_pets_Dog.super_.call(this, "inheritance.pets.Dog");
    (this).name = "inheritance.pets.Dog";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_pets_Dog_greet_Method()];
    (this).parents = ["inheritance.pets.Pet"];
}
exports.inheritance_pets_Dog = inheritance_pets_Dog;
_qrt.util.inherits(inheritance_pets_Dog, quark.reflect.Class);

function inheritance_pets_Dog__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_pets_Dog.prototype.__init_fields__ = inheritance_pets_Dog__init_fields__;
inheritance_pets_Dog.singleton = new inheritance_pets_Dog();
function inheritance_pets_Dog_construct(args) {
    return new inheritance.pets.Dog();
}
inheritance_pets_Dog.prototype.construct = inheritance_pets_Dog_construct;

function inheritance_pets_Dog_isAbstract() {
    return false;
}
inheritance_pets_Dog.prototype.isAbstract = inheritance_pets_Dog_isAbstract;

function inheritance_pets_Dog__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_pets_Dog.prototype._getClass = inheritance_pets_Dog__getClass;

function inheritance_pets_Dog__getField(name) {
    return null;
}
inheritance_pets_Dog.prototype._getField = inheritance_pets_Dog__getField;

function inheritance_pets_Dog__setField(name, value) {}
inheritance_pets_Dog.prototype._setField = inheritance_pets_Dog__setField;


// CLASS inheritance_Message_encode_Method

function inheritance_Message_encode_Method() {
    inheritance_Message_encode_Method.super_.call(this, "quark.String", "encode", []);
}
exports.inheritance_Message_encode_Method = inheritance_Message_encode_Method;
_qrt.util.inherits(inheritance_Message_encode_Method, quark.reflect.Method);

function inheritance_Message_encode_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_Message_encode_Method.prototype.__init_fields__ = inheritance_Message_encode_Method__init_fields__;

function inheritance_Message_encode_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.Message; });
    return (obj).encode();
}
inheritance_Message_encode_Method.prototype.invoke = inheritance_Message_encode_Method_invoke;

function inheritance_Message_encode_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Message_encode_Method.prototype._getClass = inheritance_Message_encode_Method__getClass;

function inheritance_Message_encode_Method__getField(name) {
    return null;
}
inheritance_Message_encode_Method.prototype._getField = inheritance_Message_encode_Method__getField;

function inheritance_Message_encode_Method__setField(name, value) {}
inheritance_Message_encode_Method.prototype._setField = inheritance_Message_encode_Method__setField;

// CLASS inheritance_Message

function inheritance_Message() {
    inheritance_Message.super_.call(this, "inheritance.Message");
    (this).name = "inheritance.Message";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_Message_encode_Method()];
    (this).parents = ["quark.Object"];
}
exports.inheritance_Message = inheritance_Message;
_qrt.util.inherits(inheritance_Message, quark.reflect.Class);

function inheritance_Message__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_Message.prototype.__init_fields__ = inheritance_Message__init_fields__;
inheritance_Message.singleton = new inheritance_Message();
function inheritance_Message_construct(args) {
    return new inheritance.Message();
}
inheritance_Message.prototype.construct = inheritance_Message_construct;

function inheritance_Message_isAbstract() {
    return false;
}
inheritance_Message.prototype.isAbstract = inheritance_Message_isAbstract;

function inheritance_Message__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Message.prototype._getClass = inheritance_Message__getClass;

function inheritance_Message__getField(name) {
    return null;
}
inheritance_Message.prototype._getField = inheritance_Message__getField;

function inheritance_Message__setField(name, value) {}
inheritance_Message.prototype._setField = inheritance_Message__setField;


// CLASS inheritance_Ping_encode_Method

function inheritance_Ping_encode_Method() {
    inheritance_Ping_encode_Method.super_.call(this, "quark.String", "encode", []);
}
exports.inheritance_Ping_encode_Method = inheritance_Ping_encode_Method;
_qrt.util.inherits(inheritance_Ping_encode_Method, quark.reflect.Method);

function inheritance_Ping_encode_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_Ping_encode_Method.prototype.__init_fields__ = inheritance_Ping_encode_Method__init_fields__;

function inheritance_Ping_encode_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.Ping; });
    return (obj).encode();
}
inheritance_Ping_encode_Method.prototype.invoke = inheritance_Ping_encode_Method_invoke;

function inheritance_Ping_encode_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Ping_encode_Method.prototype._getClass = inheritance_Ping_encode_Method__getClass;

function inheritance_Ping_encode_Method__getField(name) {
    return null;
}
inheritance_Ping_encode_Method.prototype._getField = inheritance_Ping_encode_Method__getField;

function inheritance_Ping_encode_Method__setField(name, value) {}
inheritance_Ping_encode_Method.prototype._setField = inheritance_Ping_encode_Method__setField;

// CLASS inheritance_Ping

function inheritance_Ping() {
    inheritance_Ping.super_.call(this, "inheritance.Ping");
    (this).name = "inheritance.Ping";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_Ping_encode_Method()];
    (this).parents = ["inheritance.Message"];
}
exports.inheritance_Ping = inheritance_Ping;
_qrt.util.inherits(inheritance_Ping, quark.reflect.Class);

function inheritance_Ping__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_Ping.prototype.__init_fields__ = inheritance_Ping__init_fields__;
inheritance_Ping.singleton = new inheritance_Ping();
function inheritance_Ping_construct(args) {
    return new inheritance.Ping();
}
inheritance_Ping.prototype.construct = inheritance_Ping_construct;

function inheritance_Ping_isAbstract() {
    return false;
}
inheritance_Ping.prototype.isAbstract = inheritance_Ping_isAbstract;

function inheritance_Ping__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Ping.prototype._getClass = inheritance_Ping__getClass;

function inheritance_Ping__getField(name) {
    return null;
}
inheritance_Ping.prototype._getField = inheritance_Ping__getField;

function inheritance_Ping__setField(name, value) {}
inheritance_Ping.prototype._setField = inheritance_Ping__setField;


// CLASS inheritance_Pong_toString_Method

function inheritance_Pong_toString_Method() {
    inheritance_Pong_toString_Method.super_.call(this, "quark.String", "toString", []);
}
exports.inheritance_Pong_toString_Method = inheritance_Pong_toString_Method;
_qrt.util.inherits(inheritance_Pong_toString_Method, quark.reflect.Method);

function inheritance_Pong_toString_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_Pong_toString_Method.prototype.__init_fields__ = inheritance_Pong_toString_Method__init_fields__;

function inheritance_Pong_toString_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.Pong; });
    return (obj).toString();
}
inheritance_Pong_toString_Method.prototype.invoke = inheritance_Pong_toString_Method_invoke;

function inheritance_Pong_toString_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Pong_toString_Method.prototype._getClass = inheritance_Pong_toString_Method__getClass;

function inheritance_Pong_toString_Method__getField(name) {
    return null;
}
inheritance_Pong_toString_Method.prototype._getField = inheritance_Pong_toString_Method__getField;

function inheritance_Pong_toString_Method__setField(name, value) {}
inheritance_Pong_toString_Method.prototype._setField = inheritance_Pong_toString_Method__setField;

// CLASS inheritance_Pong_encode_Method

function inheritance_Pong_encode_Method() {
    inheritance_Pong_encode_Method.super_.call(this, "quark.String", "encode", []);
}
exports.inheritance_Pong_encode_Method = inheritance_Pong_encode_Method;
_qrt.util.inherits(inheritance_Pong_encode_Method, quark.reflect.Method);

function inheritance_Pong_encode_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_Pong_encode_Method.prototype.__init_fields__ = inheritance_Pong_encode_Method__init_fields__;

function inheritance_Pong_encode_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.Pong; });
    return (obj).encode();
}
inheritance_Pong_encode_Method.prototype.invoke = inheritance_Pong_encode_Method_invoke;

function inheritance_Pong_encode_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Pong_encode_Method.prototype._getClass = inheritance_Pong_encode_Method__getClass;

function inheritance_Pong_encode_Method__getField(name) {
    return null;
}
inheritance_Pong_encode_Method.prototype._getField = inheritance_Pong_encode_Method__getField;

function inheritance_Pong_encode_Method__setField(name, value) {}
inheritance_Pong_encode_Method.prototype._setField = inheritance_Pong_encode_Method__setField;

// CLASS inheritance_Pong

function inheritance_Pong() {
    inheritance_Pong.super_.call(this, "inheritance.Pong");
    (this).name = "inheritance.Pong";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_Pong_toString_Method(), new inheritance_Pong_encode_Method()];
    (this).parents = ["inheritance.Message"];
}
exports.inheritance_Pong = inheritance_Pong;
_qrt.util.inherits(inheritance_Pong, quark.reflect.Class);

function inheritance_Pong__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_Pong.prototype.__init_fields__ = inheritance_Pong__init_fields__;
inheritance_Pong.singleton = new inheritance_Pong();
function inheritance_Pong_construct(args) {
    return new inheritance.Pong();
}
inheritance_Pong.prototype.construct = inheritance_Pong_construct;

function inheritance_Pong_isAbstract() {
    return false;
}
inheritance_Pong.prototype.isAbstract = inheritance_Pong_isAbstract;

function inheritance_Pong__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_Pong.prototype._getClass = inheritance_Pong__getClass;

function inheritance_Pong__getField(name) {
    return null;
}
inheritance_Pong.prototype._getField = inheritance_Pong__getField;

function inheritance_Pong__setField(name, value) {}
inheritance_Pong.prototype._setField = inheritance_Pong__setField;


// CLASS inheritance_super__A_greet_Method

function inheritance_super__A_greet_Method() {
    inheritance_super__A_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.inheritance_super__A_greet_Method = inheritance_super__A_greet_Method;
_qrt.util.inherits(inheritance_super__A_greet_Method, quark.reflect.Method);

function inheritance_super__A_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_super__A_greet_Method.prototype.__init_fields__ = inheritance_super__A_greet_Method__init_fields__;

function inheritance_super__A_greet_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.super_.A; });
    (obj).greet();
    return null;
}
inheritance_super__A_greet_Method.prototype.invoke = inheritance_super__A_greet_Method_invoke;

function inheritance_super__A_greet_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_super__A_greet_Method.prototype._getClass = inheritance_super__A_greet_Method__getClass;

function inheritance_super__A_greet_Method__getField(name) {
    return null;
}
inheritance_super__A_greet_Method.prototype._getField = inheritance_super__A_greet_Method__getField;

function inheritance_super__A_greet_Method__setField(name, value) {}
inheritance_super__A_greet_Method.prototype._setField = inheritance_super__A_greet_Method__setField;

// CLASS inheritance_super__A

function inheritance_super__A() {
    inheritance_super__A.super_.call(this, "inheritance.super_.A");
    (this).name = "inheritance.super_.A";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new inheritance_super__A_greet_Method()];
    (this).parents = ["quark.Object"];
}
exports.inheritance_super__A = inheritance_super__A;
_qrt.util.inherits(inheritance_super__A, quark.reflect.Class);

function inheritance_super__A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_super__A.prototype.__init_fields__ = inheritance_super__A__init_fields__;
inheritance_super__A.singleton = new inheritance_super__A();
function inheritance_super__A_construct(args) {
    return new inheritance.super_.A(_qrt.cast((args)[0], function () { return String; }));
}
inheritance_super__A.prototype.construct = inheritance_super__A_construct;

function inheritance_super__A_isAbstract() {
    return false;
}
inheritance_super__A.prototype.isAbstract = inheritance_super__A_isAbstract;

function inheritance_super__A__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_super__A.prototype._getClass = inheritance_super__A__getClass;

function inheritance_super__A__getField(name) {
    return null;
}
inheritance_super__A.prototype._getField = inheritance_super__A__getField;

function inheritance_super__A__setField(name, value) {}
inheritance_super__A.prototype._setField = inheritance_super__A__setField;


// CLASS inheritance_super__B_greet_Method

function inheritance_super__B_greet_Method() {
    inheritance_super__B_greet_Method.super_.call(this, "quark.void", "greet", []);
}
exports.inheritance_super__B_greet_Method = inheritance_super__B_greet_Method;
_qrt.util.inherits(inheritance_super__B_greet_Method, quark.reflect.Method);

function inheritance_super__B_greet_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_super__B_greet_Method.prototype.__init_fields__ = inheritance_super__B_greet_Method__init_fields__;

function inheritance_super__B_greet_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.super_.B; });
    (obj).greet();
    return null;
}
inheritance_super__B_greet_Method.prototype.invoke = inheritance_super__B_greet_Method_invoke;

function inheritance_super__B_greet_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_super__B_greet_Method.prototype._getClass = inheritance_super__B_greet_Method__getClass;

function inheritance_super__B_greet_Method__getField(name) {
    return null;
}
inheritance_super__B_greet_Method.prototype._getField = inheritance_super__B_greet_Method__getField;

function inheritance_super__B_greet_Method__setField(name, value) {}
inheritance_super__B_greet_Method.prototype._setField = inheritance_super__B_greet_Method__setField;

// CLASS inheritance_super__B

function inheritance_super__B() {
    inheritance_super__B.super_.call(this, "inheritance.super_.B");
    (this).name = "inheritance.super_.B";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new inheritance_super__B_greet_Method()];
    (this).parents = ["inheritance.super_.A"];
}
exports.inheritance_super__B = inheritance_super__B;
_qrt.util.inherits(inheritance_super__B, quark.reflect.Class);

function inheritance_super__B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_super__B.prototype.__init_fields__ = inheritance_super__B__init_fields__;
inheritance_super__B.singleton = new inheritance_super__B();
function inheritance_super__B_construct(args) {
    return new inheritance.super_.B();
}
inheritance_super__B.prototype.construct = inheritance_super__B_construct;

function inheritance_super__B_isAbstract() {
    return false;
}
inheritance_super__B.prototype.isAbstract = inheritance_super__B_isAbstract;

function inheritance_super__B__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_super__B.prototype._getClass = inheritance_super__B__getClass;

function inheritance_super__B__getField(name) {
    return null;
}
inheritance_super__B.prototype._getField = inheritance_super__B__getField;

function inheritance_super__B__setField(name, value) {}
inheritance_super__B.prototype._setField = inheritance_super__B__setField;


// CLASS inheritance_use_before_def_Bar_go_Method

function inheritance_use_before_def_Bar_go_Method() {
    inheritance_use_before_def_Bar_go_Method.super_.call(this, "quark.void", "go", []);
}
exports.inheritance_use_before_def_Bar_go_Method = inheritance_use_before_def_Bar_go_Method;
_qrt.util.inherits(inheritance_use_before_def_Bar_go_Method, quark.reflect.Method);

function inheritance_use_before_def_Bar_go_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
inheritance_use_before_def_Bar_go_Method.prototype.__init_fields__ = inheritance_use_before_def_Bar_go_Method__init_fields__;

function inheritance_use_before_def_Bar_go_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return inheritance.use_before_def.Bar; });
    (obj).go();
    return null;
}
inheritance_use_before_def_Bar_go_Method.prototype.invoke = inheritance_use_before_def_Bar_go_Method_invoke;

function inheritance_use_before_def_Bar_go_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_use_before_def_Bar_go_Method.prototype._getClass = inheritance_use_before_def_Bar_go_Method__getClass;

function inheritance_use_before_def_Bar_go_Method__getField(name) {
    return null;
}
inheritance_use_before_def_Bar_go_Method.prototype._getField = inheritance_use_before_def_Bar_go_Method__getField;

function inheritance_use_before_def_Bar_go_Method__setField(name, value) {}
inheritance_use_before_def_Bar_go_Method.prototype._setField = inheritance_use_before_def_Bar_go_Method__setField;

// CLASS inheritance_use_before_def_Bar

function inheritance_use_before_def_Bar() {
    inheritance_use_before_def_Bar.super_.call(this, "inheritance.use_before_def.Bar");
    (this).name = "inheritance.use_before_def.Bar";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new inheritance_use_before_def_Bar_go_Method()];
    (this).parents = ["quark.Object"];
}
exports.inheritance_use_before_def_Bar = inheritance_use_before_def_Bar;
_qrt.util.inherits(inheritance_use_before_def_Bar, quark.reflect.Class);

function inheritance_use_before_def_Bar__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_use_before_def_Bar.prototype.__init_fields__ = inheritance_use_before_def_Bar__init_fields__;
inheritance_use_before_def_Bar.singleton = new inheritance_use_before_def_Bar();
function inheritance_use_before_def_Bar_construct(args) {
    return new inheritance.use_before_def.Bar();
}
inheritance_use_before_def_Bar.prototype.construct = inheritance_use_before_def_Bar_construct;

function inheritance_use_before_def_Bar_isAbstract() {
    return false;
}
inheritance_use_before_def_Bar.prototype.isAbstract = inheritance_use_before_def_Bar_isAbstract;

function inheritance_use_before_def_Bar__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_use_before_def_Bar.prototype._getClass = inheritance_use_before_def_Bar__getClass;

function inheritance_use_before_def_Bar__getField(name) {
    return null;
}
inheritance_use_before_def_Bar.prototype._getField = inheritance_use_before_def_Bar__getField;

function inheritance_use_before_def_Bar__setField(name, value) {}
inheritance_use_before_def_Bar.prototype._setField = inheritance_use_before_def_Bar__setField;


// CLASS inheritance_use_before_def_Foo

function inheritance_use_before_def_Foo() {
    inheritance_use_before_def_Foo.super_.call(this, "inheritance.use_before_def.Foo");
    (this).name = "inheritance.use_before_def.Foo";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.inheritance_use_before_def_Foo = inheritance_use_before_def_Foo;
_qrt.util.inherits(inheritance_use_before_def_Foo, quark.reflect.Class);

function inheritance_use_before_def_Foo__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
inheritance_use_before_def_Foo.prototype.__init_fields__ = inheritance_use_before_def_Foo__init_fields__;
inheritance_use_before_def_Foo.singleton = new inheritance_use_before_def_Foo();
function inheritance_use_before_def_Foo_construct(args) {
    return new inheritance.use_before_def.Foo();
}
inheritance_use_before_def_Foo.prototype.construct = inheritance_use_before_def_Foo_construct;

function inheritance_use_before_def_Foo_isAbstract() {
    return false;
}
inheritance_use_before_def_Foo.prototype.isAbstract = inheritance_use_before_def_Foo_isAbstract;

function inheritance_use_before_def_Foo__getClass() {
    return _qrt.cast(null, function () { return String; });
}
inheritance_use_before_def_Foo.prototype._getClass = inheritance_use_before_def_Foo__getClass;

function inheritance_use_before_def_Foo__getField(name) {
    return null;
}
inheritance_use_before_def_Foo.prototype._getField = inheritance_use_before_def_Foo__getField;

function inheritance_use_before_def_Foo__setField(name, value) {}
inheritance_use_before_def_Foo.prototype._setField = inheritance_use_before_def_Foo__setField;


// CLASS interfaces_A_foo_Method

function interfaces_A_foo_Method() {
    interfaces_A_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.interfaces_A_foo_Method = interfaces_A_foo_Method;
_qrt.util.inherits(interfaces_A_foo_Method, quark.reflect.Method);

function interfaces_A_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_A_foo_Method.prototype.__init_fields__ = interfaces_A_foo_Method__init_fields__;

function interfaces_A_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.A; });
    (obj).foo();
    return null;
}
interfaces_A_foo_Method.prototype.invoke = interfaces_A_foo_Method_invoke;

function interfaces_A_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_A_foo_Method.prototype._getClass = interfaces_A_foo_Method__getClass;

function interfaces_A_foo_Method__getField(name) {
    return null;
}
interfaces_A_foo_Method.prototype._getField = interfaces_A_foo_Method__getField;

function interfaces_A_foo_Method__setField(name, value) {}
interfaces_A_foo_Method.prototype._setField = interfaces_A_foo_Method__setField;

// CLASS interfaces_A_bar_Method

function interfaces_A_bar_Method() {
    interfaces_A_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.interfaces_A_bar_Method = interfaces_A_bar_Method;
_qrt.util.inherits(interfaces_A_bar_Method, quark.reflect.Method);

function interfaces_A_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_A_bar_Method.prototype.__init_fields__ = interfaces_A_bar_Method__init_fields__;

function interfaces_A_bar_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.A; });
    (obj).bar();
    return null;
}
interfaces_A_bar_Method.prototype.invoke = interfaces_A_bar_Method_invoke;

function interfaces_A_bar_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_A_bar_Method.prototype._getClass = interfaces_A_bar_Method__getClass;

function interfaces_A_bar_Method__getField(name) {
    return null;
}
interfaces_A_bar_Method.prototype._getField = interfaces_A_bar_Method__getField;

function interfaces_A_bar_Method__setField(name, value) {}
interfaces_A_bar_Method.prototype._setField = interfaces_A_bar_Method__setField;

// CLASS interfaces_A

function interfaces_A() {
    interfaces_A.super_.call(this, "interfaces.A");
    (this).name = "interfaces.A";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_A_foo_Method(), new interfaces_A_bar_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_A = interfaces_A;
_qrt.util.inherits(interfaces_A, quark.reflect.Class);

function interfaces_A__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_A.prototype.__init_fields__ = interfaces_A__init_fields__;
interfaces_A.singleton = new interfaces_A();
function interfaces_A_construct(args) {
    return null;
}
interfaces_A.prototype.construct = interfaces_A_construct;

function interfaces_A_isAbstract() {
    return true;
}
interfaces_A.prototype.isAbstract = interfaces_A_isAbstract;

function interfaces_A__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_A.prototype._getClass = interfaces_A__getClass;

function interfaces_A__getField(name) {
    return null;
}
interfaces_A.prototype._getField = interfaces_A__getField;

function interfaces_A__setField(name, value) {}
interfaces_A.prototype._setField = interfaces_A__setField;


// CLASS interfaces_B_bar_Method

function interfaces_B_bar_Method() {
    interfaces_B_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.interfaces_B_bar_Method = interfaces_B_bar_Method;
_qrt.util.inherits(interfaces_B_bar_Method, quark.reflect.Method);

function interfaces_B_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_B_bar_Method.prototype.__init_fields__ = interfaces_B_bar_Method__init_fields__;

function interfaces_B_bar_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.B; });
    (obj).bar();
    return null;
}
interfaces_B_bar_Method.prototype.invoke = interfaces_B_bar_Method_invoke;

function interfaces_B_bar_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_B_bar_Method.prototype._getClass = interfaces_B_bar_Method__getClass;

function interfaces_B_bar_Method__getField(name) {
    return null;
}
interfaces_B_bar_Method.prototype._getField = interfaces_B_bar_Method__getField;

function interfaces_B_bar_Method__setField(name, value) {}
interfaces_B_bar_Method.prototype._setField = interfaces_B_bar_Method__setField;

// CLASS interfaces_B

function interfaces_B() {
    interfaces_B.super_.call(this, "interfaces.B");
    (this).name = "interfaces.B";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_B_bar_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_B = interfaces_B;
_qrt.util.inherits(interfaces_B, quark.reflect.Class);

function interfaces_B__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_B.prototype.__init_fields__ = interfaces_B__init_fields__;
interfaces_B.singleton = new interfaces_B();
function interfaces_B_construct(args) {
    return null;
}
interfaces_B.prototype.construct = interfaces_B_construct;

function interfaces_B_isAbstract() {
    return true;
}
interfaces_B.prototype.isAbstract = interfaces_B_isAbstract;

function interfaces_B__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_B.prototype._getClass = interfaces_B__getClass;

function interfaces_B__getField(name) {
    return null;
}
interfaces_B.prototype._getField = interfaces_B__getField;

function interfaces_B__setField(name, value) {}
interfaces_B.prototype._setField = interfaces_B__setField;


// CLASS interfaces_C_foo_Method

function interfaces_C_foo_Method() {
    interfaces_C_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.interfaces_C_foo_Method = interfaces_C_foo_Method;
_qrt.util.inherits(interfaces_C_foo_Method, quark.reflect.Method);

function interfaces_C_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_C_foo_Method.prototype.__init_fields__ = interfaces_C_foo_Method__init_fields__;

function interfaces_C_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.C; });
    (obj).foo();
    return null;
}
interfaces_C_foo_Method.prototype.invoke = interfaces_C_foo_Method_invoke;

function interfaces_C_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_C_foo_Method.prototype._getClass = interfaces_C_foo_Method__getClass;

function interfaces_C_foo_Method__getField(name) {
    return null;
}
interfaces_C_foo_Method.prototype._getField = interfaces_C_foo_Method__getField;

function interfaces_C_foo_Method__setField(name, value) {}
interfaces_C_foo_Method.prototype._setField = interfaces_C_foo_Method__setField;

// CLASS interfaces_C

function interfaces_C() {
    interfaces_C.super_.call(this, "interfaces.C");
    (this).name = "interfaces.C";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_C_foo_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_C = interfaces_C;
_qrt.util.inherits(interfaces_C, quark.reflect.Class);

function interfaces_C__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_C.prototype.__init_fields__ = interfaces_C__init_fields__;
interfaces_C.singleton = new interfaces_C();
function interfaces_C_construct(args) {
    return null;
}
interfaces_C.prototype.construct = interfaces_C_construct;

function interfaces_C_isAbstract() {
    return true;
}
interfaces_C.prototype.isAbstract = interfaces_C_isAbstract;

function interfaces_C__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_C.prototype._getClass = interfaces_C__getClass;

function interfaces_C__getField(name) {
    return null;
}
interfaces_C.prototype._getField = interfaces_C__getField;

function interfaces_C__setField(name, value) {}
interfaces_C.prototype._setField = interfaces_C__setField;


// CLASS interfaces_T1_foo_Method

function interfaces_T1_foo_Method() {
    interfaces_T1_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.interfaces_T1_foo_Method = interfaces_T1_foo_Method;
_qrt.util.inherits(interfaces_T1_foo_Method, quark.reflect.Method);

function interfaces_T1_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T1_foo_Method.prototype.__init_fields__ = interfaces_T1_foo_Method__init_fields__;

function interfaces_T1_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T1; });
    (obj).foo();
    return null;
}
interfaces_T1_foo_Method.prototype.invoke = interfaces_T1_foo_Method_invoke;

function interfaces_T1_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T1_foo_Method.prototype._getClass = interfaces_T1_foo_Method__getClass;

function interfaces_T1_foo_Method__getField(name) {
    return null;
}
interfaces_T1_foo_Method.prototype._getField = interfaces_T1_foo_Method__getField;

function interfaces_T1_foo_Method__setField(name, value) {}
interfaces_T1_foo_Method.prototype._setField = interfaces_T1_foo_Method__setField;

// CLASS interfaces_T1_bar_Method

function interfaces_T1_bar_Method() {
    interfaces_T1_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.interfaces_T1_bar_Method = interfaces_T1_bar_Method;
_qrt.util.inherits(interfaces_T1_bar_Method, quark.reflect.Method);

function interfaces_T1_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T1_bar_Method.prototype.__init_fields__ = interfaces_T1_bar_Method__init_fields__;

function interfaces_T1_bar_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T1; });
    (obj).bar();
    return null;
}
interfaces_T1_bar_Method.prototype.invoke = interfaces_T1_bar_Method_invoke;

function interfaces_T1_bar_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T1_bar_Method.prototype._getClass = interfaces_T1_bar_Method__getClass;

function interfaces_T1_bar_Method__getField(name) {
    return null;
}
interfaces_T1_bar_Method.prototype._getField = interfaces_T1_bar_Method__getField;

function interfaces_T1_bar_Method__setField(name, value) {}
interfaces_T1_bar_Method.prototype._setField = interfaces_T1_bar_Method__setField;

// CLASS interfaces_T1

function interfaces_T1() {
    interfaces_T1.super_.call(this, "interfaces.T1");
    (this).name = "interfaces.T1";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_T1_foo_Method(), new interfaces_T1_bar_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_T1 = interfaces_T1;
_qrt.util.inherits(interfaces_T1, quark.reflect.Class);

function interfaces_T1__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_T1.prototype.__init_fields__ = interfaces_T1__init_fields__;
interfaces_T1.singleton = new interfaces_T1();
function interfaces_T1_construct(args) {
    return new interfaces.T1();
}
interfaces_T1.prototype.construct = interfaces_T1_construct;

function interfaces_T1_isAbstract() {
    return false;
}
interfaces_T1.prototype.isAbstract = interfaces_T1_isAbstract;

function interfaces_T1__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T1.prototype._getClass = interfaces_T1__getClass;

function interfaces_T1__getField(name) {
    return null;
}
interfaces_T1.prototype._getField = interfaces_T1__getField;

function interfaces_T1__setField(name, value) {}
interfaces_T1.prototype._setField = interfaces_T1__setField;


// CLASS interfaces_T2_foo_Method

function interfaces_T2_foo_Method() {
    interfaces_T2_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.interfaces_T2_foo_Method = interfaces_T2_foo_Method;
_qrt.util.inherits(interfaces_T2_foo_Method, quark.reflect.Method);

function interfaces_T2_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T2_foo_Method.prototype.__init_fields__ = interfaces_T2_foo_Method__init_fields__;

function interfaces_T2_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T2; });
    (obj).foo();
    return null;
}
interfaces_T2_foo_Method.prototype.invoke = interfaces_T2_foo_Method_invoke;

function interfaces_T2_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T2_foo_Method.prototype._getClass = interfaces_T2_foo_Method__getClass;

function interfaces_T2_foo_Method__getField(name) {
    return null;
}
interfaces_T2_foo_Method.prototype._getField = interfaces_T2_foo_Method__getField;

function interfaces_T2_foo_Method__setField(name, value) {}
interfaces_T2_foo_Method.prototype._setField = interfaces_T2_foo_Method__setField;

// CLASS interfaces_T2_bar_Method

function interfaces_T2_bar_Method() {
    interfaces_T2_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.interfaces_T2_bar_Method = interfaces_T2_bar_Method;
_qrt.util.inherits(interfaces_T2_bar_Method, quark.reflect.Method);

function interfaces_T2_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T2_bar_Method.prototype.__init_fields__ = interfaces_T2_bar_Method__init_fields__;

function interfaces_T2_bar_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T2; });
    (obj).bar();
    return null;
}
interfaces_T2_bar_Method.prototype.invoke = interfaces_T2_bar_Method_invoke;

function interfaces_T2_bar_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T2_bar_Method.prototype._getClass = interfaces_T2_bar_Method__getClass;

function interfaces_T2_bar_Method__getField(name) {
    return null;
}
interfaces_T2_bar_Method.prototype._getField = interfaces_T2_bar_Method__getField;

function interfaces_T2_bar_Method__setField(name, value) {}
interfaces_T2_bar_Method.prototype._setField = interfaces_T2_bar_Method__setField;

// CLASS interfaces_T2

function interfaces_T2() {
    interfaces_T2.super_.call(this, "interfaces.T2");
    (this).name = "interfaces.T2";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_T2_foo_Method(), new interfaces_T2_bar_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_T2 = interfaces_T2;
_qrt.util.inherits(interfaces_T2, quark.reflect.Class);

function interfaces_T2__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_T2.prototype.__init_fields__ = interfaces_T2__init_fields__;
interfaces_T2.singleton = new interfaces_T2();
function interfaces_T2_construct(args) {
    return new interfaces.T2();
}
interfaces_T2.prototype.construct = interfaces_T2_construct;

function interfaces_T2_isAbstract() {
    return false;
}
interfaces_T2.prototype.isAbstract = interfaces_T2_isAbstract;

function interfaces_T2__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T2.prototype._getClass = interfaces_T2__getClass;

function interfaces_T2__getField(name) {
    return null;
}
interfaces_T2.prototype._getField = interfaces_T2__getField;

function interfaces_T2__setField(name, value) {}
interfaces_T2.prototype._setField = interfaces_T2__setField;


// CLASS interfaces_T3_foo_Method

function interfaces_T3_foo_Method() {
    interfaces_T3_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.interfaces_T3_foo_Method = interfaces_T3_foo_Method;
_qrt.util.inherits(interfaces_T3_foo_Method, quark.reflect.Method);

function interfaces_T3_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T3_foo_Method.prototype.__init_fields__ = interfaces_T3_foo_Method__init_fields__;

function interfaces_T3_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T3; });
    (obj).foo();
    return null;
}
interfaces_T3_foo_Method.prototype.invoke = interfaces_T3_foo_Method_invoke;

function interfaces_T3_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T3_foo_Method.prototype._getClass = interfaces_T3_foo_Method__getClass;

function interfaces_T3_foo_Method__getField(name) {
    return null;
}
interfaces_T3_foo_Method.prototype._getField = interfaces_T3_foo_Method__getField;

function interfaces_T3_foo_Method__setField(name, value) {}
interfaces_T3_foo_Method.prototype._setField = interfaces_T3_foo_Method__setField;

// CLASS interfaces_T3_bar_Method

function interfaces_T3_bar_Method() {
    interfaces_T3_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.interfaces_T3_bar_Method = interfaces_T3_bar_Method;
_qrt.util.inherits(interfaces_T3_bar_Method, quark.reflect.Method);

function interfaces_T3_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T3_bar_Method.prototype.__init_fields__ = interfaces_T3_bar_Method__init_fields__;

function interfaces_T3_bar_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T3; });
    (obj).bar();
    return null;
}
interfaces_T3_bar_Method.prototype.invoke = interfaces_T3_bar_Method_invoke;

function interfaces_T3_bar_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T3_bar_Method.prototype._getClass = interfaces_T3_bar_Method__getClass;

function interfaces_T3_bar_Method__getField(name) {
    return null;
}
interfaces_T3_bar_Method.prototype._getField = interfaces_T3_bar_Method__getField;

function interfaces_T3_bar_Method__setField(name, value) {}
interfaces_T3_bar_Method.prototype._setField = interfaces_T3_bar_Method__setField;

// CLASS interfaces_T3

function interfaces_T3() {
    interfaces_T3.super_.call(this, "interfaces.T3");
    (this).name = "interfaces.T3";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_T3_foo_Method(), new interfaces_T3_bar_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_T3 = interfaces_T3;
_qrt.util.inherits(interfaces_T3, quark.reflect.Class);

function interfaces_T3__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_T3.prototype.__init_fields__ = interfaces_T3__init_fields__;
interfaces_T3.singleton = new interfaces_T3();
function interfaces_T3_construct(args) {
    return new interfaces.T3();
}
interfaces_T3.prototype.construct = interfaces_T3_construct;

function interfaces_T3_isAbstract() {
    return false;
}
interfaces_T3.prototype.isAbstract = interfaces_T3_isAbstract;

function interfaces_T3__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T3.prototype._getClass = interfaces_T3__getClass;

function interfaces_T3__getField(name) {
    return null;
}
interfaces_T3.prototype._getField = interfaces_T3__getField;

function interfaces_T3__setField(name, value) {}
interfaces_T3.prototype._setField = interfaces_T3__setField;


// CLASS interfaces_T4_foo_Method

function interfaces_T4_foo_Method() {
    interfaces_T4_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.interfaces_T4_foo_Method = interfaces_T4_foo_Method;
_qrt.util.inherits(interfaces_T4_foo_Method, quark.reflect.Method);

function interfaces_T4_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T4_foo_Method.prototype.__init_fields__ = interfaces_T4_foo_Method__init_fields__;

function interfaces_T4_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T4; });
    (obj).foo();
    return null;
}
interfaces_T4_foo_Method.prototype.invoke = interfaces_T4_foo_Method_invoke;

function interfaces_T4_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T4_foo_Method.prototype._getClass = interfaces_T4_foo_Method__getClass;

function interfaces_T4_foo_Method__getField(name) {
    return null;
}
interfaces_T4_foo_Method.prototype._getField = interfaces_T4_foo_Method__getField;

function interfaces_T4_foo_Method__setField(name, value) {}
interfaces_T4_foo_Method.prototype._setField = interfaces_T4_foo_Method__setField;

// CLASS interfaces_T4_bar_Method

function interfaces_T4_bar_Method() {
    interfaces_T4_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.interfaces_T4_bar_Method = interfaces_T4_bar_Method;
_qrt.util.inherits(interfaces_T4_bar_Method, quark.reflect.Method);

function interfaces_T4_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T4_bar_Method.prototype.__init_fields__ = interfaces_T4_bar_Method__init_fields__;

function interfaces_T4_bar_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T4; });
    (obj).bar();
    return null;
}
interfaces_T4_bar_Method.prototype.invoke = interfaces_T4_bar_Method_invoke;

function interfaces_T4_bar_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T4_bar_Method.prototype._getClass = interfaces_T4_bar_Method__getClass;

function interfaces_T4_bar_Method__getField(name) {
    return null;
}
interfaces_T4_bar_Method.prototype._getField = interfaces_T4_bar_Method__getField;

function interfaces_T4_bar_Method__setField(name, value) {}
interfaces_T4_bar_Method.prototype._setField = interfaces_T4_bar_Method__setField;

// CLASS interfaces_T4

function interfaces_T4() {
    interfaces_T4.super_.call(this, "interfaces.T4");
    (this).name = "interfaces.T4";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_T4_foo_Method(), new interfaces_T4_bar_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_T4 = interfaces_T4;
_qrt.util.inherits(interfaces_T4, quark.reflect.Class);

function interfaces_T4__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_T4.prototype.__init_fields__ = interfaces_T4__init_fields__;
interfaces_T4.singleton = new interfaces_T4();
function interfaces_T4_construct(args) {
    return new interfaces.T4();
}
interfaces_T4.prototype.construct = interfaces_T4_construct;

function interfaces_T4_isAbstract() {
    return false;
}
interfaces_T4.prototype.isAbstract = interfaces_T4_isAbstract;

function interfaces_T4__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T4.prototype._getClass = interfaces_T4__getClass;

function interfaces_T4__getField(name) {
    return null;
}
interfaces_T4.prototype._getField = interfaces_T4__getField;

function interfaces_T4__setField(name, value) {}
interfaces_T4.prototype._setField = interfaces_T4__setField;


// CLASS interfaces_T5_foo_Method

function interfaces_T5_foo_Method() {
    interfaces_T5_foo_Method.super_.call(this, "quark.void", "foo", []);
}
exports.interfaces_T5_foo_Method = interfaces_T5_foo_Method;
_qrt.util.inherits(interfaces_T5_foo_Method, quark.reflect.Method);

function interfaces_T5_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T5_foo_Method.prototype.__init_fields__ = interfaces_T5_foo_Method__init_fields__;

function interfaces_T5_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T5; });
    (obj).foo();
    return null;
}
interfaces_T5_foo_Method.prototype.invoke = interfaces_T5_foo_Method_invoke;

function interfaces_T5_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T5_foo_Method.prototype._getClass = interfaces_T5_foo_Method__getClass;

function interfaces_T5_foo_Method__getField(name) {
    return null;
}
interfaces_T5_foo_Method.prototype._getField = interfaces_T5_foo_Method__getField;

function interfaces_T5_foo_Method__setField(name, value) {}
interfaces_T5_foo_Method.prototype._setField = interfaces_T5_foo_Method__setField;

// CLASS interfaces_T5_bar_Method

function interfaces_T5_bar_Method() {
    interfaces_T5_bar_Method.super_.call(this, "quark.void", "bar", []);
}
exports.interfaces_T5_bar_Method = interfaces_T5_bar_Method;
_qrt.util.inherits(interfaces_T5_bar_Method, quark.reflect.Method);

function interfaces_T5_bar_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_T5_bar_Method.prototype.__init_fields__ = interfaces_T5_bar_Method__init_fields__;

function interfaces_T5_bar_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.T5; });
    (obj).bar();
    return null;
}
interfaces_T5_bar_Method.prototype.invoke = interfaces_T5_bar_Method_invoke;

function interfaces_T5_bar_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T5_bar_Method.prototype._getClass = interfaces_T5_bar_Method__getClass;

function interfaces_T5_bar_Method__getField(name) {
    return null;
}
interfaces_T5_bar_Method.prototype._getField = interfaces_T5_bar_Method__getField;

function interfaces_T5_bar_Method__setField(name, value) {}
interfaces_T5_bar_Method.prototype._setField = interfaces_T5_bar_Method__setField;

// CLASS interfaces_T5

function interfaces_T5() {
    interfaces_T5.super_.call(this, "interfaces.T5");
    (this).name = "interfaces.T5";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_T5_foo_Method(), new interfaces_T5_bar_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_T5 = interfaces_T5;
_qrt.util.inherits(interfaces_T5, quark.reflect.Class);

function interfaces_T5__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_T5.prototype.__init_fields__ = interfaces_T5__init_fields__;
interfaces_T5.singleton = new interfaces_T5();
function interfaces_T5_construct(args) {
    return new interfaces.T5();
}
interfaces_T5.prototype.construct = interfaces_T5_construct;

function interfaces_T5_isAbstract() {
    return false;
}
interfaces_T5.prototype.isAbstract = interfaces_T5_isAbstract;

function interfaces_T5__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_T5.prototype._getClass = interfaces_T5__getClass;

function interfaces_T5__getField(name) {
    return null;
}
interfaces_T5.prototype._getField = interfaces_T5__getField;

function interfaces_T5__setField(name, value) {}
interfaces_T5.prototype._setField = interfaces_T5__setField;


// CLASS interfaces_Foo_m1_Method

function interfaces_Foo_m1_Method() {
    interfaces_Foo_m1_Method.super_.call(this, "quark.void", "m1", []);
}
exports.interfaces_Foo_m1_Method = interfaces_Foo_m1_Method;
_qrt.util.inherits(interfaces_Foo_m1_Method, quark.reflect.Method);

function interfaces_Foo_m1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_Foo_m1_Method.prototype.__init_fields__ = interfaces_Foo_m1_Method__init_fields__;

function interfaces_Foo_m1_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.Foo; });
    (obj).m1();
    return null;
}
interfaces_Foo_m1_Method.prototype.invoke = interfaces_Foo_m1_Method_invoke;

function interfaces_Foo_m1_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Foo_m1_Method.prototype._getClass = interfaces_Foo_m1_Method__getClass;

function interfaces_Foo_m1_Method__getField(name) {
    return null;
}
interfaces_Foo_m1_Method.prototype._getField = interfaces_Foo_m1_Method__getField;

function interfaces_Foo_m1_Method__setField(name, value) {}
interfaces_Foo_m1_Method.prototype._setField = interfaces_Foo_m1_Method__setField;

// CLASS interfaces_Foo_m2_Method

function interfaces_Foo_m2_Method() {
    interfaces_Foo_m2_Method.super_.call(this, "quark.void", "m2", ["quark.int"]);
}
exports.interfaces_Foo_m2_Method = interfaces_Foo_m2_Method;
_qrt.util.inherits(interfaces_Foo_m2_Method, quark.reflect.Method);

function interfaces_Foo_m2_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_Foo_m2_Method.prototype.__init_fields__ = interfaces_Foo_m2_Method__init_fields__;

function interfaces_Foo_m2_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.Foo; });
    (obj).m2(_qrt.cast((args)[0], function () { return Number; }));
    return null;
}
interfaces_Foo_m2_Method.prototype.invoke = interfaces_Foo_m2_Method_invoke;

function interfaces_Foo_m2_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Foo_m2_Method.prototype._getClass = interfaces_Foo_m2_Method__getClass;

function interfaces_Foo_m2_Method__getField(name) {
    return null;
}
interfaces_Foo_m2_Method.prototype._getField = interfaces_Foo_m2_Method__getField;

function interfaces_Foo_m2_Method__setField(name, value) {}
interfaces_Foo_m2_Method.prototype._setField = interfaces_Foo_m2_Method__setField;

// CLASS interfaces_Foo_m3_Method

function interfaces_Foo_m3_Method() {
    interfaces_Foo_m3_Method.super_.call(this, "quark.void", "m3", ["quark.List<quark.String>"]);
}
exports.interfaces_Foo_m3_Method = interfaces_Foo_m3_Method;
_qrt.util.inherits(interfaces_Foo_m3_Method, quark.reflect.Method);

function interfaces_Foo_m3_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_Foo_m3_Method.prototype.__init_fields__ = interfaces_Foo_m3_Method__init_fields__;

function interfaces_Foo_m3_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.Foo; });
    (obj).m3(_qrt.cast((args)[0], function () { return Array; }));
    return null;
}
interfaces_Foo_m3_Method.prototype.invoke = interfaces_Foo_m3_Method_invoke;

function interfaces_Foo_m3_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Foo_m3_Method.prototype._getClass = interfaces_Foo_m3_Method__getClass;

function interfaces_Foo_m3_Method__getField(name) {
    return null;
}
interfaces_Foo_m3_Method.prototype._getField = interfaces_Foo_m3_Method__getField;

function interfaces_Foo_m3_Method__setField(name, value) {}
interfaces_Foo_m3_Method.prototype._setField = interfaces_Foo_m3_Method__setField;

// CLASS interfaces_Foo

function interfaces_Foo() {
    interfaces_Foo.super_.call(this, "interfaces.Foo");
    (this).name = "interfaces.Foo";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_Foo_m1_Method(), new interfaces_Foo_m2_Method(), new interfaces_Foo_m3_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_Foo = interfaces_Foo;
_qrt.util.inherits(interfaces_Foo, quark.reflect.Class);

function interfaces_Foo__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_Foo.prototype.__init_fields__ = interfaces_Foo__init_fields__;
interfaces_Foo.singleton = new interfaces_Foo();
function interfaces_Foo_construct(args) {
    return null;
}
interfaces_Foo.prototype.construct = interfaces_Foo_construct;

function interfaces_Foo_isAbstract() {
    return true;
}
interfaces_Foo.prototype.isAbstract = interfaces_Foo_isAbstract;

function interfaces_Foo__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Foo.prototype._getClass = interfaces_Foo__getClass;

function interfaces_Foo__getField(name) {
    return null;
}
interfaces_Foo.prototype._getField = interfaces_Foo__getField;

function interfaces_Foo__setField(name, value) {}
interfaces_Foo.prototype._setField = interfaces_Foo__setField;


// CLASS interfaces_Bar_quark_Object__m1_Method

function interfaces_Bar_quark_Object__m1_Method() {
    interfaces_Bar_quark_Object__m1_Method.super_.call(this, "quark.void", "m1", []);
}
exports.interfaces_Bar_quark_Object__m1_Method = interfaces_Bar_quark_Object__m1_Method;
_qrt.util.inherits(interfaces_Bar_quark_Object__m1_Method, quark.reflect.Method);

function interfaces_Bar_quark_Object__m1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_Bar_quark_Object__m1_Method.prototype.__init_fields__ = interfaces_Bar_quark_Object__m1_Method__init_fields__;

function interfaces_Bar_quark_Object__m1_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.Bar; });
    (obj).m1();
    return null;
}
interfaces_Bar_quark_Object__m1_Method.prototype.invoke = interfaces_Bar_quark_Object__m1_Method_invoke;

function interfaces_Bar_quark_Object__m1_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Bar_quark_Object__m1_Method.prototype._getClass = interfaces_Bar_quark_Object__m1_Method__getClass;

function interfaces_Bar_quark_Object__m1_Method__getField(name) {
    return null;
}
interfaces_Bar_quark_Object__m1_Method.prototype._getField = interfaces_Bar_quark_Object__m1_Method__getField;

function interfaces_Bar_quark_Object__m1_Method__setField(name, value) {}
interfaces_Bar_quark_Object__m1_Method.prototype._setField = interfaces_Bar_quark_Object__m1_Method__setField;

// CLASS interfaces_Bar_quark_Object__m2_Method

function interfaces_Bar_quark_Object__m2_Method() {
    interfaces_Bar_quark_Object__m2_Method.super_.call(this, "quark.void", "m2", ["quark.Object"]);
}
exports.interfaces_Bar_quark_Object__m2_Method = interfaces_Bar_quark_Object__m2_Method;
_qrt.util.inherits(interfaces_Bar_quark_Object__m2_Method, quark.reflect.Method);

function interfaces_Bar_quark_Object__m2_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_Bar_quark_Object__m2_Method.prototype.__init_fields__ = interfaces_Bar_quark_Object__m2_Method__init_fields__;

function interfaces_Bar_quark_Object__m2_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.Bar; });
    (obj).m2((args)[0]);
    return null;
}
interfaces_Bar_quark_Object__m2_Method.prototype.invoke = interfaces_Bar_quark_Object__m2_Method_invoke;

function interfaces_Bar_quark_Object__m2_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Bar_quark_Object__m2_Method.prototype._getClass = interfaces_Bar_quark_Object__m2_Method__getClass;

function interfaces_Bar_quark_Object__m2_Method__getField(name) {
    return null;
}
interfaces_Bar_quark_Object__m2_Method.prototype._getField = interfaces_Bar_quark_Object__m2_Method__getField;

function interfaces_Bar_quark_Object__m2_Method__setField(name, value) {}
interfaces_Bar_quark_Object__m2_Method.prototype._setField = interfaces_Bar_quark_Object__m2_Method__setField;

// CLASS interfaces_Bar_quark_Object__m3_Method

function interfaces_Bar_quark_Object__m3_Method() {
    interfaces_Bar_quark_Object__m3_Method.super_.call(this, "quark.void", "m3", ["quark.List<quark.Object>"]);
}
exports.interfaces_Bar_quark_Object__m3_Method = interfaces_Bar_quark_Object__m3_Method;
_qrt.util.inherits(interfaces_Bar_quark_Object__m3_Method, quark.reflect.Method);

function interfaces_Bar_quark_Object__m3_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_Bar_quark_Object__m3_Method.prototype.__init_fields__ = interfaces_Bar_quark_Object__m3_Method__init_fields__;

function interfaces_Bar_quark_Object__m3_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.Bar; });
    (obj).m3(_qrt.cast((args)[0], function () { return Array; }));
    return null;
}
interfaces_Bar_quark_Object__m3_Method.prototype.invoke = interfaces_Bar_quark_Object__m3_Method_invoke;

function interfaces_Bar_quark_Object__m3_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Bar_quark_Object__m3_Method.prototype._getClass = interfaces_Bar_quark_Object__m3_Method__getClass;

function interfaces_Bar_quark_Object__m3_Method__getField(name) {
    return null;
}
interfaces_Bar_quark_Object__m3_Method.prototype._getField = interfaces_Bar_quark_Object__m3_Method__getField;

function interfaces_Bar_quark_Object__m3_Method__setField(name, value) {}
interfaces_Bar_quark_Object__m3_Method.prototype._setField = interfaces_Bar_quark_Object__m3_Method__setField;

// CLASS interfaces_Bar_quark_Object_

function interfaces_Bar_quark_Object_() {
    interfaces_Bar_quark_Object_.super_.call(this, "interfaces.Bar<quark.Object>");
    (this).name = "interfaces.Bar";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [new interfaces_Bar_quark_Object__m1_Method(), new interfaces_Bar_quark_Object__m2_Method(), new interfaces_Bar_quark_Object__m3_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_Bar_quark_Object_ = interfaces_Bar_quark_Object_;
_qrt.util.inherits(interfaces_Bar_quark_Object_, quark.reflect.Class);

function interfaces_Bar_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_Bar_quark_Object_.prototype.__init_fields__ = interfaces_Bar_quark_Object___init_fields__;
interfaces_Bar_quark_Object_.singleton = new interfaces_Bar_quark_Object_();
function interfaces_Bar_quark_Object__construct(args) {
    return null;
}
interfaces_Bar_quark_Object_.prototype.construct = interfaces_Bar_quark_Object__construct;

function interfaces_Bar_quark_Object__isAbstract() {
    return true;
}
interfaces_Bar_quark_Object_.prototype.isAbstract = interfaces_Bar_quark_Object__isAbstract;

function interfaces_Bar_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Bar_quark_Object_.prototype._getClass = interfaces_Bar_quark_Object___getClass;

function interfaces_Bar_quark_Object___getField(name) {
    return null;
}
interfaces_Bar_quark_Object_.prototype._getField = interfaces_Bar_quark_Object___getField;

function interfaces_Bar_quark_Object___setField(name, value) {}
interfaces_Bar_quark_Object_.prototype._setField = interfaces_Bar_quark_Object___setField;


// CLASS interfaces_Baz_m2_Method

function interfaces_Baz_m2_Method() {
    interfaces_Baz_m2_Method.super_.call(this, "quark.void", "m2", ["quark.int"]);
}
exports.interfaces_Baz_m2_Method = interfaces_Baz_m2_Method;
_qrt.util.inherits(interfaces_Baz_m2_Method, quark.reflect.Method);

function interfaces_Baz_m2_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_Baz_m2_Method.prototype.__init_fields__ = interfaces_Baz_m2_Method__init_fields__;

function interfaces_Baz_m2_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.Baz; });
    (obj).m2(_qrt.cast((args)[0], function () { return Number; }));
    return null;
}
interfaces_Baz_m2_Method.prototype.invoke = interfaces_Baz_m2_Method_invoke;

function interfaces_Baz_m2_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Baz_m2_Method.prototype._getClass = interfaces_Baz_m2_Method__getClass;

function interfaces_Baz_m2_Method__getField(name) {
    return null;
}
interfaces_Baz_m2_Method.prototype._getField = interfaces_Baz_m2_Method__getField;

function interfaces_Baz_m2_Method__setField(name, value) {}
interfaces_Baz_m2_Method.prototype._setField = interfaces_Baz_m2_Method__setField;

// CLASS interfaces_Baz_m1_Method

function interfaces_Baz_m1_Method() {
    interfaces_Baz_m1_Method.super_.call(this, "quark.void", "m1", []);
}
exports.interfaces_Baz_m1_Method = interfaces_Baz_m1_Method;
_qrt.util.inherits(interfaces_Baz_m1_Method, quark.reflect.Method);

function interfaces_Baz_m1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_Baz_m1_Method.prototype.__init_fields__ = interfaces_Baz_m1_Method__init_fields__;

function interfaces_Baz_m1_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.Baz; });
    (obj).m1();
    return null;
}
interfaces_Baz_m1_Method.prototype.invoke = interfaces_Baz_m1_Method_invoke;

function interfaces_Baz_m1_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Baz_m1_Method.prototype._getClass = interfaces_Baz_m1_Method__getClass;

function interfaces_Baz_m1_Method__getField(name) {
    return null;
}
interfaces_Baz_m1_Method.prototype._getField = interfaces_Baz_m1_Method__getField;

function interfaces_Baz_m1_Method__setField(name, value) {}
interfaces_Baz_m1_Method.prototype._setField = interfaces_Baz_m1_Method__setField;

// CLASS interfaces_Baz_m3_Method

function interfaces_Baz_m3_Method() {
    interfaces_Baz_m3_Method.super_.call(this, "quark.void", "m3", ["quark.List<quark.String>"]);
}
exports.interfaces_Baz_m3_Method = interfaces_Baz_m3_Method;
_qrt.util.inherits(interfaces_Baz_m3_Method, quark.reflect.Method);

function interfaces_Baz_m3_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_Baz_m3_Method.prototype.__init_fields__ = interfaces_Baz_m3_Method__init_fields__;

function interfaces_Baz_m3_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.Baz; });
    (obj).m3(_qrt.cast((args)[0], function () { return Array; }));
    return null;
}
interfaces_Baz_m3_Method.prototype.invoke = interfaces_Baz_m3_Method_invoke;

function interfaces_Baz_m3_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Baz_m3_Method.prototype._getClass = interfaces_Baz_m3_Method__getClass;

function interfaces_Baz_m3_Method__getField(name) {
    return null;
}
interfaces_Baz_m3_Method.prototype._getField = interfaces_Baz_m3_Method__getField;

function interfaces_Baz_m3_Method__setField(name, value) {}
interfaces_Baz_m3_Method.prototype._setField = interfaces_Baz_m3_Method__setField;

// CLASS interfaces_Baz

function interfaces_Baz() {
    interfaces_Baz.super_.call(this, "interfaces.Baz");
    (this).name = "interfaces.Baz";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_Baz_m2_Method(), new interfaces_Baz_m1_Method(), new interfaces_Baz_m3_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_Baz = interfaces_Baz;
_qrt.util.inherits(interfaces_Baz, quark.reflect.Class);

function interfaces_Baz__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_Baz.prototype.__init_fields__ = interfaces_Baz__init_fields__;
interfaces_Baz.singleton = new interfaces_Baz();
function interfaces_Baz_construct(args) {
    return new interfaces.Baz();
}
interfaces_Baz.prototype.construct = interfaces_Baz_construct;

function interfaces_Baz_isAbstract() {
    return false;
}
interfaces_Baz.prototype.isAbstract = interfaces_Baz_isAbstract;

function interfaces_Baz__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_Baz.prototype._getClass = interfaces_Baz__getClass;

function interfaces_Baz__getField(name) {
    return null;
}
interfaces_Baz.prototype._getField = interfaces_Baz__getField;

function interfaces_Baz__setField(name, value) {}
interfaces_Baz.prototype._setField = interfaces_Baz__setField;


// CLASS interfaces_RazBar_m1_Method

function interfaces_RazBar_m1_Method() {
    interfaces_RazBar_m1_Method.super_.call(this, "quark.void", "m1", []);
}
exports.interfaces_RazBar_m1_Method = interfaces_RazBar_m1_Method;
_qrt.util.inherits(interfaces_RazBar_m1_Method, quark.reflect.Method);

function interfaces_RazBar_m1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_RazBar_m1_Method.prototype.__init_fields__ = interfaces_RazBar_m1_Method__init_fields__;

function interfaces_RazBar_m1_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.RazBar; });
    (obj).m1();
    return null;
}
interfaces_RazBar_m1_Method.prototype.invoke = interfaces_RazBar_m1_Method_invoke;

function interfaces_RazBar_m1_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_RazBar_m1_Method.prototype._getClass = interfaces_RazBar_m1_Method__getClass;

function interfaces_RazBar_m1_Method__getField(name) {
    return null;
}
interfaces_RazBar_m1_Method.prototype._getField = interfaces_RazBar_m1_Method__getField;

function interfaces_RazBar_m1_Method__setField(name, value) {}
interfaces_RazBar_m1_Method.prototype._setField = interfaces_RazBar_m1_Method__setField;

// CLASS interfaces_RazBar_m2_Method

function interfaces_RazBar_m2_Method() {
    interfaces_RazBar_m2_Method.super_.call(this, "quark.void", "m2", ["quark.String"]);
}
exports.interfaces_RazBar_m2_Method = interfaces_RazBar_m2_Method;
_qrt.util.inherits(interfaces_RazBar_m2_Method, quark.reflect.Method);

function interfaces_RazBar_m2_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_RazBar_m2_Method.prototype.__init_fields__ = interfaces_RazBar_m2_Method__init_fields__;

function interfaces_RazBar_m2_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.RazBar; });
    (obj).m2(_qrt.cast((args)[0], function () { return String; }));
    return null;
}
interfaces_RazBar_m2_Method.prototype.invoke = interfaces_RazBar_m2_Method_invoke;

function interfaces_RazBar_m2_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_RazBar_m2_Method.prototype._getClass = interfaces_RazBar_m2_Method__getClass;

function interfaces_RazBar_m2_Method__getField(name) {
    return null;
}
interfaces_RazBar_m2_Method.prototype._getField = interfaces_RazBar_m2_Method__getField;

function interfaces_RazBar_m2_Method__setField(name, value) {}
interfaces_RazBar_m2_Method.prototype._setField = interfaces_RazBar_m2_Method__setField;

// CLASS interfaces_RazBar_m3_Method

function interfaces_RazBar_m3_Method() {
    interfaces_RazBar_m3_Method.super_.call(this, "quark.void", "m3", ["quark.List<quark.Object>"]);
}
exports.interfaces_RazBar_m3_Method = interfaces_RazBar_m3_Method;
_qrt.util.inherits(interfaces_RazBar_m3_Method, quark.reflect.Method);

function interfaces_RazBar_m3_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_RazBar_m3_Method.prototype.__init_fields__ = interfaces_RazBar_m3_Method__init_fields__;

function interfaces_RazBar_m3_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.RazBar; });
    (obj).m3(_qrt.cast((args)[0], function () { return Array; }));
    return null;
}
interfaces_RazBar_m3_Method.prototype.invoke = interfaces_RazBar_m3_Method_invoke;

function interfaces_RazBar_m3_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_RazBar_m3_Method.prototype._getClass = interfaces_RazBar_m3_Method__getClass;

function interfaces_RazBar_m3_Method__getField(name) {
    return null;
}
interfaces_RazBar_m3_Method.prototype._getField = interfaces_RazBar_m3_Method__getField;

function interfaces_RazBar_m3_Method__setField(name, value) {}
interfaces_RazBar_m3_Method.prototype._setField = interfaces_RazBar_m3_Method__setField;

// CLASS interfaces_RazBar

function interfaces_RazBar() {
    interfaces_RazBar.super_.call(this, "interfaces.RazBar");
    (this).name = "interfaces.RazBar";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_RazBar_m1_Method(), new interfaces_RazBar_m2_Method(), new interfaces_RazBar_m3_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_RazBar = interfaces_RazBar;
_qrt.util.inherits(interfaces_RazBar, quark.reflect.Class);

function interfaces_RazBar__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_RazBar.prototype.__init_fields__ = interfaces_RazBar__init_fields__;
interfaces_RazBar.singleton = new interfaces_RazBar();
function interfaces_RazBar_construct(args) {
    return null;
}
interfaces_RazBar.prototype.construct = interfaces_RazBar_construct;

function interfaces_RazBar_isAbstract() {
    return true;
}
interfaces_RazBar.prototype.isAbstract = interfaces_RazBar_isAbstract;

function interfaces_RazBar__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_RazBar.prototype._getClass = interfaces_RazBar__getClass;

function interfaces_RazBar__getField(name) {
    return null;
}
interfaces_RazBar.prototype._getField = interfaces_RazBar__getField;

function interfaces_RazBar__setField(name, value) {}
interfaces_RazBar.prototype._setField = interfaces_RazBar__setField;


// CLASS interfaces_RazFaz_quark_Object__m1_Method

function interfaces_RazFaz_quark_Object__m1_Method() {
    interfaces_RazFaz_quark_Object__m1_Method.super_.call(this, "quark.void", "m1", []);
}
exports.interfaces_RazFaz_quark_Object__m1_Method = interfaces_RazFaz_quark_Object__m1_Method;
_qrt.util.inherits(interfaces_RazFaz_quark_Object__m1_Method, quark.reflect.Method);

function interfaces_RazFaz_quark_Object__m1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_RazFaz_quark_Object__m1_Method.prototype.__init_fields__ = interfaces_RazFaz_quark_Object__m1_Method__init_fields__;

function interfaces_RazFaz_quark_Object__m1_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.RazFaz; });
    (obj).m1();
    return null;
}
interfaces_RazFaz_quark_Object__m1_Method.prototype.invoke = interfaces_RazFaz_quark_Object__m1_Method_invoke;

function interfaces_RazFaz_quark_Object__m1_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_RazFaz_quark_Object__m1_Method.prototype._getClass = interfaces_RazFaz_quark_Object__m1_Method__getClass;

function interfaces_RazFaz_quark_Object__m1_Method__getField(name) {
    return null;
}
interfaces_RazFaz_quark_Object__m1_Method.prototype._getField = interfaces_RazFaz_quark_Object__m1_Method__getField;

function interfaces_RazFaz_quark_Object__m1_Method__setField(name, value) {}
interfaces_RazFaz_quark_Object__m1_Method.prototype._setField = interfaces_RazFaz_quark_Object__m1_Method__setField;

// CLASS interfaces_RazFaz_quark_Object__m2_Method

function interfaces_RazFaz_quark_Object__m2_Method() {
    interfaces_RazFaz_quark_Object__m2_Method.super_.call(this, "quark.void", "m2", ["quark.Object"]);
}
exports.interfaces_RazFaz_quark_Object__m2_Method = interfaces_RazFaz_quark_Object__m2_Method;
_qrt.util.inherits(interfaces_RazFaz_quark_Object__m2_Method, quark.reflect.Method);

function interfaces_RazFaz_quark_Object__m2_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_RazFaz_quark_Object__m2_Method.prototype.__init_fields__ = interfaces_RazFaz_quark_Object__m2_Method__init_fields__;

function interfaces_RazFaz_quark_Object__m2_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.RazFaz; });
    (obj).m2((args)[0]);
    return null;
}
interfaces_RazFaz_quark_Object__m2_Method.prototype.invoke = interfaces_RazFaz_quark_Object__m2_Method_invoke;

function interfaces_RazFaz_quark_Object__m2_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_RazFaz_quark_Object__m2_Method.prototype._getClass = interfaces_RazFaz_quark_Object__m2_Method__getClass;

function interfaces_RazFaz_quark_Object__m2_Method__getField(name) {
    return null;
}
interfaces_RazFaz_quark_Object__m2_Method.prototype._getField = interfaces_RazFaz_quark_Object__m2_Method__getField;

function interfaces_RazFaz_quark_Object__m2_Method__setField(name, value) {}
interfaces_RazFaz_quark_Object__m2_Method.prototype._setField = interfaces_RazFaz_quark_Object__m2_Method__setField;

// CLASS interfaces_RazFaz_quark_Object__m3_Method

function interfaces_RazFaz_quark_Object__m3_Method() {
    interfaces_RazFaz_quark_Object__m3_Method.super_.call(this, "quark.void", "m3", ["quark.List<quark.Object>"]);
}
exports.interfaces_RazFaz_quark_Object__m3_Method = interfaces_RazFaz_quark_Object__m3_Method;
_qrt.util.inherits(interfaces_RazFaz_quark_Object__m3_Method, quark.reflect.Method);

function interfaces_RazFaz_quark_Object__m3_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_RazFaz_quark_Object__m3_Method.prototype.__init_fields__ = interfaces_RazFaz_quark_Object__m3_Method__init_fields__;

function interfaces_RazFaz_quark_Object__m3_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.RazFaz; });
    (obj).m3(_qrt.cast((args)[0], function () { return Array; }));
    return null;
}
interfaces_RazFaz_quark_Object__m3_Method.prototype.invoke = interfaces_RazFaz_quark_Object__m3_Method_invoke;

function interfaces_RazFaz_quark_Object__m3_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_RazFaz_quark_Object__m3_Method.prototype._getClass = interfaces_RazFaz_quark_Object__m3_Method__getClass;

function interfaces_RazFaz_quark_Object__m3_Method__getField(name) {
    return null;
}
interfaces_RazFaz_quark_Object__m3_Method.prototype._getField = interfaces_RazFaz_quark_Object__m3_Method__getField;

function interfaces_RazFaz_quark_Object__m3_Method__setField(name, value) {}
interfaces_RazFaz_quark_Object__m3_Method.prototype._setField = interfaces_RazFaz_quark_Object__m3_Method__setField;

// CLASS interfaces_RazFaz_quark_Object_

function interfaces_RazFaz_quark_Object_() {
    interfaces_RazFaz_quark_Object_.super_.call(this, "interfaces.RazFaz<quark.Object>");
    (this).name = "interfaces.RazFaz";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [new interfaces_RazFaz_quark_Object__m1_Method(), new interfaces_RazFaz_quark_Object__m2_Method(), new interfaces_RazFaz_quark_Object__m3_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_RazFaz_quark_Object_ = interfaces_RazFaz_quark_Object_;
_qrt.util.inherits(interfaces_RazFaz_quark_Object_, quark.reflect.Class);

function interfaces_RazFaz_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_RazFaz_quark_Object_.prototype.__init_fields__ = interfaces_RazFaz_quark_Object___init_fields__;
interfaces_RazFaz_quark_Object_.singleton = new interfaces_RazFaz_quark_Object_();
function interfaces_RazFaz_quark_Object__construct(args) {
    return null;
}
interfaces_RazFaz_quark_Object_.prototype.construct = interfaces_RazFaz_quark_Object__construct;

function interfaces_RazFaz_quark_Object__isAbstract() {
    return true;
}
interfaces_RazFaz_quark_Object_.prototype.isAbstract = interfaces_RazFaz_quark_Object__isAbstract;

function interfaces_RazFaz_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_RazFaz_quark_Object_.prototype._getClass = interfaces_RazFaz_quark_Object___getClass;

function interfaces_RazFaz_quark_Object___getField(name) {
    return null;
}
interfaces_RazFaz_quark_Object_.prototype._getField = interfaces_RazFaz_quark_Object___getField;

function interfaces_RazFaz_quark_Object___setField(name, value) {}
interfaces_RazFaz_quark_Object_.prototype._setField = interfaces_RazFaz_quark_Object___setField;


// CLASS interfaces_BazBar_m1_Method

function interfaces_BazBar_m1_Method() {
    interfaces_BazBar_m1_Method.super_.call(this, "quark.void", "m1", []);
}
exports.interfaces_BazBar_m1_Method = interfaces_BazBar_m1_Method;
_qrt.util.inherits(interfaces_BazBar_m1_Method, quark.reflect.Method);

function interfaces_BazBar_m1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_BazBar_m1_Method.prototype.__init_fields__ = interfaces_BazBar_m1_Method__init_fields__;

function interfaces_BazBar_m1_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.BazBar; });
    (obj).m1();
    return null;
}
interfaces_BazBar_m1_Method.prototype.invoke = interfaces_BazBar_m1_Method_invoke;

function interfaces_BazBar_m1_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_BazBar_m1_Method.prototype._getClass = interfaces_BazBar_m1_Method__getClass;

function interfaces_BazBar_m1_Method__getField(name) {
    return null;
}
interfaces_BazBar_m1_Method.prototype._getField = interfaces_BazBar_m1_Method__getField;

function interfaces_BazBar_m1_Method__setField(name, value) {}
interfaces_BazBar_m1_Method.prototype._setField = interfaces_BazBar_m1_Method__setField;

// CLASS interfaces_BazBar_m2_Method

function interfaces_BazBar_m2_Method() {
    interfaces_BazBar_m2_Method.super_.call(this, "quark.void", "m2", ["quark.String"]);
}
exports.interfaces_BazBar_m2_Method = interfaces_BazBar_m2_Method;
_qrt.util.inherits(interfaces_BazBar_m2_Method, quark.reflect.Method);

function interfaces_BazBar_m2_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_BazBar_m2_Method.prototype.__init_fields__ = interfaces_BazBar_m2_Method__init_fields__;

function interfaces_BazBar_m2_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.BazBar; });
    (obj).m2(_qrt.cast((args)[0], function () { return String; }));
    return null;
}
interfaces_BazBar_m2_Method.prototype.invoke = interfaces_BazBar_m2_Method_invoke;

function interfaces_BazBar_m2_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_BazBar_m2_Method.prototype._getClass = interfaces_BazBar_m2_Method__getClass;

function interfaces_BazBar_m2_Method__getField(name) {
    return null;
}
interfaces_BazBar_m2_Method.prototype._getField = interfaces_BazBar_m2_Method__getField;

function interfaces_BazBar_m2_Method__setField(name, value) {}
interfaces_BazBar_m2_Method.prototype._setField = interfaces_BazBar_m2_Method__setField;

// CLASS interfaces_BazBar_m3_Method

function interfaces_BazBar_m3_Method() {
    interfaces_BazBar_m3_Method.super_.call(this, "quark.void", "m3", ["quark.List<quark.String>"]);
}
exports.interfaces_BazBar_m3_Method = interfaces_BazBar_m3_Method;
_qrt.util.inherits(interfaces_BazBar_m3_Method, quark.reflect.Method);

function interfaces_BazBar_m3_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_BazBar_m3_Method.prototype.__init_fields__ = interfaces_BazBar_m3_Method__init_fields__;

function interfaces_BazBar_m3_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.BazBar; });
    (obj).m3(_qrt.cast((args)[0], function () { return Array; }));
    return null;
}
interfaces_BazBar_m3_Method.prototype.invoke = interfaces_BazBar_m3_Method_invoke;

function interfaces_BazBar_m3_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_BazBar_m3_Method.prototype._getClass = interfaces_BazBar_m3_Method__getClass;

function interfaces_BazBar_m3_Method__getField(name) {
    return null;
}
interfaces_BazBar_m3_Method.prototype._getField = interfaces_BazBar_m3_Method__getField;

function interfaces_BazBar_m3_Method__setField(name, value) {}
interfaces_BazBar_m3_Method.prototype._setField = interfaces_BazBar_m3_Method__setField;

// CLASS interfaces_BazBar

function interfaces_BazBar() {
    interfaces_BazBar.super_.call(this, "interfaces.BazBar");
    (this).name = "interfaces.BazBar";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new interfaces_BazBar_m1_Method(), new interfaces_BazBar_m2_Method(), new interfaces_BazBar_m3_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_BazBar = interfaces_BazBar;
_qrt.util.inherits(interfaces_BazBar, quark.reflect.Class);

function interfaces_BazBar__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_BazBar.prototype.__init_fields__ = interfaces_BazBar__init_fields__;
interfaces_BazBar.singleton = new interfaces_BazBar();
function interfaces_BazBar_construct(args) {
    return new interfaces.BazBar();
}
interfaces_BazBar.prototype.construct = interfaces_BazBar_construct;

function interfaces_BazBar_isAbstract() {
    return false;
}
interfaces_BazBar.prototype.isAbstract = interfaces_BazBar_isAbstract;

function interfaces_BazBar__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_BazBar.prototype._getClass = interfaces_BazBar__getClass;

function interfaces_BazBar__getField(name) {
    return null;
}
interfaces_BazBar.prototype._getField = interfaces_BazBar__getField;

function interfaces_BazBar__setField(name, value) {}
interfaces_BazBar.prototype._setField = interfaces_BazBar__setField;


// CLASS interfaces_BazFaz_quark_Object__m1_Method

function interfaces_BazFaz_quark_Object__m1_Method() {
    interfaces_BazFaz_quark_Object__m1_Method.super_.call(this, "quark.void", "m1", []);
}
exports.interfaces_BazFaz_quark_Object__m1_Method = interfaces_BazFaz_quark_Object__m1_Method;
_qrt.util.inherits(interfaces_BazFaz_quark_Object__m1_Method, quark.reflect.Method);

function interfaces_BazFaz_quark_Object__m1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_BazFaz_quark_Object__m1_Method.prototype.__init_fields__ = interfaces_BazFaz_quark_Object__m1_Method__init_fields__;

function interfaces_BazFaz_quark_Object__m1_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.BazFaz; });
    (obj).m1();
    return null;
}
interfaces_BazFaz_quark_Object__m1_Method.prototype.invoke = interfaces_BazFaz_quark_Object__m1_Method_invoke;

function interfaces_BazFaz_quark_Object__m1_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_BazFaz_quark_Object__m1_Method.prototype._getClass = interfaces_BazFaz_quark_Object__m1_Method__getClass;

function interfaces_BazFaz_quark_Object__m1_Method__getField(name) {
    return null;
}
interfaces_BazFaz_quark_Object__m1_Method.prototype._getField = interfaces_BazFaz_quark_Object__m1_Method__getField;

function interfaces_BazFaz_quark_Object__m1_Method__setField(name, value) {}
interfaces_BazFaz_quark_Object__m1_Method.prototype._setField = interfaces_BazFaz_quark_Object__m1_Method__setField;

// CLASS interfaces_BazFaz_quark_Object__m2_Method

function interfaces_BazFaz_quark_Object__m2_Method() {
    interfaces_BazFaz_quark_Object__m2_Method.super_.call(this, "quark.void", "m2", ["quark.Object"]);
}
exports.interfaces_BazFaz_quark_Object__m2_Method = interfaces_BazFaz_quark_Object__m2_Method;
_qrt.util.inherits(interfaces_BazFaz_quark_Object__m2_Method, quark.reflect.Method);

function interfaces_BazFaz_quark_Object__m2_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_BazFaz_quark_Object__m2_Method.prototype.__init_fields__ = interfaces_BazFaz_quark_Object__m2_Method__init_fields__;

function interfaces_BazFaz_quark_Object__m2_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.BazFaz; });
    (obj).m2((args)[0]);
    return null;
}
interfaces_BazFaz_quark_Object__m2_Method.prototype.invoke = interfaces_BazFaz_quark_Object__m2_Method_invoke;

function interfaces_BazFaz_quark_Object__m2_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_BazFaz_quark_Object__m2_Method.prototype._getClass = interfaces_BazFaz_quark_Object__m2_Method__getClass;

function interfaces_BazFaz_quark_Object__m2_Method__getField(name) {
    return null;
}
interfaces_BazFaz_quark_Object__m2_Method.prototype._getField = interfaces_BazFaz_quark_Object__m2_Method__getField;

function interfaces_BazFaz_quark_Object__m2_Method__setField(name, value) {}
interfaces_BazFaz_quark_Object__m2_Method.prototype._setField = interfaces_BazFaz_quark_Object__m2_Method__setField;

// CLASS interfaces_BazFaz_quark_Object__m3_Method

function interfaces_BazFaz_quark_Object__m3_Method() {
    interfaces_BazFaz_quark_Object__m3_Method.super_.call(this, "quark.void", "m3", ["quark.List<quark.Object>"]);
}
exports.interfaces_BazFaz_quark_Object__m3_Method = interfaces_BazFaz_quark_Object__m3_Method;
_qrt.util.inherits(interfaces_BazFaz_quark_Object__m3_Method, quark.reflect.Method);

function interfaces_BazFaz_quark_Object__m3_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
interfaces_BazFaz_quark_Object__m3_Method.prototype.__init_fields__ = interfaces_BazFaz_quark_Object__m3_Method__init_fields__;

function interfaces_BazFaz_quark_Object__m3_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return interfaces.BazFaz; });
    (obj).m3(_qrt.cast((args)[0], function () { return Array; }));
    return null;
}
interfaces_BazFaz_quark_Object__m3_Method.prototype.invoke = interfaces_BazFaz_quark_Object__m3_Method_invoke;

function interfaces_BazFaz_quark_Object__m3_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_BazFaz_quark_Object__m3_Method.prototype._getClass = interfaces_BazFaz_quark_Object__m3_Method__getClass;

function interfaces_BazFaz_quark_Object__m3_Method__getField(name) {
    return null;
}
interfaces_BazFaz_quark_Object__m3_Method.prototype._getField = interfaces_BazFaz_quark_Object__m3_Method__getField;

function interfaces_BazFaz_quark_Object__m3_Method__setField(name, value) {}
interfaces_BazFaz_quark_Object__m3_Method.prototype._setField = interfaces_BazFaz_quark_Object__m3_Method__setField;

// CLASS interfaces_BazFaz_quark_Object_

function interfaces_BazFaz_quark_Object_() {
    interfaces_BazFaz_quark_Object_.super_.call(this, "interfaces.BazFaz<quark.Object>");
    (this).name = "interfaces.BazFaz";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [new interfaces_BazFaz_quark_Object__m1_Method(), new interfaces_BazFaz_quark_Object__m2_Method(), new interfaces_BazFaz_quark_Object__m3_Method()];
    (this).parents = ["quark.Object"];
}
exports.interfaces_BazFaz_quark_Object_ = interfaces_BazFaz_quark_Object_;
_qrt.util.inherits(interfaces_BazFaz_quark_Object_, quark.reflect.Class);

function interfaces_BazFaz_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
interfaces_BazFaz_quark_Object_.prototype.__init_fields__ = interfaces_BazFaz_quark_Object___init_fields__;
interfaces_BazFaz_quark_Object_.singleton = new interfaces_BazFaz_quark_Object_();
function interfaces_BazFaz_quark_Object__construct(args) {
    return new interfaces.BazFaz();
}
interfaces_BazFaz_quark_Object_.prototype.construct = interfaces_BazFaz_quark_Object__construct;

function interfaces_BazFaz_quark_Object__isAbstract() {
    return false;
}
interfaces_BazFaz_quark_Object_.prototype.isAbstract = interfaces_BazFaz_quark_Object__isAbstract;

function interfaces_BazFaz_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
interfaces_BazFaz_quark_Object_.prototype._getClass = interfaces_BazFaz_quark_Object___getClass;

function interfaces_BazFaz_quark_Object___getField(name) {
    return null;
}
interfaces_BazFaz_quark_Object_.prototype._getField = interfaces_BazFaz_quark_Object___getField;

function interfaces_BazFaz_quark_Object___setField(name, value) {}
interfaces_BazFaz_quark_Object_.prototype._setField = interfaces_BazFaz_quark_Object___setField;


// CLASS classes_Overload___add___Method

function classes_Overload___add___Method() {
    classes_Overload___add___Method.super_.call(this, "classes.Overload", "__add__", ["classes.Overload"]);
}
exports.classes_Overload___add___Method = classes_Overload___add___Method;
_qrt.util.inherits(classes_Overload___add___Method, quark.reflect.Method);

function classes_Overload___add___Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_Overload___add___Method.prototype.__init_fields__ = classes_Overload___add___Method__init_fields__;

function classes_Overload___add___Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.Overload; });
    return (obj).__add__(_qrt.cast((args)[0], function () { return classes.Overload; }));
}
classes_Overload___add___Method.prototype.invoke = classes_Overload___add___Method_invoke;

function classes_Overload___add___Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_Overload___add___Method.prototype._getClass = classes_Overload___add___Method__getClass;

function classes_Overload___add___Method__getField(name) {
    return null;
}
classes_Overload___add___Method.prototype._getField = classes_Overload___add___Method__getField;

function classes_Overload___add___Method__setField(name, value) {}
classes_Overload___add___Method.prototype._setField = classes_Overload___add___Method__setField;

// CLASS classes_Overload___mul___Method

function classes_Overload___mul___Method() {
    classes_Overload___mul___Method.super_.call(this, "classes.Overload", "__mul__", ["classes.Overload"]);
}
exports.classes_Overload___mul___Method = classes_Overload___mul___Method;
_qrt.util.inherits(classes_Overload___mul___Method, quark.reflect.Method);

function classes_Overload___mul___Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_Overload___mul___Method.prototype.__init_fields__ = classes_Overload___mul___Method__init_fields__;

function classes_Overload___mul___Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.Overload; });
    return (obj).__mul__(_qrt.cast((args)[0], function () { return classes.Overload; }));
}
classes_Overload___mul___Method.prototype.invoke = classes_Overload___mul___Method_invoke;

function classes_Overload___mul___Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_Overload___mul___Method.prototype._getClass = classes_Overload___mul___Method__getClass;

function classes_Overload___mul___Method__getField(name) {
    return null;
}
classes_Overload___mul___Method.prototype._getField = classes_Overload___mul___Method__getField;

function classes_Overload___mul___Method__setField(name, value) {}
classes_Overload___mul___Method.prototype._setField = classes_Overload___mul___Method__setField;

// CLASS classes_Overload_test_Method

function classes_Overload_test_Method() {
    classes_Overload_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.classes_Overload_test_Method = classes_Overload_test_Method;
_qrt.util.inherits(classes_Overload_test_Method, quark.reflect.Method);

function classes_Overload_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_Overload_test_Method.prototype.__init_fields__ = classes_Overload_test_Method__init_fields__;

function classes_Overload_test_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.Overload; });
    (obj).test();
    return null;
}
classes_Overload_test_Method.prototype.invoke = classes_Overload_test_Method_invoke;

function classes_Overload_test_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_Overload_test_Method.prototype._getClass = classes_Overload_test_Method__getClass;

function classes_Overload_test_Method__getField(name) {
    return null;
}
classes_Overload_test_Method.prototype._getField = classes_Overload_test_Method__getField;

function classes_Overload_test_Method__setField(name, value) {}
classes_Overload_test_Method.prototype._setField = classes_Overload_test_Method__setField;

// CLASS classes_Overload

function classes_Overload() {
    classes_Overload.super_.call(this, "classes.Overload");
    (this).name = "classes.Overload";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new classes_Overload___add___Method(), new classes_Overload___mul___Method(), new classes_Overload_test_Method()];
    (this).parents = ["quark.Object"];
}
exports.classes_Overload = classes_Overload;
_qrt.util.inherits(classes_Overload, quark.reflect.Class);

function classes_Overload__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_Overload.prototype.__init_fields__ = classes_Overload__init_fields__;
classes_Overload.singleton = new classes_Overload();
function classes_Overload_construct(args) {
    return new classes.Overload(_qrt.cast((args)[0], function () { return String; }));
}
classes_Overload.prototype.construct = classes_Overload_construct;

function classes_Overload_isAbstract() {
    return false;
}
classes_Overload.prototype.isAbstract = classes_Overload_isAbstract;

function classes_Overload__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_Overload.prototype._getClass = classes_Overload__getClass;

function classes_Overload__getField(name) {
    return null;
}
classes_Overload.prototype._getField = classes_Overload__getField;

function classes_Overload__setField(name, value) {}
classes_Overload.prototype._setField = classes_Overload__setField;


// CLASS classes_Test_test_Method

function classes_Test_test_Method() {
    classes_Test_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.classes_Test_test_Method = classes_Test_test_Method;
_qrt.util.inherits(classes_Test_test_Method, quark.reflect.Method);

function classes_Test_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_Test_test_Method.prototype.__init_fields__ = classes_Test_test_Method__init_fields__;

function classes_Test_test_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.Test; });
    (obj).test();
    return null;
}
classes_Test_test_Method.prototype.invoke = classes_Test_test_Method_invoke;

function classes_Test_test_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_Test_test_Method.prototype._getClass = classes_Test_test_Method__getClass;

function classes_Test_test_Method__getField(name) {
    return null;
}
classes_Test_test_Method.prototype._getField = classes_Test_test_Method__getField;

function classes_Test_test_Method__setField(name, value) {}
classes_Test_test_Method.prototype._setField = classes_Test_test_Method__setField;

// CLASS classes_Test

function classes_Test() {
    classes_Test.super_.call(this, "classes.Test");
    (this).name = "classes.Test";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new classes_Test_test_Method()];
    (this).parents = ["quark.Object"];
}
exports.classes_Test = classes_Test;
_qrt.util.inherits(classes_Test, quark.reflect.Class);

function classes_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_Test.prototype.__init_fields__ = classes_Test__init_fields__;
classes_Test.singleton = new classes_Test();
function classes_Test_construct(args) {
    return new classes.Test();
}
classes_Test.prototype.construct = classes_Test_construct;

function classes_Test_isAbstract() {
    return false;
}
classes_Test.prototype.isAbstract = classes_Test_isAbstract;

function classes_Test__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_Test.prototype._getClass = classes_Test__getClass;

function classes_Test__getField(name) {
    return null;
}
classes_Test.prototype._getField = classes_Test__getField;

function classes_Test__setField(name, value) {}
classes_Test.prototype._setField = classes_Test__setField;


// CLASS classes_string_test_check_Method

function classes_string_test_check_Method() {
    classes_string_test_check_Method.super_.call(this, "quark.void", "check", ["quark.String", "quark.String", "quark.String", "quark.String"]);
}
exports.classes_string_test_check_Method = classes_string_test_check_Method;
_qrt.util.inherits(classes_string_test_check_Method, quark.reflect.Method);

function classes_string_test_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_string_test_check_Method.prototype.__init_fields__ = classes_string_test_check_Method__init_fields__;

function classes_string_test_check_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.string_test; });
    (obj).check(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }), _qrt.cast((args)[2], function () { return String; }), _qrt.cast((args)[3], function () { return String; }));
    return null;
}
classes_string_test_check_Method.prototype.invoke = classes_string_test_check_Method_invoke;

function classes_string_test_check_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_string_test_check_Method.prototype._getClass = classes_string_test_check_Method__getClass;

function classes_string_test_check_Method__getField(name) {
    return null;
}
classes_string_test_check_Method.prototype._getField = classes_string_test_check_Method__getField;

function classes_string_test_check_Method__setField(name, value) {}
classes_string_test_check_Method.prototype._setField = classes_string_test_check_Method__setField;

// CLASS classes_string_test

function classes_string_test() {
    classes_string_test.super_.call(this, "classes.string_test");
    (this).name = "classes.string_test";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new classes_string_test_check_Method()];
    (this).parents = ["quark.Object"];
}
exports.classes_string_test = classes_string_test;
_qrt.util.inherits(classes_string_test, quark.reflect.Class);

function classes_string_test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_string_test.prototype.__init_fields__ = classes_string_test__init_fields__;
classes_string_test.singleton = new classes_string_test();
function classes_string_test_construct(args) {
    return new classes.string_test();
}
classes_string_test.prototype.construct = classes_string_test_construct;

function classes_string_test_isAbstract() {
    return false;
}
classes_string_test.prototype.isAbstract = classes_string_test_isAbstract;

function classes_string_test__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_string_test.prototype._getClass = classes_string_test__getClass;

function classes_string_test__getField(name) {
    return null;
}
classes_string_test.prototype._getField = classes_string_test__getField;

function classes_string_test__setField(name, value) {}
classes_string_test.prototype._setField = classes_string_test__setField;


// CLASS classes_test_size_does_Method

function classes_test_size_does_Method() {
    classes_test_size_does_Method.super_.call(this, "classes.test_size", "does", ["quark.int"]);
}
exports.classes_test_size_does_Method = classes_test_size_does_Method;
_qrt.util.inherits(classes_test_size_does_Method, quark.reflect.Method);

function classes_test_size_does_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_size_does_Method.prototype.__init_fields__ = classes_test_size_does_Method__init_fields__;

function classes_test_size_does_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_size; });
    return (obj).does(_qrt.cast((args)[0], function () { return Number; }));
}
classes_test_size_does_Method.prototype.invoke = classes_test_size_does_Method_invoke;

function classes_test_size_does_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_size_does_Method.prototype._getClass = classes_test_size_does_Method__getClass;

function classes_test_size_does_Method__getField(name) {
    return null;
}
classes_test_size_does_Method.prototype._getField = classes_test_size_does_Method__getField;

function classes_test_size_does_Method__setField(name, value) {}
classes_test_size_does_Method.prototype._setField = classes_test_size_does_Method__setField;

// CLASS classes_test_size_check_Method

function classes_test_size_check_Method() {
    classes_test_size_check_Method.super_.call(this, "quark.void", "check", ["quark.String", "quark.String", "quark.String", "quark.String"]);
}
exports.classes_test_size_check_Method = classes_test_size_check_Method;
_qrt.util.inherits(classes_test_size_check_Method, quark.reflect.Method);

function classes_test_size_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_size_check_Method.prototype.__init_fields__ = classes_test_size_check_Method__init_fields__;

function classes_test_size_check_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_size; });
    (obj).check(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }), _qrt.cast((args)[2], function () { return String; }), _qrt.cast((args)[3], function () { return String; }));
    return null;
}
classes_test_size_check_Method.prototype.invoke = classes_test_size_check_Method_invoke;

function classes_test_size_check_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_size_check_Method.prototype._getClass = classes_test_size_check_Method__getClass;

function classes_test_size_check_Method__getField(name) {
    return null;
}
classes_test_size_check_Method.prototype._getField = classes_test_size_check_Method__getField;

function classes_test_size_check_Method__setField(name, value) {}
classes_test_size_check_Method.prototype._setField = classes_test_size_check_Method__setField;

// CLASS classes_test_size

function classes_test_size() {
    classes_test_size.super_.call(this, "classes.test_size");
    (this).name = "classes.test_size";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "what")];
    (this).methods = [new classes_test_size_does_Method(), new classes_test_size_check_Method()];
    (this).parents = ["classes.string_test"];
}
exports.classes_test_size = classes_test_size;
_qrt.util.inherits(classes_test_size, quark.reflect.Class);

function classes_test_size__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_test_size.prototype.__init_fields__ = classes_test_size__init_fields__;
classes_test_size.singleton = new classes_test_size();
function classes_test_size_construct(args) {
    return new classes.test_size(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_size.prototype.construct = classes_test_size_construct;

function classes_test_size_isAbstract() {
    return false;
}
classes_test_size.prototype.isAbstract = classes_test_size_isAbstract;

function classes_test_size__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_size.prototype._getClass = classes_test_size__getClass;

function classes_test_size__getField(name) {
    return null;
}
classes_test_size.prototype._getField = classes_test_size__getField;

function classes_test_size__setField(name, value) {}
classes_test_size.prototype._setField = classes_test_size__setField;


// CLASS classes_test_startsWith_that_Method

function classes_test_startsWith_that_Method() {
    classes_test_startsWith_that_Method.super_.call(this, "classes.test_startsWith", "that", ["quark.String"]);
}
exports.classes_test_startsWith_that_Method = classes_test_startsWith_that_Method;
_qrt.util.inherits(classes_test_startsWith_that_Method, quark.reflect.Method);

function classes_test_startsWith_that_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_startsWith_that_Method.prototype.__init_fields__ = classes_test_startsWith_that_Method__init_fields__;

function classes_test_startsWith_that_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_startsWith; });
    return (obj).that(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_startsWith_that_Method.prototype.invoke = classes_test_startsWith_that_Method_invoke;

function classes_test_startsWith_that_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_startsWith_that_Method.prototype._getClass = classes_test_startsWith_that_Method__getClass;

function classes_test_startsWith_that_Method__getField(name) {
    return null;
}
classes_test_startsWith_that_Method.prototype._getField = classes_test_startsWith_that_Method__getField;

function classes_test_startsWith_that_Method__setField(name, value) {}
classes_test_startsWith_that_Method.prototype._setField = classes_test_startsWith_that_Method__setField;

// CLASS classes_test_startsWith_does_Method

function classes_test_startsWith_does_Method() {
    classes_test_startsWith_does_Method.super_.call(this, "classes.test_startsWith", "does", ["quark.bool"]);
}
exports.classes_test_startsWith_does_Method = classes_test_startsWith_does_Method;
_qrt.util.inherits(classes_test_startsWith_does_Method, quark.reflect.Method);

function classes_test_startsWith_does_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_startsWith_does_Method.prototype.__init_fields__ = classes_test_startsWith_does_Method__init_fields__;

function classes_test_startsWith_does_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_startsWith; });
    return (obj).does(_qrt.cast((args)[0], function () { return Boolean; }));
}
classes_test_startsWith_does_Method.prototype.invoke = classes_test_startsWith_does_Method_invoke;

function classes_test_startsWith_does_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_startsWith_does_Method.prototype._getClass = classes_test_startsWith_does_Method__getClass;

function classes_test_startsWith_does_Method__getField(name) {
    return null;
}
classes_test_startsWith_does_Method.prototype._getField = classes_test_startsWith_does_Method__getField;

function classes_test_startsWith_does_Method__setField(name, value) {}
classes_test_startsWith_does_Method.prototype._setField = classes_test_startsWith_does_Method__setField;

// CLASS classes_test_startsWith_check_Method

function classes_test_startsWith_check_Method() {
    classes_test_startsWith_check_Method.super_.call(this, "quark.void", "check", ["quark.String", "quark.String", "quark.String", "quark.String"]);
}
exports.classes_test_startsWith_check_Method = classes_test_startsWith_check_Method;
_qrt.util.inherits(classes_test_startsWith_check_Method, quark.reflect.Method);

function classes_test_startsWith_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_startsWith_check_Method.prototype.__init_fields__ = classes_test_startsWith_check_Method__init_fields__;

function classes_test_startsWith_check_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_startsWith; });
    (obj).check(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }), _qrt.cast((args)[2], function () { return String; }), _qrt.cast((args)[3], function () { return String; }));
    return null;
}
classes_test_startsWith_check_Method.prototype.invoke = classes_test_startsWith_check_Method_invoke;

function classes_test_startsWith_check_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_startsWith_check_Method.prototype._getClass = classes_test_startsWith_check_Method__getClass;

function classes_test_startsWith_check_Method__getField(name) {
    return null;
}
classes_test_startsWith_check_Method.prototype._getField = classes_test_startsWith_check_Method__getField;

function classes_test_startsWith_check_Method__setField(name, value) {}
classes_test_startsWith_check_Method.prototype._setField = classes_test_startsWith_check_Method__setField;

// CLASS classes_test_startsWith

function classes_test_startsWith() {
    classes_test_startsWith.super_.call(this, "classes.test_startsWith");
    (this).name = "classes.test_startsWith";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.String", "_that")];
    (this).methods = [new classes_test_startsWith_that_Method(), new classes_test_startsWith_does_Method(), new classes_test_startsWith_check_Method()];
    (this).parents = ["classes.string_test"];
}
exports.classes_test_startsWith = classes_test_startsWith;
_qrt.util.inherits(classes_test_startsWith, quark.reflect.Class);

function classes_test_startsWith__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_test_startsWith.prototype.__init_fields__ = classes_test_startsWith__init_fields__;
classes_test_startsWith.singleton = new classes_test_startsWith();
function classes_test_startsWith_construct(args) {
    return new classes.test_startsWith(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_startsWith.prototype.construct = classes_test_startsWith_construct;

function classes_test_startsWith_isAbstract() {
    return false;
}
classes_test_startsWith.prototype.isAbstract = classes_test_startsWith_isAbstract;

function classes_test_startsWith__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_startsWith.prototype._getClass = classes_test_startsWith__getClass;

function classes_test_startsWith__getField(name) {
    return null;
}
classes_test_startsWith.prototype._getField = classes_test_startsWith__getField;

function classes_test_startsWith__setField(name, value) {}
classes_test_startsWith.prototype._setField = classes_test_startsWith__setField;


// CLASS classes_test_endsWith_that_Method

function classes_test_endsWith_that_Method() {
    classes_test_endsWith_that_Method.super_.call(this, "classes.test_endsWith", "that", ["quark.String"]);
}
exports.classes_test_endsWith_that_Method = classes_test_endsWith_that_Method;
_qrt.util.inherits(classes_test_endsWith_that_Method, quark.reflect.Method);

function classes_test_endsWith_that_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_endsWith_that_Method.prototype.__init_fields__ = classes_test_endsWith_that_Method__init_fields__;

function classes_test_endsWith_that_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_endsWith; });
    return (obj).that(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_endsWith_that_Method.prototype.invoke = classes_test_endsWith_that_Method_invoke;

function classes_test_endsWith_that_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_endsWith_that_Method.prototype._getClass = classes_test_endsWith_that_Method__getClass;

function classes_test_endsWith_that_Method__getField(name) {
    return null;
}
classes_test_endsWith_that_Method.prototype._getField = classes_test_endsWith_that_Method__getField;

function classes_test_endsWith_that_Method__setField(name, value) {}
classes_test_endsWith_that_Method.prototype._setField = classes_test_endsWith_that_Method__setField;

// CLASS classes_test_endsWith_does_Method

function classes_test_endsWith_does_Method() {
    classes_test_endsWith_does_Method.super_.call(this, "classes.test_endsWith", "does", ["quark.bool"]);
}
exports.classes_test_endsWith_does_Method = classes_test_endsWith_does_Method;
_qrt.util.inherits(classes_test_endsWith_does_Method, quark.reflect.Method);

function classes_test_endsWith_does_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_endsWith_does_Method.prototype.__init_fields__ = classes_test_endsWith_does_Method__init_fields__;

function classes_test_endsWith_does_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_endsWith; });
    return (obj).does(_qrt.cast((args)[0], function () { return Boolean; }));
}
classes_test_endsWith_does_Method.prototype.invoke = classes_test_endsWith_does_Method_invoke;

function classes_test_endsWith_does_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_endsWith_does_Method.prototype._getClass = classes_test_endsWith_does_Method__getClass;

function classes_test_endsWith_does_Method__getField(name) {
    return null;
}
classes_test_endsWith_does_Method.prototype._getField = classes_test_endsWith_does_Method__getField;

function classes_test_endsWith_does_Method__setField(name, value) {}
classes_test_endsWith_does_Method.prototype._setField = classes_test_endsWith_does_Method__setField;

// CLASS classes_test_endsWith_check_Method

function classes_test_endsWith_check_Method() {
    classes_test_endsWith_check_Method.super_.call(this, "quark.void", "check", ["quark.String", "quark.String", "quark.String", "quark.String"]);
}
exports.classes_test_endsWith_check_Method = classes_test_endsWith_check_Method;
_qrt.util.inherits(classes_test_endsWith_check_Method, quark.reflect.Method);

function classes_test_endsWith_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_endsWith_check_Method.prototype.__init_fields__ = classes_test_endsWith_check_Method__init_fields__;

function classes_test_endsWith_check_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_endsWith; });
    (obj).check(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }), _qrt.cast((args)[2], function () { return String; }), _qrt.cast((args)[3], function () { return String; }));
    return null;
}
classes_test_endsWith_check_Method.prototype.invoke = classes_test_endsWith_check_Method_invoke;

function classes_test_endsWith_check_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_endsWith_check_Method.prototype._getClass = classes_test_endsWith_check_Method__getClass;

function classes_test_endsWith_check_Method__getField(name) {
    return null;
}
classes_test_endsWith_check_Method.prototype._getField = classes_test_endsWith_check_Method__getField;

function classes_test_endsWith_check_Method__setField(name, value) {}
classes_test_endsWith_check_Method.prototype._setField = classes_test_endsWith_check_Method__setField;

// CLASS classes_test_endsWith

function classes_test_endsWith() {
    classes_test_endsWith.super_.call(this, "classes.test_endsWith");
    (this).name = "classes.test_endsWith";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.String", "_that")];
    (this).methods = [new classes_test_endsWith_that_Method(), new classes_test_endsWith_does_Method(), new classes_test_endsWith_check_Method()];
    (this).parents = ["classes.string_test"];
}
exports.classes_test_endsWith = classes_test_endsWith;
_qrt.util.inherits(classes_test_endsWith, quark.reflect.Class);

function classes_test_endsWith__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_test_endsWith.prototype.__init_fields__ = classes_test_endsWith__init_fields__;
classes_test_endsWith.singleton = new classes_test_endsWith();
function classes_test_endsWith_construct(args) {
    return new classes.test_endsWith(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_endsWith.prototype.construct = classes_test_endsWith_construct;

function classes_test_endsWith_isAbstract() {
    return false;
}
classes_test_endsWith.prototype.isAbstract = classes_test_endsWith_isAbstract;

function classes_test_endsWith__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_endsWith.prototype._getClass = classes_test_endsWith__getClass;

function classes_test_endsWith__getField(name) {
    return null;
}
classes_test_endsWith.prototype._getField = classes_test_endsWith__getField;

function classes_test_endsWith__setField(name, value) {}
classes_test_endsWith.prototype._setField = classes_test_endsWith__setField;


// CLASS classes_test_find_that_Method

function classes_test_find_that_Method() {
    classes_test_find_that_Method.super_.call(this, "classes.test_find", "that", ["quark.String"]);
}
exports.classes_test_find_that_Method = classes_test_find_that_Method;
_qrt.util.inherits(classes_test_find_that_Method, quark.reflect.Method);

function classes_test_find_that_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_find_that_Method.prototype.__init_fields__ = classes_test_find_that_Method__init_fields__;

function classes_test_find_that_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_find; });
    return (obj).that(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_find_that_Method.prototype.invoke = classes_test_find_that_Method_invoke;

function classes_test_find_that_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_find_that_Method.prototype._getClass = classes_test_find_that_Method__getClass;

function classes_test_find_that_Method__getField(name) {
    return null;
}
classes_test_find_that_Method.prototype._getField = classes_test_find_that_Method__getField;

function classes_test_find_that_Method__setField(name, value) {}
classes_test_find_that_Method.prototype._setField = classes_test_find_that_Method__setField;

// CLASS classes_test_find_does_Method

function classes_test_find_does_Method() {
    classes_test_find_does_Method.super_.call(this, "classes.test_find", "does", ["quark.int"]);
}
exports.classes_test_find_does_Method = classes_test_find_does_Method;
_qrt.util.inherits(classes_test_find_does_Method, quark.reflect.Method);

function classes_test_find_does_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_find_does_Method.prototype.__init_fields__ = classes_test_find_does_Method__init_fields__;

function classes_test_find_does_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_find; });
    return (obj).does(_qrt.cast((args)[0], function () { return Number; }));
}
classes_test_find_does_Method.prototype.invoke = classes_test_find_does_Method_invoke;

function classes_test_find_does_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_find_does_Method.prototype._getClass = classes_test_find_does_Method__getClass;

function classes_test_find_does_Method__getField(name) {
    return null;
}
classes_test_find_does_Method.prototype._getField = classes_test_find_does_Method__getField;

function classes_test_find_does_Method__setField(name, value) {}
classes_test_find_does_Method.prototype._setField = classes_test_find_does_Method__setField;

// CLASS classes_test_find_check_Method

function classes_test_find_check_Method() {
    classes_test_find_check_Method.super_.call(this, "quark.void", "check", ["quark.String", "quark.String", "quark.String", "quark.String"]);
}
exports.classes_test_find_check_Method = classes_test_find_check_Method;
_qrt.util.inherits(classes_test_find_check_Method, quark.reflect.Method);

function classes_test_find_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_find_check_Method.prototype.__init_fields__ = classes_test_find_check_Method__init_fields__;

function classes_test_find_check_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_find; });
    (obj).check(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }), _qrt.cast((args)[2], function () { return String; }), _qrt.cast((args)[3], function () { return String; }));
    return null;
}
classes_test_find_check_Method.prototype.invoke = classes_test_find_check_Method_invoke;

function classes_test_find_check_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_find_check_Method.prototype._getClass = classes_test_find_check_Method__getClass;

function classes_test_find_check_Method__getField(name) {
    return null;
}
classes_test_find_check_Method.prototype._getField = classes_test_find_check_Method__getField;

function classes_test_find_check_Method__setField(name, value) {}
classes_test_find_check_Method.prototype._setField = classes_test_find_check_Method__setField;

// CLASS classes_test_find

function classes_test_find() {
    classes_test_find.super_.call(this, "classes.test_find");
    (this).name = "classes.test_find";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.String", "_that")];
    (this).methods = [new classes_test_find_that_Method(), new classes_test_find_does_Method(), new classes_test_find_check_Method()];
    (this).parents = ["classes.string_test"];
}
exports.classes_test_find = classes_test_find;
_qrt.util.inherits(classes_test_find, quark.reflect.Class);

function classes_test_find__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_test_find.prototype.__init_fields__ = classes_test_find__init_fields__;
classes_test_find.singleton = new classes_test_find();
function classes_test_find_construct(args) {
    return new classes.test_find(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_find.prototype.construct = classes_test_find_construct;

function classes_test_find_isAbstract() {
    return false;
}
classes_test_find.prototype.isAbstract = classes_test_find_isAbstract;

function classes_test_find__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_find.prototype._getClass = classes_test_find__getClass;

function classes_test_find__getField(name) {
    return null;
}
classes_test_find.prototype._getField = classes_test_find__getField;

function classes_test_find__setField(name, value) {}
classes_test_find.prototype._setField = classes_test_find__setField;


// CLASS classes_test_substring_that_Method

function classes_test_substring_that_Method() {
    classes_test_substring_that_Method.super_.call(this, "classes.test_substring", "that", ["quark.int", "quark.int"]);
}
exports.classes_test_substring_that_Method = classes_test_substring_that_Method;
_qrt.util.inherits(classes_test_substring_that_Method, quark.reflect.Method);

function classes_test_substring_that_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_substring_that_Method.prototype.__init_fields__ = classes_test_substring_that_Method__init_fields__;

function classes_test_substring_that_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_substring; });
    return (obj).that(_qrt.cast((args)[0], function () { return Number; }), _qrt.cast((args)[1], function () { return Number; }));
}
classes_test_substring_that_Method.prototype.invoke = classes_test_substring_that_Method_invoke;

function classes_test_substring_that_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_substring_that_Method.prototype._getClass = classes_test_substring_that_Method__getClass;

function classes_test_substring_that_Method__getField(name) {
    return null;
}
classes_test_substring_that_Method.prototype._getField = classes_test_substring_that_Method__getField;

function classes_test_substring_that_Method__setField(name, value) {}
classes_test_substring_that_Method.prototype._setField = classes_test_substring_that_Method__setField;

// CLASS classes_test_substring_does_Method

function classes_test_substring_does_Method() {
    classes_test_substring_does_Method.super_.call(this, "classes.test_substring", "does", ["quark.String"]);
}
exports.classes_test_substring_does_Method = classes_test_substring_does_Method;
_qrt.util.inherits(classes_test_substring_does_Method, quark.reflect.Method);

function classes_test_substring_does_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_substring_does_Method.prototype.__init_fields__ = classes_test_substring_does_Method__init_fields__;

function classes_test_substring_does_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_substring; });
    return (obj).does(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_substring_does_Method.prototype.invoke = classes_test_substring_does_Method_invoke;

function classes_test_substring_does_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_substring_does_Method.prototype._getClass = classes_test_substring_does_Method__getClass;

function classes_test_substring_does_Method__getField(name) {
    return null;
}
classes_test_substring_does_Method.prototype._getField = classes_test_substring_does_Method__getField;

function classes_test_substring_does_Method__setField(name, value) {}
classes_test_substring_does_Method.prototype._setField = classes_test_substring_does_Method__setField;

// CLASS classes_test_substring_check_Method

function classes_test_substring_check_Method() {
    classes_test_substring_check_Method.super_.call(this, "quark.void", "check", ["quark.String", "quark.String", "quark.String", "quark.String"]);
}
exports.classes_test_substring_check_Method = classes_test_substring_check_Method;
_qrt.util.inherits(classes_test_substring_check_Method, quark.reflect.Method);

function classes_test_substring_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_substring_check_Method.prototype.__init_fields__ = classes_test_substring_check_Method__init_fields__;

function classes_test_substring_check_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_substring; });
    (obj).check(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }), _qrt.cast((args)[2], function () { return String; }), _qrt.cast((args)[3], function () { return String; }));
    return null;
}
classes_test_substring_check_Method.prototype.invoke = classes_test_substring_check_Method_invoke;

function classes_test_substring_check_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_substring_check_Method.prototype._getClass = classes_test_substring_check_Method__getClass;

function classes_test_substring_check_Method__getField(name) {
    return null;
}
classes_test_substring_check_Method.prototype._getField = classes_test_substring_check_Method__getField;

function classes_test_substring_check_Method__setField(name, value) {}
classes_test_substring_check_Method.prototype._setField = classes_test_substring_check_Method__setField;

// CLASS classes_test_substring

function classes_test_substring() {
    classes_test_substring.super_.call(this, "classes.test_substring");
    (this).name = "classes.test_substring";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.int", "start"), new quark.reflect.Field("quark.int", "end")];
    (this).methods = [new classes_test_substring_that_Method(), new classes_test_substring_does_Method(), new classes_test_substring_check_Method()];
    (this).parents = ["classes.string_test"];
}
exports.classes_test_substring = classes_test_substring;
_qrt.util.inherits(classes_test_substring, quark.reflect.Class);

function classes_test_substring__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_test_substring.prototype.__init_fields__ = classes_test_substring__init_fields__;
classes_test_substring.singleton = new classes_test_substring();
function classes_test_substring_construct(args) {
    return new classes.test_substring(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_substring.prototype.construct = classes_test_substring_construct;

function classes_test_substring_isAbstract() {
    return false;
}
classes_test_substring.prototype.isAbstract = classes_test_substring_isAbstract;

function classes_test_substring__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_substring.prototype._getClass = classes_test_substring__getClass;

function classes_test_substring__getField(name) {
    return null;
}
classes_test_substring.prototype._getField = classes_test_substring__getField;

function classes_test_substring__setField(name, value) {}
classes_test_substring.prototype._setField = classes_test_substring__setField;


// CLASS classes_test_replace_that_Method

function classes_test_replace_that_Method() {
    classes_test_replace_that_Method.super_.call(this, "classes.test_replace", "that", ["quark.String", "quark.String"]);
}
exports.classes_test_replace_that_Method = classes_test_replace_that_Method;
_qrt.util.inherits(classes_test_replace_that_Method, quark.reflect.Method);

function classes_test_replace_that_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_replace_that_Method.prototype.__init_fields__ = classes_test_replace_that_Method__init_fields__;

function classes_test_replace_that_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_replace; });
    return (obj).that(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }));
}
classes_test_replace_that_Method.prototype.invoke = classes_test_replace_that_Method_invoke;

function classes_test_replace_that_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_replace_that_Method.prototype._getClass = classes_test_replace_that_Method__getClass;

function classes_test_replace_that_Method__getField(name) {
    return null;
}
classes_test_replace_that_Method.prototype._getField = classes_test_replace_that_Method__getField;

function classes_test_replace_that_Method__setField(name, value) {}
classes_test_replace_that_Method.prototype._setField = classes_test_replace_that_Method__setField;

// CLASS classes_test_replace_does_Method

function classes_test_replace_does_Method() {
    classes_test_replace_does_Method.super_.call(this, "classes.test_replace", "does", ["quark.String"]);
}
exports.classes_test_replace_does_Method = classes_test_replace_does_Method;
_qrt.util.inherits(classes_test_replace_does_Method, quark.reflect.Method);

function classes_test_replace_does_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_replace_does_Method.prototype.__init_fields__ = classes_test_replace_does_Method__init_fields__;

function classes_test_replace_does_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_replace; });
    return (obj).does(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_replace_does_Method.prototype.invoke = classes_test_replace_does_Method_invoke;

function classes_test_replace_does_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_replace_does_Method.prototype._getClass = classes_test_replace_does_Method__getClass;

function classes_test_replace_does_Method__getField(name) {
    return null;
}
classes_test_replace_does_Method.prototype._getField = classes_test_replace_does_Method__getField;

function classes_test_replace_does_Method__setField(name, value) {}
classes_test_replace_does_Method.prototype._setField = classes_test_replace_does_Method__setField;

// CLASS classes_test_replace_check_Method

function classes_test_replace_check_Method() {
    classes_test_replace_check_Method.super_.call(this, "quark.void", "check", ["quark.String", "quark.String", "quark.String", "quark.String"]);
}
exports.classes_test_replace_check_Method = classes_test_replace_check_Method;
_qrt.util.inherits(classes_test_replace_check_Method, quark.reflect.Method);

function classes_test_replace_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_replace_check_Method.prototype.__init_fields__ = classes_test_replace_check_Method__init_fields__;

function classes_test_replace_check_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_replace; });
    (obj).check(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }), _qrt.cast((args)[2], function () { return String; }), _qrt.cast((args)[3], function () { return String; }));
    return null;
}
classes_test_replace_check_Method.prototype.invoke = classes_test_replace_check_Method_invoke;

function classes_test_replace_check_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_replace_check_Method.prototype._getClass = classes_test_replace_check_Method__getClass;

function classes_test_replace_check_Method__getField(name) {
    return null;
}
classes_test_replace_check_Method.prototype._getField = classes_test_replace_check_Method__getField;

function classes_test_replace_check_Method__setField(name, value) {}
classes_test_replace_check_Method.prototype._setField = classes_test_replace_check_Method__setField;

// CLASS classes_test_replace

function classes_test_replace() {
    classes_test_replace.super_.call(this, "classes.test_replace");
    (this).name = "classes.test_replace";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.String", "start"), new quark.reflect.Field("quark.String", "end")];
    (this).methods = [new classes_test_replace_that_Method(), new classes_test_replace_does_Method(), new classes_test_replace_check_Method()];
    (this).parents = ["classes.string_test"];
}
exports.classes_test_replace = classes_test_replace;
_qrt.util.inherits(classes_test_replace, quark.reflect.Class);

function classes_test_replace__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_test_replace.prototype.__init_fields__ = classes_test_replace__init_fields__;
classes_test_replace.singleton = new classes_test_replace();
function classes_test_replace_construct(args) {
    return new classes.test_replace(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_replace.prototype.construct = classes_test_replace_construct;

function classes_test_replace_isAbstract() {
    return false;
}
classes_test_replace.prototype.isAbstract = classes_test_replace_isAbstract;

function classes_test_replace__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_replace.prototype._getClass = classes_test_replace__getClass;

function classes_test_replace__getField(name) {
    return null;
}
classes_test_replace.prototype._getField = classes_test_replace__getField;

function classes_test_replace__setField(name, value) {}
classes_test_replace.prototype._setField = classes_test_replace__setField;


// CLASS classes_test_join_that_Method

function classes_test_join_that_Method() {
    classes_test_join_that_Method.super_.call(this, "classes.test_join", "that", []);
}
exports.classes_test_join_that_Method = classes_test_join_that_Method;
_qrt.util.inherits(classes_test_join_that_Method, quark.reflect.Method);

function classes_test_join_that_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_join_that_Method.prototype.__init_fields__ = classes_test_join_that_Method__init_fields__;

function classes_test_join_that_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_join; });
    return (obj).that();
}
classes_test_join_that_Method.prototype.invoke = classes_test_join_that_Method_invoke;

function classes_test_join_that_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_join_that_Method.prototype._getClass = classes_test_join_that_Method__getClass;

function classes_test_join_that_Method__getField(name) {
    return null;
}
classes_test_join_that_Method.prototype._getField = classes_test_join_that_Method__getField;

function classes_test_join_that_Method__setField(name, value) {}
classes_test_join_that_Method.prototype._setField = classes_test_join_that_Method__setField;

// CLASS classes_test_join_a_Method

function classes_test_join_a_Method() {
    classes_test_join_a_Method.super_.call(this, "classes.test_join", "a", ["quark.String"]);
}
exports.classes_test_join_a_Method = classes_test_join_a_Method;
_qrt.util.inherits(classes_test_join_a_Method, quark.reflect.Method);

function classes_test_join_a_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_join_a_Method.prototype.__init_fields__ = classes_test_join_a_Method__init_fields__;

function classes_test_join_a_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_join; });
    return (obj).a(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_join_a_Method.prototype.invoke = classes_test_join_a_Method_invoke;

function classes_test_join_a_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_join_a_Method.prototype._getClass = classes_test_join_a_Method__getClass;

function classes_test_join_a_Method__getField(name) {
    return null;
}
classes_test_join_a_Method.prototype._getField = classes_test_join_a_Method__getField;

function classes_test_join_a_Method__setField(name, value) {}
classes_test_join_a_Method.prototype._setField = classes_test_join_a_Method__setField;

// CLASS classes_test_join_does_Method

function classes_test_join_does_Method() {
    classes_test_join_does_Method.super_.call(this, "classes.test_join", "does", ["quark.String"]);
}
exports.classes_test_join_does_Method = classes_test_join_does_Method;
_qrt.util.inherits(classes_test_join_does_Method, quark.reflect.Method);

function classes_test_join_does_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_join_does_Method.prototype.__init_fields__ = classes_test_join_does_Method__init_fields__;

function classes_test_join_does_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_join; });
    return (obj).does(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_join_does_Method.prototype.invoke = classes_test_join_does_Method_invoke;

function classes_test_join_does_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_join_does_Method.prototype._getClass = classes_test_join_does_Method__getClass;

function classes_test_join_does_Method__getField(name) {
    return null;
}
classes_test_join_does_Method.prototype._getField = classes_test_join_does_Method__getField;

function classes_test_join_does_Method__setField(name, value) {}
classes_test_join_does_Method.prototype._setField = classes_test_join_does_Method__setField;

// CLASS classes_test_join_check_Method

function classes_test_join_check_Method() {
    classes_test_join_check_Method.super_.call(this, "quark.void", "check", ["quark.String", "quark.String", "quark.String", "quark.String"]);
}
exports.classes_test_join_check_Method = classes_test_join_check_Method;
_qrt.util.inherits(classes_test_join_check_Method, quark.reflect.Method);

function classes_test_join_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_join_check_Method.prototype.__init_fields__ = classes_test_join_check_Method__init_fields__;

function classes_test_join_check_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_join; });
    (obj).check(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }), _qrt.cast((args)[2], function () { return String; }), _qrt.cast((args)[3], function () { return String; }));
    return null;
}
classes_test_join_check_Method.prototype.invoke = classes_test_join_check_Method_invoke;

function classes_test_join_check_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_join_check_Method.prototype._getClass = classes_test_join_check_Method__getClass;

function classes_test_join_check_Method__getField(name) {
    return null;
}
classes_test_join_check_Method.prototype._getField = classes_test_join_check_Method__getField;

function classes_test_join_check_Method__setField(name, value) {}
classes_test_join_check_Method.prototype._setField = classes_test_join_check_Method__setField;

// CLASS classes_test_join

function classes_test_join() {
    classes_test_join.super_.call(this, "classes.test_join");
    (this).name = "classes.test_join";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.List<quark.String>", "parts"), new quark.reflect.Field("quark.String", "strparts"), new quark.reflect.Field("quark.String", "sep")];
    (this).methods = [new classes_test_join_that_Method(), new classes_test_join_a_Method(), new classes_test_join_does_Method(), new classes_test_join_check_Method()];
    (this).parents = ["classes.string_test"];
}
exports.classes_test_join = classes_test_join;
_qrt.util.inherits(classes_test_join, quark.reflect.Class);

function classes_test_join__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_test_join.prototype.__init_fields__ = classes_test_join__init_fields__;
classes_test_join.singleton = new classes_test_join();
function classes_test_join_construct(args) {
    return new classes.test_join(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_join.prototype.construct = classes_test_join_construct;

function classes_test_join_isAbstract() {
    return false;
}
classes_test_join.prototype.isAbstract = classes_test_join_isAbstract;

function classes_test_join__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_join.prototype._getClass = classes_test_join__getClass;

function classes_test_join__getField(name) {
    return null;
}
classes_test_join.prototype._getField = classes_test_join__getField;

function classes_test_join__setField(name, value) {}
classes_test_join.prototype._setField = classes_test_join__setField;


// CLASS classes_test_split_that_Method

function classes_test_split_that_Method() {
    classes_test_split_that_Method.super_.call(this, "classes.test_split", "that", ["quark.String"]);
}
exports.classes_test_split_that_Method = classes_test_split_that_Method;
_qrt.util.inherits(classes_test_split_that_Method, quark.reflect.Method);

function classes_test_split_that_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_split_that_Method.prototype.__init_fields__ = classes_test_split_that_Method__init_fields__;

function classes_test_split_that_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_split; });
    return (obj).that(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_split_that_Method.prototype.invoke = classes_test_split_that_Method_invoke;

function classes_test_split_that_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_split_that_Method.prototype._getClass = classes_test_split_that_Method__getClass;

function classes_test_split_that_Method__getField(name) {
    return null;
}
classes_test_split_that_Method.prototype._getField = classes_test_split_that_Method__getField;

function classes_test_split_that_Method__setField(name, value) {}
classes_test_split_that_Method.prototype._setField = classes_test_split_that_Method__setField;

// CLASS classes_test_split_does_Method

function classes_test_split_does_Method() {
    classes_test_split_does_Method.super_.call(this, "classes.test_split", "does", ["quark.String"]);
}
exports.classes_test_split_does_Method = classes_test_split_does_Method;
_qrt.util.inherits(classes_test_split_does_Method, quark.reflect.Method);

function classes_test_split_does_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_split_does_Method.prototype.__init_fields__ = classes_test_split_does_Method__init_fields__;

function classes_test_split_does_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_split; });
    return (obj).does(_qrt.cast((args)[0], function () { return String; }));
}
classes_test_split_does_Method.prototype.invoke = classes_test_split_does_Method_invoke;

function classes_test_split_does_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_split_does_Method.prototype._getClass = classes_test_split_does_Method__getClass;

function classes_test_split_does_Method__getField(name) {
    return null;
}
classes_test_split_does_Method.prototype._getField = classes_test_split_does_Method__getField;

function classes_test_split_does_Method__setField(name, value) {}
classes_test_split_does_Method.prototype._setField = classes_test_split_does_Method__setField;

// CLASS classes_test_split_check_Method

function classes_test_split_check_Method() {
    classes_test_split_check_Method.super_.call(this, "quark.void", "check", ["quark.String", "quark.String", "quark.String", "quark.String"]);
}
exports.classes_test_split_check_Method = classes_test_split_check_Method;
_qrt.util.inherits(classes_test_split_check_Method, quark.reflect.Method);

function classes_test_split_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_test_split_check_Method.prototype.__init_fields__ = classes_test_split_check_Method__init_fields__;

function classes_test_split_check_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.test_split; });
    (obj).check(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }), _qrt.cast((args)[2], function () { return String; }), _qrt.cast((args)[3], function () { return String; }));
    return null;
}
classes_test_split_check_Method.prototype.invoke = classes_test_split_check_Method_invoke;

function classes_test_split_check_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_split_check_Method.prototype._getClass = classes_test_split_check_Method__getClass;

function classes_test_split_check_Method__getField(name) {
    return null;
}
classes_test_split_check_Method.prototype._getField = classes_test_split_check_Method__getField;

function classes_test_split_check_Method__setField(name, value) {}
classes_test_split_check_Method.prototype._setField = classes_test_split_check_Method__setField;

// CLASS classes_test_split

function classes_test_split() {
    classes_test_split.super_.call(this, "classes.test_split");
    (this).name = "classes.test_split";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.String", "sep"), new quark.reflect.Field("quark.String", "altsep")];
    (this).methods = [new classes_test_split_that_Method(), new classes_test_split_does_Method(), new classes_test_split_check_Method()];
    (this).parents = ["classes.string_test"];
}
exports.classes_test_split = classes_test_split;
_qrt.util.inherits(classes_test_split, quark.reflect.Class);

function classes_test_split__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_test_split.prototype.__init_fields__ = classes_test_split__init_fields__;
classes_test_split.singleton = new classes_test_split();
function classes_test_split_construct(args) {
    return new classes.test_split(_qrt.cast((args)[0], function () { return String; }), _qrt.cast((args)[1], function () { return String; }));
}
classes_test_split.prototype.construct = classes_test_split_construct;

function classes_test_split_isAbstract() {
    return false;
}
classes_test_split.prototype.isAbstract = classes_test_split_isAbstract;

function classes_test_split__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_test_split.prototype._getClass = classes_test_split__getClass;

function classes_test_split__getField(name) {
    return null;
}
classes_test_split.prototype._getField = classes_test_split__getField;

function classes_test_split__setField(name, value) {}
classes_test_split.prototype._setField = classes_test_split__setField;


// CLASS classes_stuff_Test_foo_Method

function classes_stuff_Test_foo_Method() {
    classes_stuff_Test_foo_Method.super_.call(this, "classes.stuff.Test", "foo", ["classes.stuff.Test"]);
}
exports.classes_stuff_Test_foo_Method = classes_stuff_Test_foo_Method;
_qrt.util.inherits(classes_stuff_Test_foo_Method, quark.reflect.Method);

function classes_stuff_Test_foo_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_stuff_Test_foo_Method.prototype.__init_fields__ = classes_stuff_Test_foo_Method__init_fields__;

function classes_stuff_Test_foo_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.stuff.Test; });
    return (obj).foo(_qrt.cast((args)[0], function () { return classes.stuff.Test; }));
}
classes_stuff_Test_foo_Method.prototype.invoke = classes_stuff_Test_foo_Method_invoke;

function classes_stuff_Test_foo_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_stuff_Test_foo_Method.prototype._getClass = classes_stuff_Test_foo_Method__getClass;

function classes_stuff_Test_foo_Method__getField(name) {
    return null;
}
classes_stuff_Test_foo_Method.prototype._getField = classes_stuff_Test_foo_Method__getField;

function classes_stuff_Test_foo_Method__setField(name, value) {}
classes_stuff_Test_foo_Method.prototype._setField = classes_stuff_Test_foo_Method__setField;

// CLASS classes_stuff_Test_test_Method

function classes_stuff_Test_test_Method() {
    classes_stuff_Test_test_Method.super_.call(this, "quark.void", "test", []);
}
exports.classes_stuff_Test_test_Method = classes_stuff_Test_test_Method;
_qrt.util.inherits(classes_stuff_Test_test_Method, quark.reflect.Method);

function classes_stuff_Test_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
classes_stuff_Test_test_Method.prototype.__init_fields__ = classes_stuff_Test_test_Method__init_fields__;

function classes_stuff_Test_test_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return classes.stuff.Test; });
    (obj).test();
    return null;
}
classes_stuff_Test_test_Method.prototype.invoke = classes_stuff_Test_test_Method_invoke;

function classes_stuff_Test_test_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_stuff_Test_test_Method.prototype._getClass = classes_stuff_Test_test_Method__getClass;

function classes_stuff_Test_test_Method__getField(name) {
    return null;
}
classes_stuff_Test_test_Method.prototype._getField = classes_stuff_Test_test_Method__getField;

function classes_stuff_Test_test_Method__setField(name, value) {}
classes_stuff_Test_test_Method.prototype._setField = classes_stuff_Test_test_Method__setField;

// CLASS classes_stuff_Test

function classes_stuff_Test() {
    classes_stuff_Test.super_.call(this, "classes.stuff.Test");
    (this).name = "classes.stuff.Test";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new classes_stuff_Test_foo_Method(), new classes_stuff_Test_test_Method()];
    (this).parents = ["quark.Object"];
}
exports.classes_stuff_Test = classes_stuff_Test;
_qrt.util.inherits(classes_stuff_Test, quark.reflect.Class);

function classes_stuff_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
classes_stuff_Test.prototype.__init_fields__ = classes_stuff_Test__init_fields__;
classes_stuff_Test.singleton = new classes_stuff_Test();
function classes_stuff_Test_construct(args) {
    return new classes.stuff.Test();
}
classes_stuff_Test.prototype.construct = classes_stuff_Test_construct;

function classes_stuff_Test_isAbstract() {
    return false;
}
classes_stuff_Test.prototype.isAbstract = classes_stuff_Test_isAbstract;

function classes_stuff_Test__getClass() {
    return _qrt.cast(null, function () { return String; });
}
classes_stuff_Test.prototype._getClass = classes_stuff_Test__getClass;

function classes_stuff_Test__getField(name) {
    return null;
}
classes_stuff_Test.prototype._getField = classes_stuff_Test__getField;

function classes_stuff_Test__setField(name, value) {}
classes_stuff_Test.prototype._setField = classes_stuff_Test__setField;


// CLASS statics_Foo_setCount_Method

function statics_Foo_setCount_Method() {
    statics_Foo_setCount_Method.super_.call(this, "quark.void", "setCount", ["quark.int"]);
}
exports.statics_Foo_setCount_Method = statics_Foo_setCount_Method;
_qrt.util.inherits(statics_Foo_setCount_Method, quark.reflect.Method);

function statics_Foo_setCount_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
statics_Foo_setCount_Method.prototype.__init_fields__ = statics_Foo_setCount_Method__init_fields__;

function statics_Foo_setCount_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return statics.Foo; });
    statics.Foo.setCount(_qrt.cast((args)[0], function () { return Number; }));
    return null;
}
statics_Foo_setCount_Method.prototype.invoke = statics_Foo_setCount_Method_invoke;

function statics_Foo_setCount_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
statics_Foo_setCount_Method.prototype._getClass = statics_Foo_setCount_Method__getClass;

function statics_Foo_setCount_Method__getField(name) {
    return null;
}
statics_Foo_setCount_Method.prototype._getField = statics_Foo_setCount_Method__getField;

function statics_Foo_setCount_Method__setField(name, value) {}
statics_Foo_setCount_Method.prototype._setField = statics_Foo_setCount_Method__setField;

// CLASS statics_Foo_getCount_Method

function statics_Foo_getCount_Method() {
    statics_Foo_getCount_Method.super_.call(this, "quark.int", "getCount", []);
}
exports.statics_Foo_getCount_Method = statics_Foo_getCount_Method;
_qrt.util.inherits(statics_Foo_getCount_Method, quark.reflect.Method);

function statics_Foo_getCount_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
statics_Foo_getCount_Method.prototype.__init_fields__ = statics_Foo_getCount_Method__init_fields__;

function statics_Foo_getCount_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return statics.Foo; });
    return statics.Foo.getCount();
}
statics_Foo_getCount_Method.prototype.invoke = statics_Foo_getCount_Method_invoke;

function statics_Foo_getCount_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
statics_Foo_getCount_Method.prototype._getClass = statics_Foo_getCount_Method__getClass;

function statics_Foo_getCount_Method__getField(name) {
    return null;
}
statics_Foo_getCount_Method.prototype._getField = statics_Foo_getCount_Method__getField;

function statics_Foo_getCount_Method__setField(name, value) {}
statics_Foo_getCount_Method.prototype._setField = statics_Foo_getCount_Method__setField;

// CLASS statics_Foo_test1_Method

function statics_Foo_test1_Method() {
    statics_Foo_test1_Method.super_.call(this, "quark.void", "test1", []);
}
exports.statics_Foo_test1_Method = statics_Foo_test1_Method;
_qrt.util.inherits(statics_Foo_test1_Method, quark.reflect.Method);

function statics_Foo_test1_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
statics_Foo_test1_Method.prototype.__init_fields__ = statics_Foo_test1_Method__init_fields__;

function statics_Foo_test1_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return statics.Foo; });
    (obj).test1();
    return null;
}
statics_Foo_test1_Method.prototype.invoke = statics_Foo_test1_Method_invoke;

function statics_Foo_test1_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
statics_Foo_test1_Method.prototype._getClass = statics_Foo_test1_Method__getClass;

function statics_Foo_test1_Method__getField(name) {
    return null;
}
statics_Foo_test1_Method.prototype._getField = statics_Foo_test1_Method__getField;

function statics_Foo_test1_Method__setField(name, value) {}
statics_Foo_test1_Method.prototype._setField = statics_Foo_test1_Method__setField;

// CLASS statics_Foo_test2_Method

function statics_Foo_test2_Method() {
    statics_Foo_test2_Method.super_.call(this, "quark.void", "test2", []);
}
exports.statics_Foo_test2_Method = statics_Foo_test2_Method;
_qrt.util.inherits(statics_Foo_test2_Method, quark.reflect.Method);

function statics_Foo_test2_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
statics_Foo_test2_Method.prototype.__init_fields__ = statics_Foo_test2_Method__init_fields__;

function statics_Foo_test2_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return statics.Foo; });
    (obj).test2();
    return null;
}
statics_Foo_test2_Method.prototype.invoke = statics_Foo_test2_Method_invoke;

function statics_Foo_test2_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
statics_Foo_test2_Method.prototype._getClass = statics_Foo_test2_Method__getClass;

function statics_Foo_test2_Method__getField(name) {
    return null;
}
statics_Foo_test2_Method.prototype._getField = statics_Foo_test2_Method__getField;

function statics_Foo_test2_Method__setField(name, value) {}
statics_Foo_test2_Method.prototype._setField = statics_Foo_test2_Method__setField;

// CLASS statics_Foo_test3_Method

function statics_Foo_test3_Method() {
    statics_Foo_test3_Method.super_.call(this, "quark.void", "test3", []);
}
exports.statics_Foo_test3_Method = statics_Foo_test3_Method;
_qrt.util.inherits(statics_Foo_test3_Method, quark.reflect.Method);

function statics_Foo_test3_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
statics_Foo_test3_Method.prototype.__init_fields__ = statics_Foo_test3_Method__init_fields__;

function statics_Foo_test3_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return statics.Foo; });
    (obj).test3();
    return null;
}
statics_Foo_test3_Method.prototype.invoke = statics_Foo_test3_Method_invoke;

function statics_Foo_test3_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
statics_Foo_test3_Method.prototype._getClass = statics_Foo_test3_Method__getClass;

function statics_Foo_test3_Method__getField(name) {
    return null;
}
statics_Foo_test3_Method.prototype._getField = statics_Foo_test3_Method__getField;

function statics_Foo_test3_Method__setField(name, value) {}
statics_Foo_test3_Method.prototype._setField = statics_Foo_test3_Method__setField;

// CLASS statics_Foo_test4_Method

function statics_Foo_test4_Method() {
    statics_Foo_test4_Method.super_.call(this, "quark.void", "test4", []);
}
exports.statics_Foo_test4_Method = statics_Foo_test4_Method;
_qrt.util.inherits(statics_Foo_test4_Method, quark.reflect.Method);

function statics_Foo_test4_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
statics_Foo_test4_Method.prototype.__init_fields__ = statics_Foo_test4_Method__init_fields__;

function statics_Foo_test4_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return statics.Foo; });
    (obj).test4();
    return null;
}
statics_Foo_test4_Method.prototype.invoke = statics_Foo_test4_Method_invoke;

function statics_Foo_test4_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
statics_Foo_test4_Method.prototype._getClass = statics_Foo_test4_Method__getClass;

function statics_Foo_test4_Method__getField(name) {
    return null;
}
statics_Foo_test4_Method.prototype._getField = statics_Foo_test4_Method__getField;

function statics_Foo_test4_Method__setField(name, value) {}
statics_Foo_test4_Method.prototype._setField = statics_Foo_test4_Method__setField;

// CLASS statics_Foo

function statics_Foo() {
    statics_Foo.super_.call(this, "statics.Foo");
    (this).name = "statics.Foo";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.int", "count")];
    (this).methods = [new statics_Foo_setCount_Method(), new statics_Foo_getCount_Method(), new statics_Foo_test1_Method(), new statics_Foo_test2_Method(), new statics_Foo_test3_Method(), new statics_Foo_test4_Method()];
    (this).parents = ["quark.Object"];
}
exports.statics_Foo = statics_Foo;
_qrt.util.inherits(statics_Foo, quark.reflect.Class);

function statics_Foo__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
statics_Foo.prototype.__init_fields__ = statics_Foo__init_fields__;
statics_Foo.singleton = new statics_Foo();
function statics_Foo_construct(args) {
    return new statics.Foo();
}
statics_Foo.prototype.construct = statics_Foo_construct;

function statics_Foo_isAbstract() {
    return false;
}
statics_Foo.prototype.isAbstract = statics_Foo_isAbstract;

function statics_Foo__getClass() {
    return _qrt.cast(null, function () { return String; });
}
statics_Foo.prototype._getClass = statics_Foo__getClass;

function statics_Foo__getField(name) {
    return null;
}
statics_Foo.prototype._getField = statics_Foo__getField;

function statics_Foo__setField(name, value) {}
statics_Foo.prototype._setField = statics_Foo__setField;


// CLASS docs_Test_test_Method

function docs_Test_test_Method() {
    docs_Test_test_Method.super_.call(this, "quark.int", "test", ["quark.String"]);
}
exports.docs_Test_test_Method = docs_Test_test_Method;
_qrt.util.inherits(docs_Test_test_Method, quark.reflect.Method);

function docs_Test_test_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
docs_Test_test_Method.prototype.__init_fields__ = docs_Test_test_Method__init_fields__;

function docs_Test_test_Method_invoke(object, args) {
    var obj = _qrt.cast(object, function () { return docs.Test; });
    return (obj).test(_qrt.cast((args)[0], function () { return String; }));
}
docs_Test_test_Method.prototype.invoke = docs_Test_test_Method_invoke;

function docs_Test_test_Method__getClass() {
    return _qrt.cast(null, function () { return String; });
}
docs_Test_test_Method.prototype._getClass = docs_Test_test_Method__getClass;

function docs_Test_test_Method__getField(name) {
    return null;
}
docs_Test_test_Method.prototype._getField = docs_Test_test_Method__getField;

function docs_Test_test_Method__setField(name, value) {}
docs_Test_test_Method.prototype._setField = docs_Test_test_Method__setField;

// CLASS docs_Test

function docs_Test() {
    docs_Test.super_.call(this, "docs.Test");
    (this).name = "docs.Test";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "name")];
    (this).methods = [new docs_Test_test_Method()];
    (this).parents = ["quark.Object"];
}
exports.docs_Test = docs_Test;
_qrt.util.inherits(docs_Test, quark.reflect.Class);

function docs_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
docs_Test.prototype.__init_fields__ = docs_Test__init_fields__;
docs_Test.singleton = new docs_Test();
function docs_Test_construct(args) {
    return new docs.Test();
}
docs_Test.prototype.construct = docs_Test_construct;

function docs_Test_isAbstract() {
    return false;
}
docs_Test.prototype.isAbstract = docs_Test_isAbstract;

function docs_Test__getClass() {
    return _qrt.cast(null, function () { return String; });
}
docs_Test.prototype._getClass = docs_Test__getClass;

function docs_Test__getField(name) {
    return null;
}
docs_Test.prototype._getField = docs_Test__getField;

function docs_Test__setField(name, value) {}
docs_Test.prototype._setField = docs_Test__setField;


// CLASS quark_List_quark_List_quark_Object__

function quark_List_quark_List_quark_Object__() {
    quark_List_quark_List_quark_Object__.super_.call(this, "quark.List<quark.List<quark.Object>>");
    (this).name = "quark.List";
    (this).parameters = ["quark.List<quark.Object>"];
    (this).fields = [];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.quark_List_quark_List_quark_Object__ = quark_List_quark_List_quark_Object__;
_qrt.util.inherits(quark_List_quark_List_quark_Object__, quark.reflect.Class);

function quark_List_quark_List_quark_Object____init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_List_quark_Object__.prototype.__init_fields__ = quark_List_quark_List_quark_Object____init_fields__;
quark_List_quark_List_quark_Object__.singleton = new quark_List_quark_List_quark_Object__();
function quark_List_quark_List_quark_Object___construct(args) {
    return new Array();
}
quark_List_quark_List_quark_Object__.prototype.construct = quark_List_quark_List_quark_Object___construct;

function quark_List_quark_List_quark_Object___isAbstract() {
    return false;
}
quark_List_quark_List_quark_Object__.prototype.isAbstract = quark_List_quark_List_quark_Object___isAbstract;

function quark_List_quark_List_quark_Object____getClass() {
    return _qrt.cast(null, function () { return String; });
}
quark_List_quark_List_quark_Object__.prototype._getClass = quark_List_quark_List_quark_Object____getClass;

function quark_List_quark_List_quark_Object____getField(name) {
    return null;
}
quark_List_quark_List_quark_Object__.prototype._getField = quark_List_quark_List_quark_Object____getField;

function quark_List_quark_List_quark_Object____setField(name, value) {}
quark_List_quark_List_quark_Object__.prototype._setField = quark_List_quark_List_quark_Object____setField;


// CLASS quark_List_quark_Object_

function quark_List_quark_Object_() {
    quark_List_quark_Object_.super_.call(this, "quark.List<quark.Object>");
    (this).name = "quark.List";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [];
    (this).parents = ["quark.Object"];
}
exports.quark_List_quark_Object_ = quark_List_quark_Object_;
_qrt.util.inherits(quark_List_quark_Object_, quark.reflect.Class);

function quark_List_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_Object_.prototype.__init_fields__ = quark_List_quark_Object___init_fields__;
quark_List_quark_Object_.singleton = new quark_List_quark_Object_();
function quark_List_quark_Object__construct(args) {
    return new Array();
}
quark_List_quark_Object_.prototype.construct = quark_List_quark_Object__construct;

function quark_List_quark_Object__isAbstract() {
    return false;
}
quark_List_quark_Object_.prototype.isAbstract = quark_List_quark_Object__isAbstract;

function quark_List_quark_Object___getClass() {
    return _qrt.cast(null, function () { return String; });
}
quark_List_quark_Object_.prototype._getClass = quark_List_quark_Object___getClass;

function quark_List_quark_Object___getField(name) {
    return null;
}
quark_List_quark_Object_.prototype._getField = quark_List_quark_Object___getField;

function quark_List_quark_Object___setField(name, value) {}
quark_List_quark_Object_.prototype._setField = quark_List_quark_Object___setField;


// CLASS quark_List_quark_String_

function quark_List_quark_String_() {
    quark_List_quark_String_.super_.call(this, "quark.List<quark.String>");
    (this).name = "quark.List";
    (this).parameters = ["quark.String"];
    (this).fields = [];
    (this).methods = [];
    (this).parents = ["quark.Object"];
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

function quark_List_quark_String__isAbstract() {
    return false;
}
quark_List_quark_String_.prototype.isAbstract = quark_List_quark_String__isAbstract;

function quark_List_quark_String___getClass() {
    return _qrt.cast(null, function () { return String; });
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
Root.generics_Box_quark_Object__md = generics_Box_quark_Object_.singleton;
Root.generics_Box_quark_int__md = generics_Box_quark_int_.singleton;
Root.generics_Crate_quark_Object__md = generics_Crate_quark_Object_.singleton;
Root.generics_Sack_md = generics_Sack.singleton;
Root.generics_Matrix_quark_Object__md = generics_Matrix_quark_Object_.singleton;
Root.generics_constructors_Box_quark_Object__md = generics_constructors_Box_quark_Object_.singleton;
Root.generics_pkg_Foo_quark_Object__md = generics_pkg_Foo_quark_Object_.singleton;
Root.generics_pkg_StringFoo_md = generics_pkg_StringFoo.singleton;
Root.generics_pkg_Box_quark_String__md = generics_pkg_Box_quark_String_.singleton;
Root.generics_pkg_StringBox_md = generics_pkg_StringBox.singleton;
Root.generics_ccc_TLSContextInitializer_md = generics_ccc_TLSContextInitializer.singleton;
Root.generics_ccc_Context_md = generics_ccc_Context.singleton;
Root.generics_ccc_TLSInitializer_quark_Object__md = generics_ccc_TLSInitializer_quark_Object_.singleton;
Root.generics_ccc_TLS_generics_ccc_Context__md = generics_ccc_TLS_generics_ccc_Context_.singleton;
Root.inheritance_Base_md = inheritance_Base.singleton;
Root.inheritance_Test_md = inheritance_Test.singleton;
Root.inheritance_A_md = inheritance_A.singleton;
Root.inheritance_B_md = inheritance_B.singleton;
Root.inheritance_C_md = inheritance_C.singleton;
Root.inheritance_X_md = inheritance_X.singleton;
Root.inheritance_Y_md = inheritance_Y.singleton;
Root.inheritance_t1_A_md = inheritance_t1_A.singleton;
Root.inheritance_t1_B_md = inheritance_t1_B.singleton;
Root.inheritance_t1_C_md = inheritance_t1_C.singleton;
Root.inheritance_t2_A_md = inheritance_t2_A.singleton;
Root.inheritance_t2_B_md = inheritance_t2_B.singleton;
Root.inheritance_t2_X_quark_int__md = inheritance_t2_X_quark_int_.singleton;
Root.inheritance_t2_Y_md = inheritance_t2_Y.singleton;
Root.inheritance_pets_Pet_md = inheritance_pets_Pet.singleton;
Root.inheritance_pets_Cat_md = inheritance_pets_Cat.singleton;
Root.inheritance_pets_Dog_md = inheritance_pets_Dog.singleton;
Root.inheritance_Message_md = inheritance_Message.singleton;
Root.inheritance_Ping_md = inheritance_Ping.singleton;
Root.inheritance_Pong_md = inheritance_Pong.singleton;
Root.inheritance_super__A_md = inheritance_super__A.singleton;
Root.inheritance_super__B_md = inheritance_super__B.singleton;
Root.inheritance_use_before_def_Bar_md = inheritance_use_before_def_Bar.singleton;
Root.inheritance_use_before_def_Foo_md = inheritance_use_before_def_Foo.singleton;
Root.interfaces_A_md = interfaces_A.singleton;
Root.interfaces_B_md = interfaces_B.singleton;
Root.interfaces_C_md = interfaces_C.singleton;
Root.interfaces_T1_md = interfaces_T1.singleton;
Root.interfaces_T2_md = interfaces_T2.singleton;
Root.interfaces_T3_md = interfaces_T3.singleton;
Root.interfaces_T4_md = interfaces_T4.singleton;
Root.interfaces_T5_md = interfaces_T5.singleton;
Root.interfaces_Foo_md = interfaces_Foo.singleton;
Root.interfaces_Bar_quark_Object__md = interfaces_Bar_quark_Object_.singleton;
Root.interfaces_Baz_md = interfaces_Baz.singleton;
Root.interfaces_RazBar_md = interfaces_RazBar.singleton;
Root.interfaces_RazFaz_quark_Object__md = interfaces_RazFaz_quark_Object_.singleton;
Root.interfaces_BazBar_md = interfaces_BazBar.singleton;
Root.interfaces_BazFaz_quark_Object__md = interfaces_BazFaz_quark_Object_.singleton;
Root.classes_Overload_md = classes_Overload.singleton;
Root.classes_Test_md = classes_Test.singleton;
Root.classes_string_test_md = classes_string_test.singleton;
Root.classes_test_size_md = classes_test_size.singleton;
Root.classes_test_startsWith_md = classes_test_startsWith.singleton;
Root.classes_test_endsWith_md = classes_test_endsWith.singleton;
Root.classes_test_find_md = classes_test_find.singleton;
Root.classes_test_substring_md = classes_test_substring.singleton;
Root.classes_test_replace_md = classes_test_replace.singleton;
Root.classes_test_join_md = classes_test_join.singleton;
Root.classes_test_split_md = classes_test_split.singleton;
Root.classes_stuff_Test_md = classes_stuff_Test.singleton;
Root.statics_Foo_md = statics_Foo.singleton;
Root.docs_Test_md = docs_Test.singleton;
Root.quark_List_quark_List_quark_Object___md = quark_List_quark_List_quark_Object__.singleton;
Root.quark_List_quark_Object__md = quark_List_quark_Object_.singleton;
Root.quark_List_quark_String__md = quark_List_quark_String_.singleton;
function Root__getClass() {
    return _qrt.cast(null, function () { return String; });
}
Root.prototype._getClass = Root__getClass;

function Root__getField(name) {
    return null;
}
Root.prototype._getField = Root__getField;

function Root__setField(name, value) {}
Root.prototype._setField = Root__setField;

var generics = require('../generics/index.js');
exports.generics = generics;
var generics = require('../generics/index.js');
exports.generics = generics;
var generics = require('../generics/index.js');
exports.generics = generics;
var generics = require('../generics/index.js');
exports.generics = generics;
var inheritance = require('../inheritance/index.js');
exports.inheritance = inheritance;
var inheritance = require('../inheritance/index.js');
exports.inheritance = inheritance;
var inheritance = require('../inheritance/index.js');
exports.inheritance = inheritance;
var inheritance = require('../inheritance/index.js');
exports.inheritance = inheritance;
var inheritance = require('../inheritance/index.js');
exports.inheritance = inheritance;
var inheritance = require('../inheritance/index.js');
exports.inheritance = inheritance;
var interfaces = require('../interfaces/index.js');
exports.interfaces = interfaces;
var classes = require('../classes/index.js');
exports.classes = classes;
var classes = require('../classes/index.js');
exports.classes = classes;
var statics = require('../statics/index.js');
exports.statics = statics;
var docs = require('../docs/index.js');
exports.docs = docs;
