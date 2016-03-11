var _qrt = require("builtin/quark_runtime.js");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



// CLASS matrix_Matrix_builtin_int____get___Method

function matrix_Matrix_builtin_int____get___Method() {
    matrix_Matrix_builtin_int____get___Method.super_.call(this, "builtin.int", "__get__", ["builtin.int", "builtin.int"]);
}
exports.matrix_Matrix_builtin_int____get___Method = matrix_Matrix_builtin_int____get___Method;
_qrt.util.inherits(matrix_Matrix_builtin_int____get___Method, builtin.reflect.Method);

function matrix_Matrix_builtin_int____get___Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
matrix_Matrix_builtin_int____get___Method.prototype.__init_fields__ = matrix_Matrix_builtin_int____get___Method__init_fields__;

function matrix_Matrix_builtin_int____get___Method_invoke(object, args) {
    var obj = object;
    return (obj).__get__((args)[0], (args)[1]);
}
matrix_Matrix_builtin_int____get___Method.prototype.invoke = matrix_Matrix_builtin_int____get___Method_invoke;

function matrix_Matrix_builtin_int____get___Method__getClass() {
    return null;
}
matrix_Matrix_builtin_int____get___Method.prototype._getClass = matrix_Matrix_builtin_int____get___Method__getClass;

function matrix_Matrix_builtin_int____get___Method__getField(name) {
    return null;
}
matrix_Matrix_builtin_int____get___Method.prototype._getField = matrix_Matrix_builtin_int____get___Method__getField;

function matrix_Matrix_builtin_int____get___Method__setField(name, value) {}
matrix_Matrix_builtin_int____get___Method.prototype._setField = matrix_Matrix_builtin_int____get___Method__setField;

// CLASS matrix_Matrix_builtin_int____set___Method

function matrix_Matrix_builtin_int____set___Method() {
    matrix_Matrix_builtin_int____set___Method.super_.call(this, "builtin.void", "__set__", ["builtin.int", "builtin.int", "builtin.int"]);
}
exports.matrix_Matrix_builtin_int____set___Method = matrix_Matrix_builtin_int____set___Method;
_qrt.util.inherits(matrix_Matrix_builtin_int____set___Method, builtin.reflect.Method);

function matrix_Matrix_builtin_int____set___Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
matrix_Matrix_builtin_int____set___Method.prototype.__init_fields__ = matrix_Matrix_builtin_int____set___Method__init_fields__;

function matrix_Matrix_builtin_int____set___Method_invoke(object, args) {
    var obj = object;
    (obj).__set__((args)[0], (args)[1], (args)[2]);
    return null;
}
matrix_Matrix_builtin_int____set___Method.prototype.invoke = matrix_Matrix_builtin_int____set___Method_invoke;

function matrix_Matrix_builtin_int____set___Method__getClass() {
    return null;
}
matrix_Matrix_builtin_int____set___Method.prototype._getClass = matrix_Matrix_builtin_int____set___Method__getClass;

function matrix_Matrix_builtin_int____set___Method__getField(name) {
    return null;
}
matrix_Matrix_builtin_int____set___Method.prototype._getField = matrix_Matrix_builtin_int____set___Method__getField;

function matrix_Matrix_builtin_int____set___Method__setField(name, value) {}
matrix_Matrix_builtin_int____set___Method.prototype._setField = matrix_Matrix_builtin_int____set___Method__setField;

// CLASS matrix_Matrix_builtin_int_

function matrix_Matrix_builtin_int_() {
    matrix_Matrix_builtin_int_.super_.call(this, "matrix.Matrix<builtin.int>");
    (this).name = "matrix.Matrix";
    (this).parameters = ["builtin.int"];
    (this).fields = [new builtin.reflect.Field("builtin.int", "width"), new builtin.reflect.Field("builtin.int", "height"), new builtin.reflect.Field("builtin.List<builtin.List<builtin.Object>>", "columns")];
    (this).methods = [new matrix_Matrix_builtin_int____get___Method(), new matrix_Matrix_builtin_int____set___Method()];
}
exports.matrix_Matrix_builtin_int_ = matrix_Matrix_builtin_int_;
_qrt.util.inherits(matrix_Matrix_builtin_int_, builtin.reflect.Class);

function matrix_Matrix_builtin_int___init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
matrix_Matrix_builtin_int_.prototype.__init_fields__ = matrix_Matrix_builtin_int___init_fields__;
matrix_Matrix_builtin_int_.singleton = new matrix_Matrix_builtin_int_();
function matrix_Matrix_builtin_int__construct(args) {
    return new matrix.Matrix((args)[0], (args)[1]);
}
matrix_Matrix_builtin_int_.prototype.construct = matrix_Matrix_builtin_int__construct;

function matrix_Matrix_builtin_int___getClass() {
    return null;
}
matrix_Matrix_builtin_int_.prototype._getClass = matrix_Matrix_builtin_int___getClass;

function matrix_Matrix_builtin_int___getField(name) {
    return null;
}
matrix_Matrix_builtin_int_.prototype._getField = matrix_Matrix_builtin_int___getField;

function matrix_Matrix_builtin_int___setField(name, value) {}
matrix_Matrix_builtin_int_.prototype._setField = matrix_Matrix_builtin_int___setField;


// CLASS builtin_List_builtin_List_builtin_Object__

function builtin_List_builtin_List_builtin_Object__() {
    builtin_List_builtin_List_builtin_Object__.super_.call(this, "builtin.List<builtin.List<builtin.Object>>");
    (this).name = "builtin.List";
    (this).parameters = ["builtin.List<builtin.Object>"];
    (this).fields = [];
    (this).methods = [];
}
exports.builtin_List_builtin_List_builtin_Object__ = builtin_List_builtin_List_builtin_Object__;
_qrt.util.inherits(builtin_List_builtin_List_builtin_Object__, builtin.reflect.Class);

function builtin_List_builtin_List_builtin_Object____init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
builtin_List_builtin_List_builtin_Object__.prototype.__init_fields__ = builtin_List_builtin_List_builtin_Object____init_fields__;
builtin_List_builtin_List_builtin_Object__.singleton = new builtin_List_builtin_List_builtin_Object__();
function builtin_List_builtin_List_builtin_Object___construct(args) {
    return new Array();
}
builtin_List_builtin_List_builtin_Object__.prototype.construct = builtin_List_builtin_List_builtin_Object___construct;

function builtin_List_builtin_List_builtin_Object____getClass() {
    return null;
}
builtin_List_builtin_List_builtin_Object__.prototype._getClass = builtin_List_builtin_List_builtin_Object____getClass;

function builtin_List_builtin_List_builtin_Object____getField(name) {
    return null;
}
builtin_List_builtin_List_builtin_Object__.prototype._getField = builtin_List_builtin_List_builtin_Object____getField;

function builtin_List_builtin_List_builtin_Object____setField(name, value) {}
builtin_List_builtin_List_builtin_Object__.prototype._setField = builtin_List_builtin_List_builtin_Object____setField;


// CLASS builtin_List_builtin_Object_

function builtin_List_builtin_Object_() {
    builtin_List_builtin_Object_.super_.call(this, "builtin.List<builtin.Object>");
    (this).name = "builtin.List";
    (this).parameters = ["builtin.Object"];
    (this).fields = [];
    (this).methods = [];
}
exports.builtin_List_builtin_Object_ = builtin_List_builtin_Object_;
_qrt.util.inherits(builtin_List_builtin_Object_, builtin.reflect.Class);

function builtin_List_builtin_Object___init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
builtin_List_builtin_Object_.prototype.__init_fields__ = builtin_List_builtin_Object___init_fields__;
builtin_List_builtin_Object_.singleton = new builtin_List_builtin_Object_();
function builtin_List_builtin_Object__construct(args) {
    return new Array();
}
builtin_List_builtin_Object_.prototype.construct = builtin_List_builtin_Object__construct;

function builtin_List_builtin_Object___getClass() {
    return null;
}
builtin_List_builtin_Object_.prototype._getClass = builtin_List_builtin_Object___getClass;

function builtin_List_builtin_Object___getField(name) {
    return null;
}
builtin_List_builtin_Object_.prototype._getField = builtin_List_builtin_Object___getField;

function builtin_List_builtin_Object___setField(name, value) {}
builtin_List_builtin_Object_.prototype._setField = builtin_List_builtin_Object___setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.builtin_List_builtin_List_builtin_Object___md = builtin_List_builtin_List_builtin_Object__.singleton;
Root.builtin_List_builtin_Object__md = builtin_List_builtin_Object_.singleton;
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
