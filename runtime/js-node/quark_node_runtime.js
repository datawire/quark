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

// Quark's Node Runtime and associated
/* jshint node: true */

(function () {
    "use strict";

    var assert = require("assert");

    var WebSocket = require("ws");

    var runtime = require("datawire-quark-core");

    // CLASS QuarkWebsocket
    function QuarkWebSocket(options, handler) {

        var self = this;
        handler.onWSInit(self);
        if (options.socket) {
            this.url = options.url;
            this.socket = options.socket;
            this.isOpen = true;
            handler.onWSConnected(self)
        } else {
            this.url = options.url;
            this.socket = new WebSocket(options.url);
            this.isOpen = false;
            this.socket.on("open", function () {
                self.isOpen = true;
                handler.onWSConnected(self);
            });
        }
        this.socket.on("message", function (message, flags) {
            if (flags.binary) {
                handler.onWSBinary(self, new runtime._Buffer(message));
            } else {
                handler.onWSMessage(self, message);
            }
        });
        this.socket.on("close", function (/* code, message */) {
            handler.onWSClosed(self);
            self.socket.terminate();
            handler.onWSFinal(self);
        });
        this.socket.on("error", function (/* error */) {
            handler.onWSError(self);
            self.socket.terminate();
            handler.onWSFinal(self);
        });
    }
    QuarkWebSocket.prototype.send = function (message) {
        if (this.isOpen) {
            this.socket.send(message);
            return true;
        }
        return false;
    };
    QuarkWebSocket.prototype.sendBinary = function(message) {
        if (this.isOpen) {
            this.socket.send(message.data, {binary:true});
            return true;
        }
        return false;
    };
    QuarkWebSocket.prototype.close = function() {
        if (this.isOpen) {
            this.socket.close();
            return true;
        }
        return false;
    }

    var http = require("http");
    var https = require("https");
    var URL = require("url");

    // CLASS QuarkRequest
    function QuarkRequest(request, handler) {
        var options = URL.parse(request.url);
        options.method = request.method;

        handler.onHTTPInit(request);

        var protocol = http;
        if (options.protocol === "https:") {
            protocol = https;
        }

        options.headers = JSON.parse(JSON.stringify(request.headers));  // Make a copy
        if (request.body) {
            options.headers["Content-Length"] = Buffer.byteLength(request.body);
        }

        var req = protocol.request(options);
        req.on("response", function (response) {
            var body = "";
            response.on("data", function (data) {
                body += data;
            });
            response.on("end", function () {
                handler.onHTTPResponse(
                    request,
                    new QuarkResponse(response.statusCode,
                                      body,
                                      response.headers));
                req.abort();
                handler.onHTTPFinal(request);
            });
        });

        req.on("error", function (/* error */) {
            handler.onHTTPError(request);
            req.abort();
            handler.onHTTPFinal(request);
        });

        if (request.body) {
            req.write(request.body);
        }
        req.end();
    }

    // CLASS QuarkResponse
    function QuarkResponse(code, body, headers) {
        this.code = code;
        this.body = body;
        this.headers = headers;
    }
    QuarkResponse.prototype.getCode = function () {
        return this.code;
    };
    QuarkResponse.prototype.setCode = function(code) {};
    QuarkResponse.prototype.getBody = function () {
        return this.body;
    };
    QuarkResponse.prototype.setBody = function(body) {};
    QuarkResponse.prototype.getHeader = function(key) {
        return this.headers[key.toLowerCase()];
    };
    QuarkResponse.prototype.setHeader = function(key,value) {};
    QuarkResponse.prototype.getHeaders = function() {
        var keys = new Array();
        for (var key in this.headers) {
            keys.push(key);
        }
        return keys;
    }

    function IncomingRequest(request) {
        this.request = request;
        this.body = new runtime.Buffer(1024*1024); // XXX: nobody needs more than one megabytez
        this.content_length = 0;
        var self = this;
        request.on("data", function(chunk) {
            chunk.copy(self.body.data, self.content_length);
            self.content_length += chunk.length;
        });
    }

    IncomingRequest.prototype.getUrl = function() {
        return this.request.url;
    }

    IncomingRequest.prototype.getMethod = function() {
        return this.request.method;
    }

    IncomingRequest.prototype.getBody = function() {
        return this.body.getStringUTF8(0, this.content_length);
    }

    IncomingRequest.prototype.getHeader = function(key) {
        return this.request.headers[key.toLowerCase()];
    }

    IncomingRequest.prototype.getHeaders = function() {
        return Object.keys(this.request.headers);
    }

    function ServletResponse(response) {
        this.response = response;
        this.code = 500;
        this.body = "No response";
        this.headers = {}
    }

    ServletResponse.prototype.getCode = function() {
        return this.code;
    }
    ServletResponse.prototype.setCode = function(code) {
        this.code = code;
    }
    ServletResponse.prototype.getBody = function() {
        return body;
    }
    ServletResponse.prototype.setBody = function(body) {
        this.body = body;
    }
    ServletResponse.prototype.setHeader = function(key, value) {
        this.headers[key.toLowerCase()] = value;
    }
    ServletResponse.prototype.getHeader = function(key) {
        return this.headers[key.toLowerCase()];
    }
    ServletResponse.prototype.getHeaders = function() {
        return Object.keys(this.headers);
    }
    ServletResponse.prototype.respond = function() {
        this.setHeader('content-length', Buffer.byteLength(this.body));
        this.response.writeHead(this.code, this.headers);
        this.response.write(this.body, "utf-8");
        this.response.end();
    }
    ServletResponse.prototype.fail = function(code, message) {
        this.code = code;
        this.body = message;
        this.headers = {}
        this.respond();
    }

    // CLASS Runtime
    function Runtime() {
        this.locked = false;
    }
    Runtime.prototype.acquire = function () {
        assert(!this.locked);
        this.locked = true;
    };
    Runtime.prototype.release = function () {
        assert(this.locked);
        this.locked = false;
    };
    Runtime.prototype.wait = function (/* timeoutInSeconds */) {
        assert(this.locked);
        assert(false);
    };
    Runtime.prototype.open = function (url, handler) {
        new QuarkWebSocket({url:url}, handler);
    };

    Runtime.prototype.request = function (request, handler) {
        new QuarkRequest(request, handler);
    };

    Runtime.prototype.schedule = function (handler, delayInSeconds) {
        var self = this;
        setTimeout(function () { handler.onExecute(self); },
                   delayInSeconds * 1000);
    };
    Runtime.prototype.launch = function () {};

    Runtime.prototype.codec = function() { return runtime.defaultCodec(); };


    function QuarkContainer() {
        this.servlets = {}
    }

    QuarkContainer.prototype.register = function(uri, servlet) {
        var old = this.servlets[uri.pathname];
        uri.servlet = servlet;
        this.servlets[uri.pathname] = uri;
    }

    QuarkContainer.prototype.lookup = function(url) {
        var uri = URL.parse(url, false)
        return this.servlets[uri.pathname]
    }

    function QuarkServer(container, runtime) {
        this.server = http.createServer();
        this.container = container;
        this.runtime = runtime;
    }

    QuarkServer.prototype.bindServlet = function(uri, servlet) {
        var self = this;
        self.container.register(uri, servlet);
        this.onListen(function(addr) {
            var url = URL.format({
                protocol: uri.protocol,
                slashes: uri.slashes,
                hostname: addr.address,
                port: addr.port,
                pathname: uri.pathname})
            servlet.onServletInit(url, self.runtime);
        });
        this.server.on("error", function(error) {
            servlet.onServletError(URL.format(uri), error.message);
        });
    }

    QuarkServer.prototype.onListen = function(cb) {
        var self = this;
        var addr = self.server.address();
        if (addr) {
            cb(addr);
        } else {
            this.server.on("listening", function() {
                addr = self.server.address();
                cb(addr)
            });
        }
    }

    var servers = {}

    function make_server(port, hostname, runtime) {
        // XXX: we should be looking at host, too
        var server = servers[port];
        if (server !== undefined) {
            return server;
        }
        var container = new QuarkContainer()
        server = new QuarkServer(container, runtime);
        if (port && port != 0 && port != '0') {
            servers[port] = server;
        } else {
            server.server.on("listening", function() {
                servers[server.server.address().port] = server
            });
        }
        server.server.on("request", function(request, response) {
            var rq = new IncomingRequest(request);
            var rs = new ServletResponse(response);
            rs.servlet_request = rq;
            request.on("end", function() {
                var servlet = container.lookup(request.url)
                if (servlet !== undefined) {
                    if (servlet.protocol.startsWith("http")) {
                        try {
                            servlet.servlet.onHTTPRequest(rq, rs);
                        } catch (err) {
                            var e = ((err instanceof Error) ? err.stack : err);
                            console.log(e);
                            rs.fail(400, "" + e + "\r\n");
                        }
                    } else {
                        rs.fail(400, "websockets here, move along\r\n");
                    }
                } else {
                    rs.fail(404, "Not found\r\n");
                }
            });
        });
        server.server.on("upgrade", function(request, socket, head) {
            var handler = undefined;
            var wss = new WebSocket.Server(
                {noServer: true,
                 verifyClient : function(info, cb) {
                     var servlet = container.lookup(info.req.url);
                     if (servlet !== undefined) {
                         if (servlet.protocol.startsWith("ws")) {
                             var rq = new IncomingRequest(info.req);
                             handler = servlet.servlet.onWSConnect(rq);
                             cb(!!handler, 403, "not happening");
                         } else {
                             cb(false, 400, "http here, move along");
                         }
                     } else {
                         cb(false, 404, "Not found");
                     }
                 }
                });
            wss.handleUpgrade(request, socket, head, function(socket) {
                new QuarkWebSocket({url: socket.upgradeReq.url,
                                    socket: socket},
                                   handler);
            });
        });
        server.server.on("error", function(error) {
            delete servers[port]
        });
        server.server.listen(port, hostname);
        return server;
    }

    Runtime.prototype.serveHTTP = function(url, servlet) {
        var self = this;
        var uri = URL.parse(url, false, true);
        var path = uri.pathname ? uri.pathname : "";
        if (!path.startsWith("/")) {
            path = "/" + path;
        }
        var pathslash = path + (path.endsWith("/") ? "" : "/");
        var server = undefined;

        if (uri.protocol == "http:") {
            if (uri.port === null ) {
                uri.port = '80';
            }
        } else if (uri.protocol == "https:") {
            // XXX: certificates...
            if (uri.port === null ) {
                uri.port = '443';
            }
            servlet.onHTTPError(url);
            return;
        } else {
            servlet.onHTTPError(url);
            return;
        }

        server = make_server(uri.port, uri.hostname, self);
        server.bindServlet(uri, servlet);
    }

    Runtime.prototype.serveWS = function(url, servlet) {
        var self = this;
        var uri = URL.parse(url, false, true);
        var path = uri.pathname ? uri.pathname : "";
        if (!path.startsWith("/")) {
            path = "/" + path;
        }
        var pathslash = path + (path.endsWith("/") ? "" : "/");
        var server = undefined;

        if (uri.protocol == "ws:") {
            if (uri.port === null ) {
                uri.port = '80';
            }
        } else if (uri.protocol == "wss:") {
            // XXX: certificates...
            if (uri.port === null ) {
                uri.port = '443';
            }
            servlet.onHTTPError(url);
            return;
        } else {
            servlet.onHTTPError(url);
            return;
        }
        server = make_server(uri.port, uri.hostname, self);
        server.bindServlet(uri, servlet);
    }

    Runtime.prototype.respond = function(request, response) {
        if (response instanceof ServletResponse) {
            if (response.servlet_request === request) {
                response.respond();
            } else {
                response.fail(500, "mismatched request and response");
            }
        } else {
            // XXX: what to do with a response from another runtime
        }
    }

    module.exports = new Runtime();

})();
