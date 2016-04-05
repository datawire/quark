var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS matrix_Matrix_quark_int____get___Method

function matrix_Matrix_quark_int____get___Method() {
    matrix_Matrix_quark_int____get___Method.super_.call(this, "quark.int", "__get__", ["quark.int", "quark.int"]);
}
exports.matrix_Matrix_quark_int____get___Method = matrix_Matrix_quark_int____get___Method;
_qrt.util.inherits(matrix_Matrix_quark_int____get___Method, quark.reflect.Method);

function matrix_Matrix_quark_int____get___Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
matrix_Matrix_quark_int____get___Method.prototype.__init_fields__ = matrix_Matrix_quark_int____get___Method__init_fields__;

function matrix_Matrix_quark_int____get___Method_invoke(object, args) {
    var obj = object;
    return (obj).__get__((args)[0], (args)[1]);
}
matrix_Matrix_quark_int____get___Method.prototype.invoke = matrix_Matrix_quark_int____get___Method_invoke;

function matrix_Matrix_quark_int____get___Method__getClass() {
    return null;
}
matrix_Matrix_quark_int____get___Method.prototype._getClass = matrix_Matrix_quark_int____get___Method__getClass;

function matrix_Matrix_quark_int____get___Method__getField(name) {
    return null;
}
matrix_Matrix_quark_int____get___Method.prototype._getField = matrix_Matrix_quark_int____get___Method__getField;

function matrix_Matrix_quark_int____get___Method__setField(name, value) {}
matrix_Matrix_quark_int____get___Method.prototype._setField = matrix_Matrix_quark_int____get___Method__setField;

// CLASS matrix_Matrix_quark_int____set___Method

function matrix_Matrix_quark_int____set___Method() {
    matrix_Matrix_quark_int____set___Method.super_.call(this, "quark.void", "__set__", ["quark.int", "quark.int", "quark.int"]);
}
exports.matrix_Matrix_quark_int____set___Method = matrix_Matrix_quark_int____set___Method;
_qrt.util.inherits(matrix_Matrix_quark_int____set___Method, quark.reflect.Method);

function matrix_Matrix_quark_int____set___Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
matrix_Matrix_quark_int____set___Method.prototype.__init_fields__ = matrix_Matrix_quark_int____set___Method__init_fields__;

function matrix_Matrix_quark_int____set___Method_invoke(object, args) {
    var obj = object;
    (obj).__set__((args)[0], (args)[1], (args)[2]);
    return null;
}
matrix_Matrix_quark_int____set___Method.prototype.invoke = matrix_Matrix_quark_int____set___Method_invoke;

function matrix_Matrix_quark_int____set___Method__getClass() {
    return null;
}
matrix_Matrix_quark_int____set___Method.prototype._getClass = matrix_Matrix_quark_int____set___Method__getClass;

function matrix_Matrix_quark_int____set___Method__getField(name) {
    return null;
}
matrix_Matrix_quark_int____set___Method.prototype._getField = matrix_Matrix_quark_int____set___Method__getField;

function matrix_Matrix_quark_int____set___Method__setField(name, value) {}
matrix_Matrix_quark_int____set___Method.prototype._setField = matrix_Matrix_quark_int____set___Method__setField;

// CLASS matrix_Matrix_quark_int_

function matrix_Matrix_quark_int_() {
    matrix_Matrix_quark_int_.super_.call(this, "matrix.Matrix<quark.int>");
    (this).name = "matrix.Matrix";
    (this).parameters = ["quark.int"];
    (this).fields = [new quark.reflect.Field("quark.int", "width"), new quark.reflect.Field("quark.int", "height"), new quark.reflect.Field("quark.List<quark.List<quark.Object>>", "columns")];
    (this).methods = [new matrix_Matrix_quark_int____get___Method(), new matrix_Matrix_quark_int____set___Method()];
}
exports.matrix_Matrix_quark_int_ = matrix_Matrix_quark_int_;
_qrt.util.inherits(matrix_Matrix_quark_int_, quark.reflect.Class);

function matrix_Matrix_quark_int___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
matrix_Matrix_quark_int_.prototype.__init_fields__ = matrix_Matrix_quark_int___init_fields__;
matrix_Matrix_quark_int_.singleton = new matrix_Matrix_quark_int_();
function matrix_Matrix_quark_int__construct(args) {
    return new matrix.Matrix((args)[0], (args)[1]);
}
matrix_Matrix_quark_int_.prototype.construct = matrix_Matrix_quark_int__construct;

function matrix_Matrix_quark_int___getClass() {
    return null;
}
matrix_Matrix_quark_int_.prototype._getClass = matrix_Matrix_quark_int___getClass;

function matrix_Matrix_quark_int___getField(name) {
    return null;
}
matrix_Matrix_quark_int_.prototype._getField = matrix_Matrix_quark_int___getField;

function matrix_Matrix_quark_int___setField(name, value) {}
matrix_Matrix_quark_int_.prototype._setField = matrix_Matrix_quark_int___setField;


// CLASS quark_List_quark_List_quark_Object__

function quark_List_quark_List_quark_Object__() {
    quark_List_quark_List_quark_Object__.super_.call(this, "quark.List<quark.List<quark.Object>>");
    (this).name = "quark.List";
    (this).parameters = ["quark.List<quark.Object>"];
    (this).fields = [];
    (this).methods = [];
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

function quark_List_quark_List_quark_Object____getClass() {
    return null;
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

function quark_List_quark_Object___getClass() {
    return null;
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
Root.quark_List_quark_List_quark_Object___md = quark_List_quark_List_quark_Object__.singleton;
Root.quark_List_quark_Object__md = quark_List_quark_Object_.singleton;
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

var matrix = require('../matrix/index.js');
exports.matrix = matrix;
