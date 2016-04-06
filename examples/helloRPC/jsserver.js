// JS Hello Server Example
/* jshint node: true */

"use strict";

var hello = require("hello").hello;

function HelloImpl() {
    this.hello = function(request) {
        var response = new hello.Response();
        response.result = "Responding to [" + request.text + "] from JavaScript";

        var delay = 0;
        // Uncomment the next line to simulate a long request processing
        // time and force a request timeout to occur for the client.
        // delay = 5000;

        setTimeout(function() {
            response.finish(null); // XXX: response.finish() with no arg is a simple error to make and hard to debug as it's called with undefined :( should quark generate code to check required args?
        }, delay);

        return response;
    };
}

var implementation = new HelloImpl();
var server = new hello.HelloServer(implementation);
server.sendCORS(true);
server.serveHTTP("http://127.0.0.1:8910/hello");
