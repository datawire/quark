// Quark Runtime
/* jshint node: true */

(function () {
    "use strict";

    exports.util = require("util");

    function quark_toString(value) {
        if (value === null) {
            return "null";
        }
        if (Array.isArray(value)) {
            return "[" + value.map(quark_toString).join(", ") + "]";
        }
        return value.toString();
    }
    exports.toString = quark_toString;

    function print(message) {
        console.log(quark_toString(message));
    }
    exports.print = print;

    function modulo(a, b) {
        return (a % b + b) % b;
    }
    exports.modulo = modulo;

    function map_get(m, key) {
        if (m.has(key)) {
            return m.get(key);
        }
        return null;
    }
    exports.map_get = map_get;

    var execSync = require("child_process").execSync;

    function url_get(url) {
        var resBuffer = execSync('curl -s -w "\n\n%{http_code}" ' + url);
        var res = resBuffer.toString("UTF-8");
        if (res.substr(-5) === "\n\n200") {
            return res.substr(0, res.length - 5);
        }
        return "error";
    }
    exports.url_get = url_get;

    function sleep(seconds) {
        execSync("sleep " + seconds);
    }
    exports.sleep = sleep;

})();
