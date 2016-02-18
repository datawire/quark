// JS Hello Client Example
/* jshint node: true */

"use strict";
var process = require("process");
var hello = require("hello").hello;

// "http://hello.datawire.io/" is the URL of the simple "Hello" cloud
// microservice run by Datawire, Inc. to serve as a simple first test.
//
//  You can test completely locally, too:
//  - comment out the http://hello.datawire.io line
//  - uncomment the http://127.0.0.1:8910/hello line
//  - fire up the local version of the server by following the instructions
//  in the README.md.
//
// var client = new hello.HelloClient("http://hello.datawire.io/");
var client = new hello.HelloClient("http://localhost:8910/hello");
var request = new hello.Request();
if (process.argv[2]) {
    request.text = process.argv[2];
} else {
    request.text = "Hello from JavaScript!";
}
console.log("Request says", request.text);

var response = client.hello(request);

function FutureListener(cb) {
    this.onFuture = cb;
}
response.onFinished(
    new FutureListener( // XXX: if this can become magic then the quark-js API can be idiomatic
        function(response) {
            if (response.getError() !== null) {
                console.log("Response failed with", response.getError());
            } else {
                console.log("Response says", response.result);
            }
        }));
