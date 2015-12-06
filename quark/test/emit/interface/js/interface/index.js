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


// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {}
Foo.prototype.__init_fields__ = Foo__init_fields__;

function Foo_m1() { /* interface */ }
Foo.prototype.m1 = Foo_m1;

function Foo_m2(arg) { /* interface */ }
Foo.prototype.m2 = Foo_m2;

function Foo_m3(args) { /* interface */ }
Foo.prototype.m3 = Foo_m3;

// CLASS Bar
function Bar() {
    this.__init_fields__();
}
exports.Bar = Bar;

function Bar__init_fields__() {}
Bar.prototype.__init_fields__ = Bar__init_fields__;

function Bar_m1() { /* interface */ }
Bar.prototype.m1 = Bar_m1;

function Bar_m2(arg) { /* interface */ }
Bar.prototype.m2 = Bar_m2;

function Bar_m3(args) { /* interface */ }
Bar.prototype.m3 = Bar_m3;

// CLASS Baz
function Baz() {
    this.__init_fields__();
}
exports.Baz = Baz;

function Baz__init_fields__() {}
Baz.prototype.__init_fields__ = Baz__init_fields__;

function Baz_m2(arg) {}
Baz.prototype.m2 = Baz_m2;

function Baz_m1() {}
Baz.prototype.m1 = Baz_m1;

function Baz_m3(args) {}
Baz.prototype.m3 = Baz_m3;

function Baz__getClass() {
    return "Baz";
}
Baz.prototype._getClass = Baz__getClass;

function Baz__getField(name) {
    return null;
}
Baz.prototype._getField = Baz__getField;

function Baz__setField(name, value) {}
Baz.prototype._setField = Baz__setField;

// CLASS RazBar
function RazBar() {
    this.__init_fields__();
}
exports.RazBar = RazBar;

function RazBar__init_fields__() {}
RazBar.prototype.__init_fields__ = RazBar__init_fields__;


// CLASS RazFaz
function RazFaz() {
    this.__init_fields__();
}
exports.RazFaz = RazFaz;

function RazFaz__init_fields__() {}
RazFaz.prototype.__init_fields__ = RazFaz__init_fields__;


// CLASS BazBar
function BazBar() {
    this.__init_fields__();
}
exports.BazBar = BazBar;

function BazBar__init_fields__() {}
BazBar.prototype.__init_fields__ = BazBar__init_fields__;

function BazBar_m1() {}
BazBar.prototype.m1 = BazBar_m1;

function BazBar_m2(arg) {}
BazBar.prototype.m2 = BazBar_m2;

function BazBar_m3(args) {}
BazBar.prototype.m3 = BazBar_m3;

function BazBar__getClass() {
    return "BazBar";
}
BazBar.prototype._getClass = BazBar__getClass;

function BazBar__getField(name) {
    return null;
}
BazBar.prototype._getField = BazBar__getField;

function BazBar__setField(name, value) {}
BazBar.prototype._setField = BazBar__setField;

// CLASS BazFaz
function BazFaz() {
    this.__init_fields__();
}
exports.BazFaz = BazFaz;

function BazFaz__init_fields__() {}
BazFaz.prototype.__init_fields__ = BazFaz__init_fields__;

function BazFaz_m1() {}
BazFaz.prototype.m1 = BazFaz_m1;

function BazFaz_m2(arg) {}
BazFaz.prototype.m2 = BazFaz_m2;

function BazFaz_m3(args) {}
BazFaz.prototype.m3 = BazFaz_m3;

function BazFaz__getClass() {
    return "BazFaz<Object>";
}
BazFaz.prototype._getClass = BazFaz__getClass;

function BazFaz__getField(name) {
    return null;
}
BazFaz.prototype._getField = BazFaz__getField;

function BazFaz__setField(name, value) {}
BazFaz.prototype._setField = BazFaz__setField;

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
    if ((className) === ("Baz")) {
        return new Baz();
    }
    if ((className) === ("BazBar")) {
        return new BazBar();
    }
    if ((className) === ("BazFaz<Object>")) {
        return new BazFaz();
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
    if ((className) === ("Baz")) {
        return [];
    }
    if ((className) === ("BazBar")) {
        return [];
    }
    if ((className) === ("BazFaz<Object>")) {
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
    if (((cls).id) === ("Baz")) {
        (cls).name = "Baz";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("BazBar")) {
        (cls).name = "BazBar";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("BazFaz<Object>")) {
        (cls).name = "BazFaz";
        (cls).parameters = [new Class("Object")];
        return;
    }
    (cls).name = (cls).id;
}
exports._class = _class;
