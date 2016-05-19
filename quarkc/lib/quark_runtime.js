/*
 * Copyright 2015 datawire. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Quark Runtime
/* jshint node: true */

(function () {
    "use strict";

    exports.util = require("util");
    var _ = require("lodash");

    function Platform() {
    }

    Platform.prototype.isNode = function () {
        return (typeof(window) == 'undefined') || (typeof(window.WebSocket) == 'undefined')
    }

    Platform.prototype.isBrowser = function () {
        return (typeof(window) == "object") && (typeof(window.WebSocket) == 'function');
    }

    var platform = new Platform();
    exports.platform = platform;

    function quark_equals(a, b) {
        return _.isEqual(a, b);
    }
    exports.equals = quark_equals;

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

    function env_get(key) {
        var res = process.env[key];
        if (typeof res != "undefined") {
            return res;
        }
        return null;
    }
    exports.env_get = env_get;

    var os = require("os");
    function userHomeDir() {
        return os.homedir();
    }
    exports.userHomeDir = userHomeDir;

    var fs = require("fs");
    function getFileContents(path, result) {
        try {
            result.value = fs.readFileSync(path, { encoding: "UTF-8" });
            result.finish(null);
        } catch (exc) {
            result.finish(exc.toString());
        }
    }
    exports.getFileContents = getFileContents;

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

    var querystring = require("querystring");
    function urlencode(map) {
        var obj = {};
        map.forEach(function (value, key) {
            obj[key.toString()] = value;
        });
        return querystring.stringify(obj);
    }
    exports.urlencode = urlencode;

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
            if (this.value === null) {
                return "null";
            }
            if (Array.isArray(this.value)) {
                return "list";
            }
        }
        return t;
    }
    JSONObject.prototype.getType = JSONObject_getType;

    function _JSONObject_wrap(value) {
        var j = new JSONObject();
        j.value = value;
        return j;
    }

    function JSONObject_getObjectItem(key) {
        var value = this.value[key];
        if (value === undefined) {
            return this.undefined();
        }
        return _JSONObject_wrap(value);
    }
    JSONObject.prototype.getObjectItem = JSONObject_getObjectItem;

    function JSONObject_getListItem(index) {
        var value = this.value[index];
        if (value === undefined) {
            return this.undefined();
        }
        return _JSONObject_wrap(value);
    }
    JSONObject.prototype.getListItem = JSONObject_getListItem;

    function JSONObject_getString() {
        if (typeof this.value !== "string") {
            return null;
        }
        return this.value;
    }
    JSONObject.prototype.getString = JSONObject_getString;

    function JSONObject_isString() {
        return typeof this.value === "string";
    }
    JSONObject.prototype.isString = JSONObject_isString;

    function JSONObject_getNumber() {
        if (typeof this.value !== "number") {
            return null;
        }
        return this.value;
    }
    JSONObject.prototype.getNumber = JSONObject_getNumber;

    function JSONObject_isNumber() {
        return typeof this.value === "number";
    }
    JSONObject.prototype.isNumber = JSONObject_isNumber;

    function JSONObject_getBool() {
        if (typeof this.value !== "boolean") {
            return null;
        }
        return this.value;
    }
    JSONObject.prototype.getBool = JSONObject_getBool;

    function JSONObject_isBool() {
        return typeof this.value === "boolean";
    }
    JSONObject.prototype.isBool = JSONObject_isBool;

    function JSONObject_isNull() {
        return this.value === null;
    }
    JSONObject.prototype.isNull = JSONObject_isNull;

    function JSONObject_isUndefined() {
        return this === _JSONObject_undefined;
    }
    JSONObject.prototype.isUndefined = JSONObject_isUndefined;

    function JSONObject_isDefined() {
        return !this.isUndefined();
    }
    JSONObject.prototype.isDefined = JSONObject_isDefined;

    var _JSONObject_undefined = new JSONObject();
    _JSONObject_undefined.value = undefined;

    function JSONObject_undefined() {
        return _JSONObject_undefined;
    }
    JSONObject.prototype.undefined = JSONObject_undefined;

    function JSONObject_toString() {
        return JSON.stringify(this.value);
    }
    JSONObject.prototype.toString = JSONObject_toString;

    function JSONObject_keys() {
        if (this.getType() !== "object") {
            return null;
        }
        return Object.getOwnPropertyNames(this.value);
    }
    JSONObject.prototype.keys = JSONObject_keys;

    function JSONObject_setString(value) {
        this.value = value;
        return this;
    }
    JSONObject.prototype.setString = JSONObject_setString;
    _JSONObject_undefined.setString = undefined;

    function JSONObject_setNumber(value) {
        this.value = value;
        return this;
    }
    JSONObject.prototype.setNumber = JSONObject_setNumber;
    _JSONObject_undefined.setNumber = undefined;

    function JSONObject_setBool(value) {
        this.value = !!value;
        return this;
    }
    JSONObject.prototype.setBool = JSONObject_setBool;
    _JSONObject_undefined.setBool = undefined;

    function JSONObject_setNull() {
        this.value = null;
        return this;
    }
    JSONObject.prototype.setNull = JSONObject_setNull;
    _JSONObject_undefined.setNull = undefined;

    function JSONObject_setObject() {
        this.value = {};
        return this;
    }
    JSONObject.prototype.setObject = JSONObject_setObject;
    _JSONObject_undefined.setObject = undefined;

    function JSONObject_isObject() {
        return this.getType() === "object";
    }
    JSONObject.prototype.isObject = JSONObject_isObject;

    function JSONObject_setList() {
        this.value = [];
        return this;
    }
    JSONObject.prototype.setList = JSONObject_setList;
    _JSONObject_undefined.setList = undefined;

    function JSONObject_isList() {
        return this.getType() === "list";
    }
    JSONObject.prototype.isList = JSONObject_isList;

    function JSONObject_setObjectItem(key, value) {
        if (this.getType() !== "object") {
            this.value = {};
        }
        this.value[key] = value.value;
        return this;
    }
    JSONObject.prototype.setObjectItem = JSONObject_setObjectItem;
    _JSONObject_undefined.setObjectItem = undefined;

    function JSONObject_setListItem(index, value) {
        if (this.getType() !== "list") {
            this.value = [];
        }
        for(var i = this.value.length; i < index - 1; i += 1) {
            this.value[i] = null;
        }
        this.value[index] = value.value;
        return this;
    }
    JSONObject.prototype.setListItem = JSONObject_setListItem;
    _JSONObject_undefined.setListItem = undefined;

    function JSONObject_size() {
        if (this.getType() === "list") {
            return this.value.length;
        } else if (this.getType() === "object") {
            return Object.keys(this.value).length;
        } else {
            return 1;
        }
    }
    JSONObject.prototype.size = JSONObject_size;
    _JSONObject_undefined.size = undefined;

    function json_from_string(json) {
        var raw = JSON.parse(json);
        var value = new JSONObject();
        value.value = raw;
        return value;
    }

    exports.json_from_string = json_from_string;

    function HTTPRequest(url) {
        this.url = url;
        this.method = "GET";
        this.body = null;
        this.headers = {};
    }

    function HTTPRequest_getUrl() {
        return this.url;
    }
    HTTPRequest.prototype.getUrl = HTTPRequest_getUrl;

    function HTTPRequest_setMethod(method) {
        this.method = method;
    }
    HTTPRequest.prototype.setMethod = HTTPRequest_setMethod;

    function HTTPRequest_getMethod() {
        return this.method;
    }
    HTTPRequest.prototype.getMethod = HTTPRequest_getMethod;

    function HTTPRequest_setBody(body) {
        this.body = body;
    }
    HTTPRequest.prototype.setBody = HTTPRequest_setBody;

    function HTTPRequest_getBody() {
        return this.body;
    }
    HTTPRequest.prototype.getBody = HTTPRequest_getBody;

    function HTTPRequest_setHeader(key, value) {
        this.headers[key.toLowerCase()] = value;
    }
    HTTPRequest.prototype.setHeader = HTTPRequest_setHeader;

    function HTTPRequest_getHeader(key) {
        return this.headers[key.toLowerCase()];
    }
    HTTPRequest.prototype.getHeader = HTTPRequest_getHeader;

    function HTTPRequest_getHeaders() {
        return Object.keys(this.headers).slice();
    }
    HTTPRequest.prototype.getHeaders = HTTPRequest_getHeaders;

    exports.HTTPRequest = HTTPRequest;

    function QuarkBuffer(arg) {
        if (Buffer.isBuffer(arg)) {
            this.data = arg;
        } else if (Number.isInteger(arg)) {
            this.data = new Buffer(Array(arg));
        } else {
            this.data = new Buffer(arg);
        }
        this.be = true;
    }

    exports.Buffer = QuarkBuffer;

    function QuarkBuffer_capacity() {
        return this.data.length;
    }
    QuarkBuffer.prototype.capacity = QuarkBuffer_capacity;

    function QuarkBuffer_getByte(index) {
        return this.data[index];
    }
    QuarkBuffer.prototype.getByte = QuarkBuffer_getByte;

    function QuarkBuffer_putByte(index, value) {
        this.data[index] = value;
    }
    QuarkBuffer.prototype.putByte = QuarkBuffer_putByte;

    function QuarkBuffer_getShort(index) {
        if (this.be) {
            return this.data.readInt16BE(index);
        } else {
            return this.data.readInt16LE(index);
        }
    }
    QuarkBuffer.prototype.getShort = QuarkBuffer_getShort;

    function QuarkBuffer_putShort(index, value) {
        if (this.be) {
            this.data.writeInt16BE(value, index);
        } else {
            this.data.writeInt16LE(value, index);
        }
    }
    QuarkBuffer.prototype.putShort = QuarkBuffer_putShort;


    function QuarkBuffer_getInt(index) {
        if (this.be) {
            return this.data.readInt32BE(index);
        } else {
            return this.data.readInt32LE(index);
        }
    }
    QuarkBuffer.prototype.getInt = QuarkBuffer_getInt;

    function QuarkBuffer_putInt(index, value) {
        if (this.be) {
            this.data.writeInt32BE(value, index);
        } else {
            this.data.writeInt32LE(value, index);
        }
    }
    QuarkBuffer.prototype.putInt = QuarkBuffer_putInt;

    function QuarkBuffer_getLong(index) {
        var sgn;
        if (this.be) {
            sgn = this.data.readIntBE(index, 2);
            if (-1 <= sgn && sgn <= 0) {
                return this.data.readIntBE(index + 2, 6);
            }
        } else {
            sgn = this.data.readIntLE(index + 6, 2);
            if (-1 <= sgn && sgn <= 0) {
                return this.data.readIntLE(index, 6);
            }
        }
        throw new TypeError("value out of representable range " + this.data.toString("hex", index, index+8));
    }
    QuarkBuffer.prototype.getLong = QuarkBuffer_getLong;

    function QuarkBuffer_putLong(index, value) {
        var sgn = value < 0 ? -1 : 0;
        if (this.be) {
            this.data.writeIntBE(value, index+2, 6);
            this.data.writeIntBE(sgn, index, 2);
        } else {
            this.data.writeIntLE(value, index, 6);
            this.data.writeIntLE(sgn, index+6, 2);
        }
    }
    QuarkBuffer.prototype.putLong = QuarkBuffer_putLong;

    function QuarkBuffer_getFloat(index) {
        if (this.be) {
            return this.data.readDoubleBE(index);
        } else {
            return this.data.readDoubleLE(index);
        }
    }
    QuarkBuffer.prototype.getFloat = QuarkBuffer_getFloat;

    function QuarkBuffer_putFloat(index, value) {
        if (this.be) {
            this.data.writeDoubleBE(value, index);
        } else {
            this.data.writeDoubleLE(value, index);
        }
    }
    QuarkBuffer.prototype.putFloat = QuarkBuffer_putFloat;

    function QuarkBuffer_getStringUTF8(index, length) {
        return this.data.toString(undefined, index, index + length);
    }
    QuarkBuffer.prototype.getStringUTF8 = QuarkBuffer_getStringUTF8;

    function QuarkBuffer_putStringUTF8(index, value) {
        var length = Buffer.byteLength(value);
        var actual = this.data.write(value, index, length);
        if (length !== actual) {
            throw new RangeError("String does not fit");
        }
        return actual;
    }
    QuarkBuffer.prototype.putStringUTF8 = QuarkBuffer_putStringUTF8;

    function QuarkBuffer_getSlice(index, length) {
        var other = new QuarkBuffer(this.data.slice(index, index + length));
        other.be = this.be;
        return other;
    }
    QuarkBuffer.prototype.getSlice = QuarkBuffer_getSlice;

    function QuarkBuffer_setSlice(index, buffer, offset, length) {
        buffer.data.copy(this.data, index, offset, offset + length);
    }
    QuarkBuffer.prototype.setSlice = QuarkBuffer_setSlice;

    function QuarkBuffer_littleEndian() {
        var other = new QuarkBuffer(this.data);
        other.be = false;
        return other;
    }
    QuarkBuffer.prototype.littleEndian = QuarkBuffer_littleEndian;

    function QuarkBuffer_isNetworkByteOrder() {
        return this.be;
    }
    QuarkBuffer.prototype.isNetworkByteOrder = QuarkBuffer_isNetworkByteOrder;

    function Codec() {
        // empty
    }

    var codec = new Codec();

    function Codec_buffer(capacity) {
        return new QuarkBuffer(capacity);
    }
    Codec.prototype.buffer = Codec_buffer;

    function Codec_toHexdump(buffer, offset, length, spaceScale) {
        var hex = buffer.data.toString("hex", offset, offset + length);
        var stride = Math.pow(2, (spaceScale+1));
        var ret = hex.slice(0, stride);
        for (var i = stride; i < hex.length; i += stride) {
            ret = ret + " " + hex.slice(i, i + stride);
        }
        return ret;
    }
    Codec.prototype.toHexdump = Codec_toHexdump;

    function Codec_fromHexdump(hex) {
        hex = hex.replace(/[ \r\n\t]/g, "");
        hex = hex.replace(/^0[Xx]/, "");
        return new QuarkBuffer(new Buffer(hex, "hex"));
    }
    Codec.prototype.fromHexdump = Codec_fromHexdump;

    function Codec_toBase64(buffer, offset, length) {
        return buffer.data.toString("base64", offset, offset + length);
    }
    Codec.prototype.toBase64 = Codec_toBase64;

    function Codec_fromBase64(base64) {
        return new QuarkBuffer(new Buffer(base64, "base64"));
    }
    Codec.prototype.fromBase64 = Codec_fromBase64;

    function defaultCodec() {
        return codec;
    }

    exports.defaultCodec = defaultCodec;

    function _getClass(obj) {
        if (typeof obj === "boolean") { return "quark.bool"; }
        if (typeof obj === "number") { return "quark.float"; }
        if (typeof obj === "string") { return "quark.String"; }
        if (obj instanceof Array) { return "quark.List<quark.Object>"; }
        if (obj instanceof Map) { return "quark.Map<quark.Object,quark.Object>"; }

        if (obj._getClass) { return obj._getClass(); }

        return null;
    }
    exports._getClass = _getClass;

    function _RuntimeFactory() {
        this.runtimeName = "quark/quark_node_runtime";
    }
    _RuntimeFactory.prototype.create = function() {
        return require(this.runtimeName);
    }

    exports.RuntimeFactory = new _RuntimeFactory();

    function Lock() {
        this.locked = false;
    }

    function Lock_Acquire() {
        if (this.locked) {
            this._fail("Illegal re-acquisition of a quark Lock.");
        }
        this.locked = true;
    }
    Lock.prototype.acquire = Lock_Acquire;

    function Lock_Release() {
        if (!this.locked) {
            this._fail("Illegal release of a not-acquired quark Lock.");
        }
        this.locked = false;
    }
    Lock.prototype.release = Lock_Release;

    Lock.prototype._fail = function(msg) {
        var obj = {}
        Error.captureStackTrace(obj)
        console.error(msg, obj.stack)
        process.exit(1)
    }

    exports.Lock = Lock

    function Condition() {
        Condition.super_.call(this);
    }
    exports.util.inherits(Condition, Lock)

    function Condition_waitWakeup(timeout) {
        this._fail("waiting on quark Condition is not allowed in Javascript");
    }
    Condition.prototype.waitWakeup = Condition_waitWakeup;

    function Condition_wakeup(timeout) {
        this._fail("waking up a quark Condition is not allowed in Javascript");
    }
    Condition.prototype.wakeup = Condition_wakeup;

    exports.Condition = Condition;

    function TLS(initializer) {
        this._initializer = initializer;
        this.getValue = function() {
            this._value = this._initializer.getValue();
            delete this.getValue;
            delete this.setValue;
            return this.getValue();
        };
        this.setValue = function(value) {
            this._value = this._initializer.getValue();
            delete this.getValue;
            delete this.setValue;
            return this.setValue(value);
        };
    }

    function TLS_getValue() {
        return this._value;
    }
    TLS.prototype.getValue = TLS_getValue;

    function TLS_setValue(value) {
        this._value = value;
    }
    TLS.prototype.setValue = TLS_setValue;

    exports.TLS = TLS

    function makeStreamAppender(stream) {
        return function (line) {
            stream.write(line);
            stream.write("\n");
        };
    }

    function makeFileAppender(path) {
        if (platform.isNode()) {
            var fs = require("fs");
            return makeStreamAppender(fs.createWriteStream(path));
        } else {
            return function (line) {
                console.log(line);
            };
        }
    }

    var STDOUT, STDERR;

    if (platform.isNode()) {
        STDOUT = makeStreamAppender(process.stdout);
        STDERR = makeStreamAppender(process.stderr);
    } else {
        STDOUT = function (line) { console.log(line); };
        STDERR = function (line) { console.err(line); };
    }

    var levels = {}

    function Level(name, num) {
        this.name = name;
        this.num = num;
        levels[name] = this;
    }

    var TRACE = new Level("TRACE", 1);
    var DEBUG = new Level("DEBUG", 2);
    var INFO = new Level("INFO", 3);
    var WARN = new Level("WARN", 4);
    var ERROR = new Level("ERROR", 5);

    function LoggerConfig() {
        this.appender = STDOUT;
        this.level = INFO;
    }

    function LogConfigurator(cfg) {
        this.cfg = cfg;
        this.appender = STDOUT;
        this.level = INFO;
    }
    LogConfigurator.prototype.setAppender = function setAppender(appender) {
        this.appender = appender;
        return this;
    }
    LogConfigurator.prototype.setLevel = function setLevel(level) {
        if (typeof(level)=='string') {
            level = level.toUpperCase();
        }
        if (level in levels) {
            this.level = levels[level];
        }
        return this;
    }
    LogConfigurator.prototype.configure = function configure() {
        this.cfg.appender = this.appender;
        this.cfg.level = this.level;
    }

    LoggerConfig.prototype.config = function config() {
        return new LogConfigurator(this);
    }

    LoggerConfig.prototype.stdout = function stdout() {
        return STDOUT;
    }

    LoggerConfig.prototype.stderr = function stderr() {
        return STDERR;
    }

    LoggerConfig.prototype.file = function file(path) {
        return makeFileAppender(path);
    }


    var config = new LoggerConfig();
    exports.LoggerConfig = config;

    var loggers = {}

    function Logger(topic) {
        this.topic = "quark." + topic;
    }

    Logger.prototype.trace = function (msg) { this.log(TRACE, msg); }
    Logger.prototype.debug = function (msg) { this.log(DEBUG, msg); }
    Logger.prototype.info = function (msg)  { this.log(INFO,  msg); }
    Logger.prototype.warn = function (msg)  { this.log(WARN,  msg); }
    Logger.prototype.error = function (msg) { this.log(ERROR, msg); }
    Logger.prototype.log = function(level, msg) {
        if (config.level.num <= level.num) {
            var line = level.name + " " + this.topic + " " + msg;
            config.appender(line);
        }
    }

    exports.logger = function(topic) {
        if (!(topic in loggers)) {
            loggers[topic] = new Logger(topic);
        }
        return loggers[topic];
    }

})();
