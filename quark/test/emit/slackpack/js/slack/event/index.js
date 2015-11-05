var _qrt = require("quark_runtime.js");
var slack = require('../../slack');
var slack = require('../../slack');


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

function Hello_dispatch(handler) {
    (handler).onHello(this);
}
Hello.prototype.dispatch = Hello_dispatch;

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
