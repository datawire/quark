// Fake service (makes a tether)
/* jshint node: true */

(function () {
    "use strict";

    var runtime = require("datawire-quark-node");
    var ipify = require("./ipify");

    function Consumer() {}
    Consumer.prototype.consume = function (ip) {
        console.log("IP is " + ip);
        process.exit();
    };

    var m = new ipify.MyExternalIP(runtime, new Consumer());
})();
