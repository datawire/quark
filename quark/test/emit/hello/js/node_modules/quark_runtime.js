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

})();
