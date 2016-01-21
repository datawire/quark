// JS Hello Server Example
/* jshint node: true */

"use strict";

var runtime = require("datawire-quarkdev-node");
var hello = require("hello").hello;

function HelloImpl() {
    this.hello = function(request) {
        var response = new hello.Response();
        response.result = "Responding to [" + request.text + "] from JS";
        return response;
    };
}

var implementation = new HelloImpl();
var server = new hello.HelloServer(runtime, implementation);
runtime.serveHTTP("http://127.0.0.1:8910/hello", server);
