/* jshint node: true */

"use strict";
var fallback = require("fallback").fallback;

var timeout = 1000;

var cli = new fallback.Client();
var content = cli.get(["https://asdf.com", "http://www.google.com"], timeout);
//var content = cli.get(["https://thisreallyshouldntexist.com", "http://www.google.com"], timeout);
//var content = cli.get(["https://thisreallyshouldntexist.com", "http://anotherbadurl.com"], timeout);

function FutureListener(cb) {
    this.onFuture = cb;
}
content.onFinished(
    new FutureListener( // XXX: if this can become magic then the quark-js API can be idiomatic
        function(content) {
            if (content.getError() != null) {
                console.log("Error:", content.getError());
            } else {
                console.log(content.body);
            }
        }));
