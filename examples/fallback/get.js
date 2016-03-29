/* jshint node: true */

"use strict";
var fallback = require("fallback").fallback;

var timeout = 1.0;

var cli = new fallback.Client();

var args = process.argv.slice(2);
var content = cli.get(args, timeout);

function FutureListener(cb) {
    this.onFuture = cb;
}
content.onFinished(
    new FutureListener( // XXX: if this can become magic then the quark-js API can be idiomatic
        function(content) {
            if (content.getError() !== null) {
                console.log("Error:", content.getError());
            } else {
                console.log(content.body);
            }
        }));
