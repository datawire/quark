// Sequence generator
/* jshint node: true */

(function () {
    "use strict";

    var Topic = require("./out/franz").Topic;

    var t = new Topic("http://127.0.0.1:8080", "T");

    var searchTerm = process.argv[2];

    while (true) {
        var line = t.pop();
        if (line.indexOf(searchTerm) >= 0) {
            console.log(line);
        }
    }
})();
