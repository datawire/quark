// JS Hello Client Example
/* jshint node: true */

"use strict";

var hello = require("hello");

var client = new hello.HelloClient("http://127.0.0.1:8910/hello");
var request = new hello.Request();
request.text = "Hello from JavaScript!";
console.log("Request says", request.text);

var response = client.hello(request);

function FutureListener(cb) { 
    this.onFuture = cb;
}
response.onFinished(
    new FutureListener( // XXX: if this can become magic then the quark-js API can be idiomatic 
        function(response) {
            if (response.getError() != null) {
                console.log("Response failed with", response.getError());
            } else {
                console.log("Response says", response.result);
            }
        }));
