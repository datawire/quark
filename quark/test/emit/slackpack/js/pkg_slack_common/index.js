var _qrt = require("datawire-quark-core");
var slack = require('../slack');
exports.slack = slack;
var pkg = require('../pkg');
exports.pkg = pkg;
var slack = require('../slack');
exports.slack = slack;




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


function main() {
    var cli = new slack.Client(null, "fake-token", new pkg.Handler());
    (cli).onWSMessage(null, "{\"type\": \"hello\"}");
    (cli).onWSMessage(null, "{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}");
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
    if ((className) === ("slack.event.SlackEvent")) {
        return new slack.event.SlackEvent();
    }
    if ((className) === ("slack.event.SlackError")) {
        return new slack.event.SlackError();
    }
    if ((className) === ("slack.event.Hello")) {
        return new slack.event.Hello();
    }
    if ((className) === ("slack.event.Message")) {
        return new slack.event.Message();
    }
    if ((className) === ("slack.event.Edited")) {
        return new slack.event.Edited();
    }
    if ((className) === ("slack.User")) {
        return new slack.User((args)[0], (args)[1]);
    }
    if ((className) === ("slack.Channel")) {
        return new slack.Channel((args)[0], (args)[1]);
    }
    if ((className) === ("slack.Client")) {
        return new slack.Client((args)[0], (args)[1], (args)[2]);
    }
    if ((className) === ("pkg.Handler")) {
        return new pkg.Handler();
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
    if ((className) === ("slack.event.SlackEvent")) {
        return [new Field(new Class("String"), "type"), new Field(new Class("slack.User"), "user"), new Field(new Class("slack.Channel"), "channel"), new Field(new Class("String"), "timestamp")];
    }
    if ((className) === ("slack.event.SlackError")) {
        return [new Field(new Class("String"), "type"), new Field(new Class("slack.User"), "user"), new Field(new Class("slack.Channel"), "channel"), new Field(new Class("String"), "timestamp"), new Field(new Class("int"), "code"), new Field(new Class("String"), "text")];
    }
    if ((className) === ("slack.event.Hello")) {
        return [new Field(new Class("String"), "type"), new Field(new Class("slack.User"), "user"), new Field(new Class("slack.Channel"), "channel"), new Field(new Class("String"), "timestamp")];
    }
    if ((className) === ("slack.event.Message")) {
        return [new Field(new Class("String"), "type"), new Field(new Class("slack.User"), "user"), new Field(new Class("slack.Channel"), "channel"), new Field(new Class("String"), "timestamp"), new Field(new Class("String"), "subtype"), new Field(new Class("bool"), "hidden"), new Field(new Class("String"), "text"), new Field(new Class("slack.event.Edited"), "edited")];
    }
    if ((className) === ("slack.event.Edited")) {
        return [new Field(new Class("slack.User"), "user"), new Field(new Class("String"), "timestamp")];
    }
    if ((className) === ("slack.User")) {
        return [new Field(new Class("slack.Client"), "client"), new Field(new Class("String"), "user")];
    }
    if ((className) === ("slack.Channel")) {
        return [new Field(new Class("slack.Client"), "client"), new Field(new Class("String"), "channel")];
    }
    if ((className) === ("slack.Client")) {
        return [new Field(new Class("Runtime"), "runtime"), new Field(new Class("String"), "token"), new Field(new Class("slack.SlackHandler"), "handler"), new Field(new Class("int"), "event_id"), new Field(new Class("WebSocket"), "socket")];
    }
    if ((className) === ("pkg.Handler")) {
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
    if (((cls).id) === ("slack.event.SlackEvent")) {
        (cls).name = "slack.event.SlackEvent";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("slack.event.SlackError")) {
        (cls).name = "slack.event.SlackError";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("slack.event.Hello")) {
        (cls).name = "slack.event.Hello";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("slack.event.Message")) {
        (cls).name = "slack.event.Message";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("slack.event.Edited")) {
        (cls).name = "slack.event.Edited";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("slack.User")) {
        (cls).name = "slack.User";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("slack.Channel")) {
        (cls).name = "slack.Channel";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("slack.Client")) {
        (cls).name = "slack.Client";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.Handler")) {
        (cls).name = "pkg.Handler";
        (cls).parameters = [];
        return;
    }
    (cls).name = (cls).id;
}
exports._class = _class;
