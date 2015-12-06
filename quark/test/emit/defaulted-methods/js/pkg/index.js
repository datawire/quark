var _qrt = require("datawire-quark-core");



/* BEGIN_BUILTIN */


// CLASS Class

function Class(id) {
    this.__init_fields__();
    (this).id = id;
    _class(this);
}
exports.Class = Class;

function Class__init_fields__() {
    this.id = null;
    this.name = null;
    this.parameters = null;
}
Class.prototype.__init_fields__ = Class__init_fields__;

function Class_getId() {
    return this.id;
}
Class.prototype.getId = Class_getId;

function Class_getName() {
    return this.name;
}
Class.prototype.getName = Class_getName;

function Class_getParameters() {
    return this.parameters;
}
Class.prototype.getParameters = Class_getParameters;

function Class_construct(args) {
    return _construct(this.getId(), args);
}
Class.prototype.construct = Class_construct;

function Class_getFields() {
    return _fields((this).id);
}
Class.prototype.getFields = Class_getFields;

function Class__getClass() {
    return "Class";
}
Class.prototype._getClass = Class__getClass;

function Class__getField(name) {
    if ((name) === ("id")) {
        return (this).id;
    }
    if ((name) === ("name")) {
        return (this).name;
    }
    if ((name) === ("parameters")) {
        return (this).parameters;
    }
    return null;
}
Class.prototype._getField = Class__getField;

function Class__setField(name, value) {
    if ((name) === ("id")) {
        (this).id = value;
    }
    if ((name) === ("name")) {
        (this).name = value;
    }
    if ((name) === ("parameters")) {
        (this).parameters = value;
    }
}
Class.prototype._setField = Class__setField;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


// CLASS Field

function Field(type, name) {
    this.__init_fields__();
    (this).type = type;
    (this).name = name;
}
exports.Field = Field;

function Field__init_fields__() {
    this.type = null;
    this.name = null;
}
Field.prototype.__init_fields__ = Field__init_fields__;

function Field__getClass() {
    return "Field";
}
Field.prototype._getClass = Field__getClass;

function Field__getField(name) {
    if ((name) === ("type")) {
        return (this).type;
    }
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
Field.prototype._getField = Field__getField;

function Field__setField(name, value) {
    if ((name) === ("type")) {
        (this).type = value;
    }
    if ((name) === ("name")) {
        (this).name = value;
    }
}
Field.prototype._setField = Field__setField;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


function toJSON(obj) {
    var result = new _qrt.JSONObject();
    if ((obj) === (null)) {
        (result).setNull();
        return result;
    }
    var cls = new Class(_qrt._getClass(obj));
    var idx = 0;
    if (((cls).name) === ("String")) {
        (result).setString(obj);
        return result;
    }
    if (((((((cls).name) === ("byte")) || (((cls).name) === ("short"))) || (((cls).name) === ("int"))) || (((cls).name) === ("long"))) || (((cls).name) === ("float"))) {
        (result).setNumber(obj);
        return result;
    }
    if (((cls).name) === ("List")) {
        (result).setList();
        var list = obj;
        while ((idx) < ((list).length)) {
            (result).setListItem(idx, toJSON((list)[idx]));
            idx = (idx) + (1);
        }
        return result;
    }
    if (((cls).name) === ("Map")) {
        (result).setObject();
        var map = obj;
        return result;
    }
    (result).setObjectItem(("$class"), ((new _qrt.JSONObject()).setString((cls).id)));
    var fields = (cls).getFields();
    while ((idx) < ((fields).length)) {
        (result).setObjectItem((((fields)[idx]).name), (toJSON((obj)._getField(((fields)[idx]).name))));
        idx = (idx) + (1);
    }
    return result;
}
exports.toJSON = toJSON;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


function fromJSON(cls, json) {
    if (((json) === (null)) || ((json).isNull())) {
        return null;
    }
    var idx = 0;
    if (((cls).name) === ("List")) {
        var list = (cls).construct([]);
        while ((idx) < ((json).size())) {
            (list).push(fromJSON(((cls).parameters)[0], (json).getListItem(idx)));
            idx = (idx) + (1);
        }
        return list;
    }
    var fields = (cls).getFields();
    var result = (cls).construct([]);
    while ((idx) < ((fields).length)) {
        var f = (fields)[idx];
        idx = (idx) + (1);
        if ((((f).type).name) === ("String")) {
            var s = ((json).getObjectItem((f).name)).getString();
            (result)._setField(((f).name), (s));
            continue;
        }
        if ((((f).type).name) === ("float")) {
            var flt = ((json).getObjectItem((f).name)).getNumber();
            (result)._setField(((f).name), (flt));
            continue;
        }
        if ((((f).type).name) === ("int")) {
            if (!(((json).getObjectItem((f).name)).isNull())) {
                var i = Math.round(((json).getObjectItem((f).name)).getNumber());
                (result)._setField(((f).name), (i));
            }
            continue;
        }
        if ((((f).type).name) === ("bool")) {
            if (!(((json).getObjectItem((f).name)).isNull())) {
                var b = ((json).getObjectItem((f).name)).getBool();
                (result)._setField(((f).name), (b));
            }
            continue;
        }
        (result)._setField(((f).name), (fromJSON((f).type, (json).getObjectItem((f).name))));
    }
    return result;
}
exports.fromJSON = fromJSON;
/* END_BUILTIN */



// CLASS A
function A() {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {}
A.prototype.__init_fields__ = A__init_fields__;

function A_foo() { /* interface */ }
A.prototype.foo = A_foo;

function A_bar() {
    _qrt.print("A bar");
    (this).foo();
}
A.prototype.bar = A_bar;

// CLASS B
function B() {
    this.__init_fields__();
}
exports.B = B;

function B__init_fields__() {}
B.prototype.__init_fields__ = B__init_fields__;

function B_bar() {
    _qrt.print("B bar");
}
B.prototype.bar = B_bar;

// CLASS C
function C() {
    this.__init_fields__();
}
exports.C = C;

function C__init_fields__() {}
C.prototype.__init_fields__ = C__init_fields__;

function C_foo() {
    _qrt.print("C mixin for foo");
}
C.prototype.foo = C_foo;

// CLASS T1
function T1() {
    this.__init_fields__();
}
exports.T1 = T1;

function T1__init_fields__() {}
T1.prototype.__init_fields__ = T1__init_fields__;

function T1_foo() {
    _qrt.print("T1 foo");
}
T1.prototype.foo = T1_foo;

function T1__getClass() {
    return "pkg.T1";
}
T1.prototype._getClass = T1__getClass;

function T1__getField(name) {
    return null;
}
T1.prototype._getField = T1__getField;

function T1__setField(name, value) {}
T1.prototype._setField = T1__setField;

function T1_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T1.prototype.bar = T1_bar;

// CLASS T2
function T2() {
    this.__init_fields__();
}
exports.T2 = T2;

function T2__init_fields__() {}
T2.prototype.__init_fields__ = T2__init_fields__;

function T2_foo() {
    _qrt.print("T2 foo");
}
T2.prototype.foo = T2_foo;

function T2__getClass() {
    return "pkg.T2";
}
T2.prototype._getClass = T2__getClass;

function T2__getField(name) {
    return null;
}
T2.prototype._getField = T2__getField;

function T2__setField(name, value) {}
T2.prototype._setField = T2__setField;

function T2_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T2.prototype.bar = T2_bar;

// CLASS T3
function T3() {
    this.__init_fields__();
}
exports.T3 = T3;

function T3__init_fields__() {}
T3.prototype.__init_fields__ = T3__init_fields__;

function T3_foo() {
    _qrt.print("T3 foo");
}
T3.prototype.foo = T3_foo;

function T3__getClass() {
    return "pkg.T3";
}
T3.prototype._getClass = T3__getClass;

function T3__getField(name) {
    return null;
}
T3.prototype._getField = T3__getField;

function T3__setField(name, value) {}
T3.prototype._setField = T3__setField;

function T3_bar() {
    _qrt.print("B bar");
}
T3.prototype.bar = T3_bar;

// CLASS T4
function T4() {
    this.__init_fields__();
}
exports.T4 = T4;

function T4__init_fields__() {}
T4.prototype.__init_fields__ = T4__init_fields__;

function T4__getClass() {
    return "pkg.T4";
}
T4.prototype._getClass = T4__getClass;

function T4__getField(name) {
    return null;
}
T4.prototype._getField = T4__getField;

function T4__setField(name, value) {}
T4.prototype._setField = T4__setField;

function T4_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T4.prototype.bar = T4_bar;

function T4_foo() {
    _qrt.print("C mixin for foo");
}
T4.prototype.foo = T4_foo;

// CLASS T5
function T5() {
    this.__init_fields__();
}
exports.T5 = T5;

function T5__init_fields__() {}
T5.prototype.__init_fields__ = T5__init_fields__;

function T5_foo() {
    _qrt.print("T5 foo");
}
T5.prototype.foo = T5_foo;

function T5__getClass() {
    return "pkg.T5";
}
T5.prototype._getClass = T5__getClass;

function T5__getField(name) {
    return null;
}
T5.prototype._getField = T5__getField;

function T5__setField(name, value) {}
T5.prototype._setField = T5__setField;

function T5_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T5.prototype.bar = T5_bar;

function main() {
    var t1 = new T1();
    (t1).foo();
    (t1).bar();
    _qrt.print("===");
    var t2 = new T2();
    (t2).foo();
    (t2).bar();
    _qrt.print("===");
    var t3 = new T3();
    (t3).foo();
    (t3).bar();
    _qrt.print("===");
    var t4 = new T4();
    (t4).foo();
    (t4).bar();
    _qrt.print("===");
    var t5 = new T5();
    (t5).foo();
    (t5).bar();
}
exports.main = main;

function _construct(className, args) {
    if ((className) === ("Class")) {
        return new Class((args)[0]);
    }
    if ((className) === ("Field")) {
        return new Field((args)[0], (args)[1]);
    }
    if ((className) === ("List<Object>")) {
        return new Array();
    }
    if ((className) === ("List<Field>")) {
        return new Array();
    }
    if ((className) === ("List<Class>")) {
        return new Array();
    }
    if ((className) === ("List<String>")) {
        return new Array();
    }
    if ((className) === ("Map<Object,Object>")) {
        return new Map();
    }
    if ((className) === ("Map<String,Object>")) {
        return new Map();
    }
    if ((className) === ("pkg.T1")) {
        return new T1();
    }
    if ((className) === ("pkg.T2")) {
        return new T2();
    }
    if ((className) === ("pkg.T3")) {
        return new T3();
    }
    if ((className) === ("pkg.T4")) {
        return new T4();
    }
    if ((className) === ("pkg.T5")) {
        return new T5();
    }
    return null;
}
exports._construct = _construct;

function _fields(className) {
    if ((className) === ("Class")) {
        return [new Field(new Class("String"), "id"), new Field(new Class("String"), "name"), new Field(new Class("List<Class>"), "parameters")];
    }
    if ((className) === ("Field")) {
        return [new Field(new Class("Class"), "type"), new Field(new Class("String"), "name")];
    }
    if ((className) === ("List<Object>")) {
        return [];
    }
    if ((className) === ("List<Field>")) {
        return [];
    }
    if ((className) === ("List<Class>")) {
        return [];
    }
    if ((className) === ("List<String>")) {
        return [];
    }
    if ((className) === ("Map<Object,Object>")) {
        return [];
    }
    if ((className) === ("Map<String,Object>")) {
        return [];
    }
    if ((className) === ("pkg.T1")) {
        return [];
    }
    if ((className) === ("pkg.T2")) {
        return [];
    }
    if ((className) === ("pkg.T3")) {
        return [];
    }
    if ((className) === ("pkg.T4")) {
        return [];
    }
    if ((className) === ("pkg.T5")) {
        return [];
    }
    return null;
}
exports._fields = _fields;

function _class(cls) {
    if (((cls).id) === ("Class")) {
        (cls).name = "Class";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("Field")) {
        (cls).name = "Field";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("List<Object>")) {
        (cls).name = "List";
        (cls).parameters = [new Class("Object")];
        return;
    }
    if (((cls).id) === ("List<Field>")) {
        (cls).name = "List";
        (cls).parameters = [new Class("Field")];
        return;
    }
    if (((cls).id) === ("List<Class>")) {
        (cls).name = "List";
        (cls).parameters = [new Class("Class")];
        return;
    }
    if (((cls).id) === ("List<String>")) {
        (cls).name = "List";
        (cls).parameters = [new Class("String")];
        return;
    }
    if (((cls).id) === ("Map<Object,Object>")) {
        (cls).name = "Map";
        (cls).parameters = [new Class("Object"), new Class("Object")];
        return;
    }
    if (((cls).id) === ("Map<String,Object>")) {
        (cls).name = "Map";
        (cls).parameters = [new Class("String"), new Class("Object")];
        return;
    }
    if (((cls).id) === ("pkg.T1")) {
        (cls).name = "pkg.T1";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.T2")) {
        (cls).name = "pkg.T2";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.T3")) {
        (cls).name = "pkg.T3";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.T4")) {
        (cls).name = "pkg.T4";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.T5")) {
        (cls).name = "pkg.T5";
        (cls).parameters = [];
        return;
    }
    (cls).name = (cls).id;
}
exports._class = _class;
