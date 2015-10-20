// Sequence generator
/* jshint node: true */

(function () {
    "use strict";

    var Topic = require("./out/franz").Topic;

    var t = new Topic("http://127.0.0.1:8080");
    var curValues = new Map();
    var finValues = new Map();

    function doit() {
        curValues.forEach(function (curValue, tag) {
            t.push(tag + ":" + curValue.toString());
            curValue += 1;
            if (curValue === finValues.get(tag)) {
                curValues.delete(tag);
                finValues.delete(tag);
                t.push(tag + ":done");
            } else {
                curValues.set(tag, curValue);
            }
        });

        var pieces = t.pop().split(":");
        if (pieces[0] !== "sequence") { return; }
        var count = parseInt(pieces[1]);
        var tag = pieces[2];

        curValues.set(tag, 0);
        finValues.set(tag, count);
    }

    setInterval(doit, 300);
})();
