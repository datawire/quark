"use strict";

var util = require("util");
var fs = require("fs");

var runtime_core = require("datawire-quark-core");
var runtime = require("datawire-quark-node");
var hello_server = require("hello_server");

var servlet = new hello_server.HelloServlet();
runtime.serveHTTP("http://127.0.0.1/foo", servlet);
runtime.serveHTTP("http://127.0.0.1:9876/foo", servlet);
runtime.serveHTTP("http://127.0.0.1:0/foo", servlet);

runtime.serveWS("ws://127.0.0.1:9876/ws", new hello_server.MySocketServlet());

function PrintWSHandler(id) {
    this.id = id;
}

PrintWSHandler.prototype.onWSMessage = function(socket, message) {
    console.log(this.id, "client onWSMessage", message);
}
PrintWSHandler.prototype.onWSInit = function(socket) {
    console.log(this.id, "clietn onWSInit");
}
PrintWSHandler.prototype.onWSFinal = function(socket) {
    console.log(this.id, "client onWSFinal");
}
PrintWSHandler.prototype.onWSError = function(socket) {
    console.log(this.id, "client onWSError");
}
PrintWSHandler.prototype.onWSConnected = function(socket) {
    console.log(this.id, "client onWSConnected");
    socket.send("hello socket!");
}
PrintWSHandler.prototype.onWSClosed = function(socket) {
    console.log(this.id, "client onWSClosed");
}
PrintWSHandler.prototype.onWSBinary = function(socket, message) {
    console.log(this.id, "client onWSBinary", runtime.codec().toHexdump(message, 0, message.capacity(), 3));
}

runtime.open("ws://127.0.0.1:9876/ws", new PrintWSHandler("ws"));
runtime.open("ws://127.0.0.1:9876/wsx", new PrintWSHandler("wsx"));

function PrintHTTPHandler(id) {
    this.id = id;
}

PrintHTTPHandler.prototype.onHTTPResponse = function(request, response) {
    console.log(this.id, "client onHTTPResponse", response);
}
PrintHTTPHandler.prototype.onHTTPInit = function(request) {
    console.log(this.id, "client onHTTPInit");
}
PrintHTTPHandler.prototype.onHTTPFinal = function(request) {
    console.log(this.id, "client onHTTPFinal");
}
PrintHTTPHandler.prototype.onHTTPError = function(request) {
    console.log(this.id, "client onHTTPError");
}

var request = new runtime_core.HTTPRequest("http://127.0.0.1:9876/ws");
request.setMethod("GET")
runtime.request(request, new PrintHTTPHandler("xfail ws"));
