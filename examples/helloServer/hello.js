"use strict";

var util = require("util");
var fs = require("fs");

var runtime = require("datawire-quark-node");
var hello_server = require("hello_server");

var servlet = new hello_server.HelloServlet();
runtime.serveHTTP("http://127.0.0.1:9876/foo", servlet);
