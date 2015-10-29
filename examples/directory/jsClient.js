// Fake service (makes a tether)
/* jshint node: true */

(function () {
    "use strict";

    var runtime = require("quark_node_runtime.js");
    var directory = require("./directory");

    var identity = process.argv[2];
    var name = "service-" + identity;
    var address = "JS-endpoint-" + identity;

    var d = new directory.Directory(runtime, "ws://127.0.0.1:8910", name, address);

    function ShowAnswer(service) {
        this.service = service;
    }
    ShowAnswer.prototype.run = function(entry) {
        console.log("Looked up " + this.service + " and got back " + entry);
    };

    ["A", "B", "C", "D", "E"].forEach(function (letter) {
        var service = "service-" + letter;
        d.lookupAsync(service, new ShowAnswer(service));
    });
    console.log("lookupAsync called");

    runtime.launch();
    // And now we wait...
})();
