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

    function JSONObject() {
        this.value = null;
    }
    exports.JSONObject = JSONObject;

    function JSONObject_getType() {
        var t = typeof this.value;
        if (t === "object") {
            if (this.value === null)
                return "null";
            if (Array.isArray(this.value))
                return "list";
        }
        return t;
    }
    JSONObject.prototype.getType = JSONObject_getType;

    function JSONObject_wrap(value) {
        var j = new JSONObject();
        j.value = value;
        return j;
    }

    function JSONObject_getObjectItem(key) {
        var value = this.value[key];
        if (value === undefined) {
            return this.undefined();
        }
        return JSONObject_wrap(value);
    }

    function JSONObject_getListItem(index) {
        var value = this.value[index];
        if (value === undefined) {
            return this.undefined();
        }
        return JSONObject_wrap(value);
    }
    JSONObject.prototype.getListItem = JSONObject_getListItem;

    function JSONObject_getString() {
        if (typeof this.value !== 'string') {
            return this.undefined();
        }
        return this.value;
    }
    JSONObject.prototype.getString = JSONObject_getString;

    function JSONObject_getNumber() {
        if (typeof this.value !== 'number') {
            return this.undefined();
        }
        return this.value;
    }
    JSONObject.prototype.getNumber = JSONObject_getNumber;

    function JSONObject_getBool() {
        if (typeof this.value !== 'boolean') {
            return this.undefined();
        }
        return this.value ? 1 : 0;
    }
    JSONObject.prototype.getBool = JSONObject_getBool;

    function JSONObject_isNull() {
        return this.value === null;
    }
    JSONObject.prototype.isNull = JSONObject_isNull;

    function JSONObject_undefined() {
        var u = new JSONObject();
        u.value = undefined;
        return u;
    }
    JSONObject.prototype.undefined = JSONObject_undefined;

    function JSONObject_toString() {
        return JSON.stringify(this.value);
    }
    JSONObject.prototype.toString = JSONObject_toString;


    function JSONObject_setString(value) {
        this.value = value;
        return this;
    }
    JSONObject.prototype.setString = JSONObject_setString;

    function JSONObject_setNumber(value) {
        this.value = value;
        return this;
    }
    JSONObject.prototype.setNumber = JSONObject_setNumber;

    function JSONObject_setBool(value) {
        this.value = !!value;
        return this;
    }
    JSONObject.prototype.setBool = JSONObject_setBool;

    function JSONObject_setNull() {
        this.value = null;
        return this;
    }
    JSONObject.prototype.setNull = JSONObject_setNull;

    function JSONObject_setObject() {
        this.value = {};
        return this;
    }
    JSONObject.prototype.setObject = JSONObject_setObject;

    function JSONObject_setList() {
        this.value = [];
        return this;
    }
    JSONObject.prototype.setList = JSONObject_setList;

    function JSONObject_setObjectItem(key, value) {
        if (this.getType() !== 'object') {
            this.value = {};
        }
        this.value[key] = value.value;
        return this;
    }
    JSONObject.prototype.setObjectItem = JSONObject_setObjectItem;

    function JSONObject_setListItem(index, value) {
        if (this.getType() !== 'list') {
            this.value = [];
        }
        for(var i = this.value.length; i < index - 1; i++) {
            this.value[i] = null;
        }
        this.value[index] = value.value;
        return this;
    }
    JSONObject.prototype.setListItem = JSONObject_setListItem;

    function json_from_string(json) {
        var raw = JSON.parse(json);
        var value = new JSONObject();
        value.value = raw;
        return value;
    }

    exports.json_from_string = json_from_string;

})();
