// Sequence generator
/* jshint node: true */

(function () {
    "use strict";

    var Queue = require("./out/importable").Queue;

    var q = new Queue("http://127.0.0.1:8080/simple");
    var curValues = new Map();
    var finValues = new Map();

    function doit() {
        curValues.forEach(function (curValue, tag) {
            q.push(tag + ":" + curValue.toString());
            curValue += 1;
            if (curValue === finValues.get(tag)) {
                curValues.delete(tag);
                finValues.delete(tag);
                q.push(tag + ":done");
            } else {
                curValues.set(tag, curValue);
            }
        });

        var pieces = q.pop().split(":");
        if (pieces[0] !== "sequence") { return; }
        var count = parseInt(pieces[1]);
        var tag = pieces[2];

        curValues.set(tag, 0);
        finValues.set(tag, count);
    }

    setInterval(doit, 300);
})();
