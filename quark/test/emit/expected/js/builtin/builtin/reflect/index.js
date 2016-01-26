var _qrt = require("datawire-quark-core");


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
Class.VOID = new Class("builtin.void");
Class.BOOL = new Class("builtin.bool");
Class.INT = new Class("builtin.int");
Class.LONG = new Class("builtin.long");
Class.STRING = new Class("builtin.String");
function Class_get(id) {
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
    return this.parameters;
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
        if ((((this.fields)[idx]).name) === (name)) {
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
        if ((((this.methods)[idx]).name) === (name)) {
            return (this.methods)[idx];
        }
        idx = (idx) + (1);
    }
    return null;
}
Class.prototype.getMethod = Class_getMethod;

function Class__getClass() {
    return "builtin.reflect.Class";
}
Class.prototype._getClass = Class__getClass;

function Class__getField(name) {
    if ((name) === ("classes")) {
        return Class.classes;
    }
    if ((name) === ("VOID")) {
        return Class.VOID;
    }
    if ((name) === ("BOOL")) {
        return Class.BOOL;
    }
    if ((name) === ("INT")) {
        return Class.INT;
    }
    if ((name) === ("LONG")) {
        return Class.LONG;
    }
    if ((name) === ("STRING")) {
        return Class.STRING;
    }
    if ((name) === ("id")) {
        return (this).id;
    }
    if ((name) === ("name")) {
        return (this).name;
    }
    if ((name) === ("parameters")) {
        return (this).parameters;
    }
    if ((name) === ("fields")) {
        return (this).fields;
    }
    if ((name) === ("methods")) {
        return (this).methods;
    }
    return null;
}
Class.prototype._getField = Class__getField;

function Class__setField(name, value) {
    if ((name) === ("classes")) {
        Class.classes = value;
    }
    if ((name) === ("VOID")) {
        Class.VOID = value;
    }
    if ((name) === ("BOOL")) {
        Class.BOOL = value;
    }
    if ((name) === ("INT")) {
        Class.INT = value;
    }
    if ((name) === ("LONG")) {
        Class.LONG = value;
    }
    if ((name) === ("STRING")) {
        Class.STRING = value;
    }
    if ((name) === ("id")) {
        (this).id = value;
    }
    if ((name) === ("name")) {
        (this).name = value;
    }
    if ((name) === ("parameters")) {
        (this).parameters = value;
    }
    if ((name) === ("fields")) {
        (this).fields = value;
    }
    if ((name) === ("methods")) {
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
    return "builtin.reflect.Field";
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
