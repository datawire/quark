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


// CLASS Box
function Box() {
    this.__init_fields__();
}
exports.Box = Box;

function Box__init_fields__() {
    this.contents = null;
}
Box.prototype.__init_fields__ = Box__init_fields__;

function Box_set(contents) {
    (this).contents = contents;
}
Box.prototype.set = Box_set;

function Box_get() {
    return (this).contents;
}
Box.prototype.get = Box_get;

function Box__getClass() {
    return "Box<Object>";
}
Box.prototype._getClass = Box__getClass;

function Box__getField(name) {
    if ((name) === ("contents")) {
        return (this).contents;
    }
    return null;
}
Box.prototype._getField = Box__getField;

function Box__setField(name, value) {
    if ((name) === ("contents")) {
        (this).contents = value;
    }
}
Box.prototype._setField = Box__setField;

// CLASS Crate
function Crate() {
    this.__init_fields__();
}
exports.Crate = Crate;

function Crate__init_fields__() {
    this.box = new Box();
    this.ibox = new Box();
}
Crate.prototype.__init_fields__ = Crate__init_fields__;

function Crate_set(stuff) {
    ((this).box).set(stuff);
}
Crate.prototype.set = Crate_set;

function Crate_get() {
    return ((this).box).get();
}
Crate.prototype.get = Crate_get;

function Crate__getClass() {
    return "Crate<Object>";
}
Crate.prototype._getClass = Crate__getClass;

function Crate__getField(name) {
    if ((name) === ("box")) {
        return (this).box;
    }
    if ((name) === ("ibox")) {
        return (this).ibox;
    }
    return null;
}
Crate.prototype._getField = Crate__getField;

function Crate__setField(name, value) {
    if ((name) === ("box")) {
        (this).box = value;
    }
    if ((name) === ("ibox")) {
        (this).ibox = value;
    }
}
Crate.prototype._setField = Crate__setField;

// CLASS Sack
function Sack() {
    this.__init_fields__();
}
exports.Sack = Sack;

function Sack__init_fields__() {
    this.ints = new Box();
}
Sack.prototype.__init_fields__ = Sack__init_fields__;

function Sack__getClass() {
    return "Sack";
}
Sack.prototype._getClass = Sack__getClass;

function Sack__getField(name) {
    if ((name) === ("ints")) {
        return (this).ints;
    }
    return null;
}
Sack.prototype._getField = Sack__getField;

function Sack__setField(name, value) {
    if ((name) === ("ints")) {
        (this).ints = value;
    }
}
Sack.prototype._setField = Sack__setField;

function test1() {
    var ibox = new Box();
    (ibox).set(3);
    var three = (ibox).get();
    _qrt.print(three);
    (ibox).contents = 4;
    _qrt.print((ibox).contents);
}
exports.test1 = test1;

function test2() {
    var sbox = new Box();
    (sbox).set("hello");
    var hello = (sbox).get();
    _qrt.print(hello);
    (sbox).contents = "world";
    _qrt.print((sbox).contents);
}
exports.test2 = test2;

function test3() {
    var icrate = new Crate();
    (icrate).set(3);
    _qrt.print((icrate).get());
    (icrate).set(4);
    _qrt.print(((icrate).box).contents);
}
exports.test3 = test3;

function test4() {
    var s = new Sack();
    _qrt.print(((s).ints).get());
    _qrt.print(((s).ints).contents);
    ((s).ints).set(3);
    _qrt.print(((s).ints).get());
    _qrt.print(((s).ints).contents);
    ((s).ints).contents = 4;
    _qrt.print(((s).ints).get());
    _qrt.print(((s).ints).contents);
}
exports.test4 = test4;

function test5() {
    var scrate = new Crate();
    _qrt.print((scrate).get());
    _qrt.print(((scrate).box).contents);
    (scrate).set("hello");
    _qrt.print((scrate).get());
    _qrt.print(((scrate).box).contents);
    ((scrate).ibox).contents = 3;
    _qrt.print(((scrate).ibox).contents);
}
exports.test5 = test5;

function test6() {
    var box = new Box();
    (box).set(new Box());
    ((box).get()).set(3);
    _qrt.print(((box).get()).get());
    _qrt.print(((box).contents).contents);
}
exports.test6 = test6;

function main() {
    _qrt.print("test1:\n--");
    test1();
    _qrt.print("");
    _qrt.print("test2:\n--");
    test2();
    _qrt.print("");
    _qrt.print("test3:\n--");
    test3();
    _qrt.print("");
    _qrt.print("test4:\n--");
    test4();
    _qrt.print("");
    _qrt.print("test5:\n--");
    test5();
    _qrt.print("");
    _qrt.print("test6:\n--");
    test6();
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
    if ((className) === ("Box<Object>")) {
        return new Box();
    }
    if ((className) === ("Box<int>")) {
        return new Box();
    }
    if ((className) === ("Box<String>")) {
        return new Box();
    }
    if ((className) === ("Box<Box<int>>")) {
        return new Box();
    }
    if ((className) === ("Crate<int>")) {
        return new Crate();
    }
    if ((className) === ("Crate<String>")) {
        return new Crate();
    }
    if ((className) === ("Sack")) {
        return new Sack();
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
    if ((className) === ("Box<Object>")) {
        return [new Field(new Class("Object"), "contents")];
    }
    if ((className) === ("Box<int>")) {
        return [new Field(new Class("Object"), "contents")];
    }
    if ((className) === ("Box<String>")) {
        return [new Field(new Class("Object"), "contents")];
    }
    if ((className) === ("Box<Box<int>>")) {
        return [new Field(new Class("Object"), "contents")];
    }
    if ((className) === ("Crate<int>")) {
        return [new Field(new Class("Box<Object>"), "box"), new Field(new Class("Box<int>"), "ibox")];
    }
    if ((className) === ("Crate<String>")) {
        return [new Field(new Class("Box<Object>"), "box"), new Field(new Class("Box<int>"), "ibox")];
    }
    if ((className) === ("Sack")) {
        return [new Field(new Class("Box<int>"), "ints")];
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
    if (((cls).id) === ("Box<Object>")) {
        (cls).name = "Box";
        (cls).parameters = [new Class("Object")];
        return;
    }
    if (((cls).id) === ("Box<int>")) {
        (cls).name = "Box";
        (cls).parameters = [new Class("int")];
        return;
    }
    if (((cls).id) === ("Box<String>")) {
        (cls).name = "Box";
        (cls).parameters = [new Class("String")];
        return;
    }
    if (((cls).id) === ("Box<Box<int>>")) {
        (cls).name = "Box";
        (cls).parameters = [new Class("Box<int>")];
        return;
    }
    if (((cls).id) === ("Crate<int>")) {
        (cls).name = "Crate";
        (cls).parameters = [new Class("int")];
        return;
    }
    if (((cls).id) === ("Crate<String>")) {
        (cls).name = "Crate";
        (cls).parameters = [new Class("String")];
        return;
    }
    if (((cls).id) === ("Sack")) {
        (cls).name = "Sack";
        (cls).parameters = [];
        return;
    }
    (cls).name = (cls).id;
}
exports._class = _class;
