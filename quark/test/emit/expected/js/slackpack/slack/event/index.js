var _qrt = require("datawire-quark-core");
var builtin = require('builtin').builtin;
exports.builtin = builtin;
var slack = require('../../slack');
exports.slack = slack;
var slackpack_md = require('../../slackpack_md');
exports.slackpack_md = slackpack_md;



// CLASS SlackEvent
/**
 * Base class for all slack events.
 */
function SlackEvent() {
    this.__init_fields__();
}
exports.SlackEvent = SlackEvent;

function SlackEvent__init_fields__() {
    /**
     * The event type.
     */
    this.type = null;
    /**
     * The user associated with the event.
     */
    this.user = null;
    /**
     * The channel associated with the event.
     */
    this.channel = null;
    /**
     * The timestamp associated with the event.
     */
    this.timestamp = null;
}
SlackEvent.prototype.__init_fields__ = SlackEvent__init_fields__;
SlackEvent.slack_event_SlackEvent_ref = slackpack_md.Root.slack_event_SlackEvent_md;
function SlackEvent_load(client, obj) {
    (this).type = ((obj).getObjectItem("type")).getString();
    var uid = ((obj).getObjectItem("user")).getString();
    if ((uid) !== (null)) {
        (this).user = new slack.User(client, uid);
    }
    var chid = ((obj).getObjectItem("channel")).getString();
    if ((chid) !== (null)) {
        (this).channel = new slack.Channel(client, chid);
    }
    (this).timestamp = ((obj).getObjectItem("ts")).getString();
}
SlackEvent.prototype.load = SlackEvent_load;

function SlackEvent_dispatch(handler) {
    (handler).onSlackEvent(this);
}
SlackEvent.prototype.dispatch = SlackEvent_dispatch;

function SlackEvent__getClass() {
    return "slack.event.SlackEvent";
}
SlackEvent.prototype._getClass = SlackEvent__getClass;

function SlackEvent__getField(name) {
    if ((name) === ("type")) {
        return (this).type;
    }
    if ((name) === ("user")) {
        return (this).user;
    }
    if ((name) === ("channel")) {
        return (this).channel;
    }
    if ((name) === ("timestamp")) {
        return (this).timestamp;
    }
    return null;
}
SlackEvent.prototype._getField = SlackEvent__getField;

function SlackEvent__setField(name, value) {
    if ((name) === ("type")) {
        (this).type = value;
    }
    if ((name) === ("user")) {
        (this).user = value;
    }
    if ((name) === ("channel")) {
        (this).channel = value;
    }
    if ((name) === ("timestamp")) {
        (this).timestamp = value;
    }
}
SlackEvent.prototype._setField = SlackEvent__setField;

// CLASS SlackError
/**
 * The server has indicated an error has occurred.
 */

function SlackError() {
    SlackError.super_.call(this);
}
exports.SlackError = SlackError;
_qrt.util.inherits(SlackError, SlackEvent);

function SlackError__init_fields__() {
    SlackEvent.prototype.__init_fields__.call(this);
    /**
     * The numeric code associated with the error condition.
     */
    this.code = null;
    /**
     * A text description of the error condition.
     */
    this.text = null;
}
SlackError.prototype.__init_fields__ = SlackError__init_fields__;
SlackError.slack_event_SlackError_ref = slackpack_md.Root.slack_event_SlackError_md;
function SlackError_load(client, obj) {
    this.constructor.super_.prototype.load.call(this, client, obj);
    (this).code = Math.round(((obj).getObjectItem("code")).getNumber());
    (this).text = ((obj).getObjectItem("text")).getString();
}
SlackError.prototype.load = SlackError_load;

function SlackError_dispatch(handler) {
    (handler).onSlackError(this);
}
SlackError.prototype.dispatch = SlackError_dispatch;

function SlackError__getClass() {
    return "slack.event.SlackError";
}
SlackError.prototype._getClass = SlackError__getClass;

function SlackError__getField(name) {
    if ((name) === ("type")) {
        return (this).type;
    }
    if ((name) === ("user")) {
        return (this).user;
    }
    if ((name) === ("channel")) {
        return (this).channel;
    }
    if ((name) === ("timestamp")) {
        return (this).timestamp;
    }
    if ((name) === ("code")) {
        return (this).code;
    }
    if ((name) === ("text")) {
        return (this).text;
    }
    return null;
}
SlackError.prototype._getField = SlackError__getField;

function SlackError__setField(name, value) {
    if ((name) === ("type")) {
        (this).type = value;
    }
    if ((name) === ("user")) {
        (this).user = value;
    }
    if ((name) === ("channel")) {
        (this).channel = value;
    }
    if ((name) === ("timestamp")) {
        (this).timestamp = value;
    }
    if ((name) === ("code")) {
        (this).code = value;
    }
    if ((name) === ("text")) {
        (this).text = value;
    }
}
SlackError.prototype._setField = SlackError__setField;

// CLASS Hello
/**
 * The client successfully connected to the server.
 */

function Hello() {
    Hello.super_.call(this);
}
exports.Hello = Hello;
_qrt.util.inherits(Hello, SlackEvent);

function Hello__init_fields__() {
    SlackEvent.prototype.__init_fields__.call(this);
}
Hello.prototype.__init_fields__ = Hello__init_fields__;
Hello.slack_event_Hello_ref = slackpack_md.Root.slack_event_Hello_md;
function Hello_dispatch(handler) {
    (handler).onHello(this);
}
Hello.prototype.dispatch = Hello_dispatch;

function Hello__getClass() {
    return "slack.event.Hello";
}
Hello.prototype._getClass = Hello__getClass;

function Hello__getField(name) {
    if ((name) === ("type")) {
        return (this).type;
    }
    if ((name) === ("user")) {
        return (this).user;
    }
    if ((name) === ("channel")) {
        return (this).channel;
    }
    if ((name) === ("timestamp")) {
        return (this).timestamp;
    }
    return null;
}
Hello.prototype._getField = Hello__getField;

function Hello__setField(name, value) {
    if ((name) === ("type")) {
        (this).type = value;
    }
    if ((name) === ("user")) {
        (this).user = value;
    }
    if ((name) === ("channel")) {
        (this).channel = value;
    }
    if ((name) === ("timestamp")) {
        (this).timestamp = value;
    }
}
Hello.prototype._setField = Hello__setField;

// CLASS Message
/**
 * A message was sent to a channel.
 */

function Message() {
    Message.super_.call(this);
}
exports.Message = Message;
_qrt.util.inherits(Message, SlackEvent);

function Message__init_fields__() {
    SlackEvent.prototype.__init_fields__.call(this);
    /**
     * The subtype field indicates the type of message.
     */
    this.subtype = null;
    this.hidden = false;
    this.text = null;
    this.edited = null;
}
Message.prototype.__init_fields__ = Message__init_fields__;
Message.slack_event_Message_ref = slackpack_md.Root.slack_event_Message_md;
function Message_load(client, obj) {
    this.constructor.super_.prototype.load.call(this, client, obj);
    (this).subtype = ((obj).getObjectItem("subtype")).getString();
    (this).hidden = ((obj).getObjectItem("hidden")).getBool();
    (this).text = ((obj).getObjectItem("text")).getString();
    var edited = (obj).getObjectItem("edited");
    if ((edited).isDefined()) {
        (this).edited = new Edited();
        ((this).edited).user = new slack.User(client, ((edited).getObjectItem("user")).getString());
        ((this).edited).timestamp = ((edited).getObjectItem("ts")).getString();
    }
}
Message.prototype.load = Message_load;

function Message_dispatch(handler) {
    (handler).onMessage(this);
}
Message.prototype.dispatch = Message_dispatch;

function Message__getClass() {
    return "slack.event.Message";
}
Message.prototype._getClass = Message__getClass;

function Message__getField(name) {
    if ((name) === ("type")) {
        return (this).type;
    }
    if ((name) === ("user")) {
        return (this).user;
    }
    if ((name) === ("channel")) {
        return (this).channel;
    }
    if ((name) === ("timestamp")) {
        return (this).timestamp;
    }
    if ((name) === ("subtype")) {
        return (this).subtype;
    }
    if ((name) === ("hidden")) {
        return (this).hidden;
    }
    if ((name) === ("text")) {
        return (this).text;
    }
    if ((name) === ("edited")) {
        return (this).edited;
    }
    return null;
}
Message.prototype._getField = Message__getField;

function Message__setField(name, value) {
    if ((name) === ("type")) {
        (this).type = value;
    }
    if ((name) === ("user")) {
        (this).user = value;
    }
    if ((name) === ("channel")) {
        (this).channel = value;
    }
    if ((name) === ("timestamp")) {
        (this).timestamp = value;
    }
    if ((name) === ("subtype")) {
        (this).subtype = value;
    }
    if ((name) === ("hidden")) {
        (this).hidden = value;
    }
    if ((name) === ("text")) {
        (this).text = value;
    }
    if ((name) === ("edited")) {
        (this).edited = value;
    }
}
Message.prototype._setField = Message__setField;

// CLASS Edited
/**
 * Metadata about an edit to a message.
 */
function Edited() {
    this.__init_fields__();
}
exports.Edited = Edited;

function Edited__init_fields__() {
    this.user = null;
    this.timestamp = null;
}
Edited.prototype.__init_fields__ = Edited__init_fields__;
Edited.slack_event_Edited_ref = slackpack_md.Root.slack_event_Edited_md;
function Edited__getClass() {
    return "slack.event.Edited";
}
Edited.prototype._getClass = Edited__getClass;

function Edited__getField(name) {
    if ((name) === ("user")) {
        return (this).user;
    }
    if ((name) === ("timestamp")) {
        return (this).timestamp;
    }
    return null;
}
Edited.prototype._getField = Edited__getField;

function Edited__setField(name, value) {
    if ((name) === ("user")) {
        (this).user = value;
    }
    if ((name) === ("timestamp")) {
        (this).timestamp = value;
    }
}
Edited.prototype._setField = Edited__setField;
