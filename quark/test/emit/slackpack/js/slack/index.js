var _qrt = require("quark_runtime.js");
var event = require('./event');
exports.event = event;
var slack = require('../slack');



// CLASS SlackHandler
/**
 * Event handler for slack events. All unhandled events
 * are delegated to onSlackEvent by default.
 */
function SlackHandler() {
    this.__init_fields__();
}
exports.SlackHandler = SlackHandler;

function SlackHandler__init_fields__() {}
SlackHandler.prototype.__init_fields__ = SlackHandler__init_fields__;

function SlackHandler_onSlackEvent(event) {}
SlackHandler.prototype.onSlackEvent = SlackHandler_onSlackEvent;

function SlackHandler_onHello(hello) {
    (this).onSlackEvent(hello);
}
SlackHandler.prototype.onHello = SlackHandler_onHello;

function SlackHandler_onSlackError(error) {
    (this).onSlackEvent(error);
}
SlackHandler.prototype.onSlackError = SlackHandler_onSlackError;

function SlackHandler_onMessage(message) {
    (this).onSlackEvent(message);
}
SlackHandler.prototype.onMessage = SlackHandler_onMessage;

// CLASS User
/**
 * A reference to a user.
 */

function User(client, user) {
    this.__init_fields__();
    (this).client = client;
    (this).user = user;
}
exports.User = User;

function User__init_fields__() {
    this.client = null;
    this.user = null;
}
User.prototype.__init_fields__ = User__init_fields__;


// CLASS Channel
/**
 * A reference to a channel.
 */

function Channel(client, channel) {
    this.__init_fields__();
    (this).client = client;
    (this).channel = channel;
}
exports.Channel = Channel;

function Channel__init_fields__() {
    this.client = null;
    this.channel = null;
}
Channel.prototype.__init_fields__ = Channel__init_fields__;

function Channel_send(message) {
    var id = (this.client).event_id;
    (this.client).event_id = ((this.client).event_id) + (1);
    var msg = new _qrt.JSONObject();
    (msg).setObjectItem(("id"), ((new _qrt.JSONObject()).setNumber(id)));
    (msg).setObjectItem(("type"), ((new _qrt.JSONObject()).setString("message")));
    (msg).setObjectItem(("channel"), ((new _qrt.JSONObject()).setString((this).channel)));
    (msg).setObjectItem(("text"), ((new _qrt.JSONObject()).setString(message)));
    (this.client).ws_send((msg).toString());
}
Channel.prototype.send = Channel_send;

// CLASS Client
/**
 * Represents a persistent connection to the slack service.
 */

function Client(runtime, token, handler) {
    this.__init_fields__();
    (this).runtime = runtime;
    (this).token = token;
    (this).handler = handler;
}
exports.Client = Client;

function Client__init_fields__() {
    this.runtime = null;
    this.token = null;
    this.handler = null;
    this.event_id = 0;
    this.socket = null;
}
Client.prototype.__init_fields__ = Client__init_fields__;

/**
 * Connect the client to the slack service.
 */
function Client_connect() {
    (this).request("rtm.start", new Map(), this);
}
Client.prototype.connect = Client_connect;

function Client_request(request, params, handler) {
    var url = ("https://slack.com/api/") + (request);
    var req = new _qrt.HTTPRequest(url);
    (req).setMethod("POST");
    (params).set(("token"), ((this).token));
    (req).setBody(_qrt.urlencode(params));
    (req).setHeader("Content-Type", "application/x-www-form-urlencoded");
    ((this).runtime).request(req, handler);
}
Client.prototype.request = Client_request;

function Client_ws_connect(wsurl) {
    ((this).runtime).open(wsurl, this);
}
Client.prototype.ws_connect = Client_ws_connect;

function Client_ws_send(message) {
    (this.socket).send(message);
}
Client.prototype.ws_send = Client_ws_send;

function Client_onWSConnected(socket) {
    (this).socket = socket;
}
Client.prototype.onWSConnected = Client_onWSConnected;

function Client_onWSClose(socket) {
    _qrt.print("socket closed");
}
Client.prototype.onWSClose = Client_onWSClose;

function Client_onWSError(socket) {
    _qrt.print("socket error");
}
Client.prototype.onWSError = Client_onWSError;

function Client_construct(type) {
    if ((type) === ("error")) {
        return new event.SlackError();
    }
    if ((type) === ("hello")) {
        return new event.Hello();
    }
    if ((type) === ("message")) {
        return new event.Message();
    }
    return new event.SlackEvent();
}
Client.prototype.construct = Client_construct;

function Client_onWSMessage(socket, message) {
    var obj = _qrt.json_from_string(message);
    var type = ((obj).getObjectItem("type")).getString();
    var event = (this).construct(type);
    (event).load(this, obj);
    (event).dispatch((this).handler);
}
Client.prototype.onWSMessage = Client_onWSMessage;

function Client_onHTTPResponse(request, response) {
    var code = (response).getCode();
    var error = null;
    if ((code) !== (200)) {
        error = new event.SlackError();
        (error).code = code;
        (error).dispatch((this).handler);
    } else {
        var login_data = _qrt.json_from_string((response).getBody());
        if (((login_data).getObjectItem("ok")).getBool()) {
            (this).ws_connect(((login_data).getObjectItem("url")).getString());
        } else {
            error = new event.SlackError();
            (error).text = ((login_data).getObjectItem("error")).getString();
            (error).dispatch((this).handler);
        }
    }
}
Client.prototype.onHTTPResponse = Client_onHTTPResponse;

function Client_onWSInit(socket) {}
Client.prototype.onWSInit = Client_onWSInit;

function Client_onWSBinary(socket, message) {}
Client.prototype.onWSBinary = Client_onWSBinary;

function Client_onWSClosed(socket) {}
Client.prototype.onWSClosed = Client_onWSClosed;

function Client_onWSFinal(socket) {}
Client.prototype.onWSFinal = Client_onWSFinal;

function Client_onHTTPInit(request) {}
Client.prototype.onHTTPInit = Client_onHTTPInit;

function Client_onHTTPError(request) {}
Client.prototype.onHTTPError = Client_onHTTPError;

function Client_onHTTPFinal(request) {}
Client.prototype.onHTTPFinal = Client_onHTTPFinal;
