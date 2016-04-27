var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var slack = require('../slack/index.js');
exports.slack = slack;
var slack = require('../slack/index.js');
exports.slack = slack;
var slackpack_md = require('../slackpack_md/index.js');
exports.slackpack_md = slackpack_md;



// CLASS Handler
function Handler() {
    this.__init_fields__();
}
exports.Handler = Handler;

function Handler__init_fields__() {}
Handler.prototype.__init_fields__ = Handler__init_fields__;
Handler.slackpack_Handler_ref = slackpack_md.Root.slackpack_Handler_md;
function Handler_onSlackEvent(event) {}
Handler.prototype.onSlackEvent = Handler_onSlackEvent;

function Handler__getClass() {
    return "slackpack.Handler";
}
Handler.prototype._getClass = Handler__getClass;

function Handler__getField(name) {
    return null;
}
Handler.prototype._getField = Handler__getField;

function Handler__setField(name, value) {}
Handler.prototype._setField = Handler__setField;

function Handler_onHello(hello) {}
Handler.prototype.onHello = Handler_onHello;

function Handler_onSlackError(error) {}
Handler.prototype.onSlackError = Handler_onSlackError;

function Handler_onMessage(message) {}
Handler.prototype.onMessage = Handler_onMessage;
