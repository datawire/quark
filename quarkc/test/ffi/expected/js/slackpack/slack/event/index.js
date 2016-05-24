var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var slack = require('../../slack/index.js');
exports.slack = slack;
var slackpack_md = require('../../slackpack_md/index.js');
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
function SlackEvent_load(client, obj) {}
SlackEvent.prototype.load = SlackEvent_load;

function SlackEvent_dispatch(handler) {}
SlackEvent.prototype.dispatch = SlackEvent_dispatch;

function SlackEvent__getClass() {
    return "slack.event.SlackEvent";
}
SlackEvent.prototype._getClass = SlackEvent__getClass;

function SlackEvent__getField(name) {
    if (_qrt.equals((name), ("type"))) {
        return (this).type;
    }
    if (_qrt.equals((name), ("user"))) {
        return (this).user;
    }
    if (_qrt.equals((name), ("channel"))) {
        return (this).channel;
    }
    if (_qrt.equals((name), ("timestamp"))) {
        return (this).timestamp;
    }
    return null;
}
SlackEvent.prototype._getField = SlackEvent__getField;

function SlackEvent__setField(name, value) {
    if (_qrt.equals((name), ("type"))) {
        (this).type = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("user"))) {
        (this).user = _qrt.cast(value, function () { return slack.User; });
    }
    if (_qrt.equals((name), ("channel"))) {
        (this).channel = _qrt.cast(value, function () { return slack.Channel; });
    }
    if (_qrt.equals((name), ("timestamp"))) {
        (this).timestamp = _qrt.cast(value, function () { return String; });
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
function SlackError_load(client, obj) {}
SlackError.prototype.load = SlackError_load;

function SlackError_dispatch(handler) {}
SlackError.prototype.dispatch = SlackError_dispatch;

function SlackError__getClass() {
    return "slack.event.SlackError";
}
SlackError.prototype._getClass = SlackError__getClass;

function SlackError__getField(name) {
    if (_qrt.equals((name), ("type"))) {
        return (this).type;
    }
    if (_qrt.equals((name), ("user"))) {
        return (this).user;
    }
    if (_qrt.equals((name), ("channel"))) {
        return (this).channel;
    }
    if (_qrt.equals((name), ("timestamp"))) {
        return (this).timestamp;
    }
    if (_qrt.equals((name), ("code"))) {
        return (this).code;
    }
    if (_qrt.equals((name), ("text"))) {
        return (this).text;
    }
    return null;
}
SlackError.prototype._getField = SlackError__getField;

function SlackError__setField(name, value) {
    if (_qrt.equals((name), ("type"))) {
        (this).type = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("user"))) {
        (this).user = _qrt.cast(value, function () { return slack.User; });
    }
    if (_qrt.equals((name), ("channel"))) {
        (this).channel = _qrt.cast(value, function () { return slack.Channel; });
    }
    if (_qrt.equals((name), ("timestamp"))) {
        (this).timestamp = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("code"))) {
        (this).code = _qrt.cast(value, function () { return Number; });
    }
    if (_qrt.equals((name), ("text"))) {
        (this).text = _qrt.cast(value, function () { return String; });
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
function Hello_dispatch(handler) {}
Hello.prototype.dispatch = Hello_dispatch;

function Hello__getClass() {
    return "slack.event.Hello";
}
Hello.prototype._getClass = Hello__getClass;

function Hello__getField(name) {
    if (_qrt.equals((name), ("type"))) {
        return (this).type;
    }
    if (_qrt.equals((name), ("user"))) {
        return (this).user;
    }
    if (_qrt.equals((name), ("channel"))) {
        return (this).channel;
    }
    if (_qrt.equals((name), ("timestamp"))) {
        return (this).timestamp;
    }
    return null;
}
Hello.prototype._getField = Hello__getField;

function Hello__setField(name, value) {
    if (_qrt.equals((name), ("type"))) {
        (this).type = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("user"))) {
        (this).user = _qrt.cast(value, function () { return slack.User; });
    }
    if (_qrt.equals((name), ("channel"))) {
        (this).channel = _qrt.cast(value, function () { return slack.Channel; });
    }
    if (_qrt.equals((name), ("timestamp"))) {
        (this).timestamp = _qrt.cast(value, function () { return String; });
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
    this.hidden = null;
    this.text = null;
    this.edited = null;
}
Message.prototype.__init_fields__ = Message__init_fields__;
Message.slack_event_Message_ref = slackpack_md.Root.slack_event_Message_md;
function Message_load(client, obj) {}
Message.prototype.load = Message_load;

function Message_dispatch(handler) {}
Message.prototype.dispatch = Message_dispatch;

function Message__getClass() {
    return "slack.event.Message";
}
Message.prototype._getClass = Message__getClass;

function Message__getField(name) {
    if (_qrt.equals((name), ("type"))) {
        return (this).type;
    }
    if (_qrt.equals((name), ("user"))) {
        return (this).user;
    }
    if (_qrt.equals((name), ("channel"))) {
        return (this).channel;
    }
    if (_qrt.equals((name), ("timestamp"))) {
        return (this).timestamp;
    }
    if (_qrt.equals((name), ("subtype"))) {
        return (this).subtype;
    }
    if (_qrt.equals((name), ("hidden"))) {
        return (this).hidden;
    }
    if (_qrt.equals((name), ("text"))) {
        return (this).text;
    }
    if (_qrt.equals((name), ("edited"))) {
        return (this).edited;
    }
    return null;
}
Message.prototype._getField = Message__getField;

function Message__setField(name, value) {
    if (_qrt.equals((name), ("type"))) {
        (this).type = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("user"))) {
        (this).user = _qrt.cast(value, function () { return slack.User; });
    }
    if (_qrt.equals((name), ("channel"))) {
        (this).channel = _qrt.cast(value, function () { return slack.Channel; });
    }
    if (_qrt.equals((name), ("timestamp"))) {
        (this).timestamp = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("subtype"))) {
        (this).subtype = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("hidden"))) {
        (this).hidden = _qrt.cast(value, function () { return Boolean; });
    }
    if (_qrt.equals((name), ("text"))) {
        (this).text = _qrt.cast(value, function () { return String; });
    }
    if (_qrt.equals((name), ("edited"))) {
        (this).edited = _qrt.cast(value, function () { return Edited; });
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
    if (_qrt.equals((name), ("user"))) {
        return (this).user;
    }
    if (_qrt.equals((name), ("timestamp"))) {
        return (this).timestamp;
    }
    return null;
}
Edited.prototype._getField = Edited__getField;

function Edited__setField(name, value) {
    if (_qrt.equals((name), ("user"))) {
        (this).user = _qrt.cast(value, function () { return slack.User; });
    }
    if (_qrt.equals((name), ("timestamp"))) {
        (this).timestamp = _qrt.cast(value, function () { return String; });
    }
}
Edited.prototype._setField = Edited__setField;
