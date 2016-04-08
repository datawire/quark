var _qrt = require("quark/quark_runtime.js");


// CLASS Class

function Class(id) {
    this.__init_fields__();
    (this).id = id;
    (Class.classes).set((id), (this));
    (this).name = id;
}
exports.Class = Class;

function Class__init_fields__() {
    this.id = null;
    this.name = null;
    this.parameters = [];
    this.fields = [];
    this.methods = [];
}
Class.prototype.__init_fields__ = Class__init_fields__;
Class.classes = new Map([]);
Class.VOID = new Class("quark.void");
Class.BOOL = new Class("quark.bool");
Class.INT = new Class("quark.int");
Class.LONG = new Class("quark.long");
Class.FLOAT = new Class("quark.float");
Class.STRING = new Class("quark.String");
function Class_get(id) {
    if (!((Class.classes).has(id))) {
        _qrt.print(((("Cannot find ") + (id)) + (" in ")) + (_qrt.toString(Array.from((Class.classes).keys()))));
    }
    return _qrt.map_get((Class.classes), (id));
}
Class.get = Class_get;

function Class_getId() {
    return this.id;
}
Class.prototype.getId = Class_getId;

function Class_getName() {
    return this.name;
}
Class.prototype.getName = Class_getName;

function Class_getParameters() {
    var result = [];
    var idx = 0;
    while ((idx) < ((this.parameters).length)) {
        (result).push(Class.get((this.parameters)[idx]));
        idx = (idx) + (1);
    }
    return result;
}
Class.prototype.getParameters = Class_getParameters;

function Class_construct(args) {
    return null;
}
Class.prototype.construct = Class_construct;

function Class_getFields() {
    return this.fields;
}
Class.prototype.getFields = Class_getFields;

function Class_getField(name) {
    var idx = 0;
    while ((idx) < ((this.fields).length)) {
        if (_qrt.equals((((this.fields)[idx]).name), (name))) {
            return (this.fields)[idx];
        }
        idx = (idx) + (1);
    }
    return null;
}
Class.prototype.getField = Class_getField;

function Class_getMethods() {
    return this.methods;
}
Class.prototype.getMethods = Class_getMethods;

function Class_getMethod(name) {
    var idx = 0;
    while ((idx) < ((this.methods).length)) {
        if (_qrt.equals((((this.methods)[idx]).name), (name))) {
            return (this.methods)[idx];
        }
        idx = (idx) + (1);
    }
    return null;
}
Class.prototype.getMethod = Class_getMethod;

function Class__getClass() {
    return "quark.reflect.Class";
}
Class.prototype._getClass = Class__getClass;

function Class__getField(name) {
    if (_qrt.equals((name), ("classes"))) {
        return Class.classes;
    }
    if (_qrt.equals((name), ("VOID"))) {
        return Class.VOID;
    }
    if (_qrt.equals((name), ("BOOL"))) {
        return Class.BOOL;
    }
    if (_qrt.equals((name), ("INT"))) {
        return Class.INT;
    }
    if (_qrt.equals((name), ("LONG"))) {
        return Class.LONG;
    }
    if (_qrt.equals((name), ("FLOAT"))) {
        return Class.FLOAT;
    }
    if (_qrt.equals((name), ("STRING"))) {
        return Class.STRING;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    if (_qrt.equals((name), ("parameters"))) {
        return (this).parameters;
    }
    if (_qrt.equals((name), ("fields"))) {
        return (this).fields;
    }
    if (_qrt.equals((name), ("methods"))) {
        return (this).methods;
    }
    return null;
}
Class.prototype._getField = Class__getField;

function Class__setField(name, value) {
    if (_qrt.equals((name), ("classes"))) {
        Class.classes = value;
    }
    if (_qrt.equals((name), ("VOID"))) {
        Class.VOID = value;
    }
    if (_qrt.equals((name), ("BOOL"))) {
        Class.BOOL = value;
    }
    if (_qrt.equals((name), ("INT"))) {
        Class.INT = value;
    }
    if (_qrt.equals((name), ("LONG"))) {
        Class.LONG = value;
    }
    if (_qrt.equals((name), ("FLOAT"))) {
        Class.FLOAT = value;
    }
    if (_qrt.equals((name), ("STRING"))) {
        Class.STRING = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("name"))) {
        (this).name = value;
    }
    if (_qrt.equals((name), ("parameters"))) {
        (this).parameters = value;
    }
    if (_qrt.equals((name), ("fields"))) {
        (this).fields = value;
    }
    if (_qrt.equals((name), ("methods"))) {
        (this).methods = value;
    }
}
Class.prototype._setField = Class__setField;

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

function Field_getType() {
    return Class.get(this.type);
}
Field.prototype.getType = Field_getType;

function Field_getName() {
    return this.name;
}
Field.prototype.getName = Field_getName;

function Field__getClass() {
    return "quark.reflect.Field";
}
Field.prototype._getClass = Field__getClass;

function Field__getField(name) {
    if (_qrt.equals((name), ("type"))) {
        return (this).type;
    }
    if (_qrt.equals((name), ("name"))) {
        return (this).name;
    }
    return null;
}
Field.prototype._getField = Field__getField;

function Field__setField(name, value) {
    if (_qrt.equals((name), ("type"))) {
        (this).type = value;
    }
    if (_qrt.equals((name), ("name"))) {
        (this).name = value;
    }
}
Field.prototype._setField = Field__setField;

// CLASS Method

function Method(type, name, parameters) {
    this.__init_fields__();
    (this).type = type;
    (this).name = name;
    (this).parameters = parameters;
}
exports.Method = Method;

function Method__init_fields__() {
    this.type = null;
    this.name = null;
    this.parameters = null;
}
Method.prototype.__init_fields__ = Method__init_fields__;

function Method_getType() {
    return Class.get(this.type);
}
Method.prototype.getType = Method_getType;

function Method_getName() {
    return this.name;
}
Method.prototype.getName = Method_getName;

function Method_getParameters() {
    var result = [];
    var idx = 0;
    while ((idx) < ((this.parameters).length)) {
        (result).push(Class.get((this.parameters)[idx]));
        idx = (idx) + (1);
    }
    return result;
}
Method.prototype.getParameters = Method_getParameters;

function Method_invoke(object, args) { /* abstract */ }
Method.prototype.invoke = Method_invoke;
