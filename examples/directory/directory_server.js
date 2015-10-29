// Directory server
/* jshint node: true */
/* global Map */

(function () {
    "use strict";

    function log(message) {
        var iso = new Date().toISOString();
        var date = iso.slice(0, 10);
        var time = iso.slice(11, 19);
        console.log("[" + date + " " + time + "] " + message);
    }

    var data = new Map();  // service name -> endpoint  // FIXME should be [ endpoint, ... ]

    var clients = [];

    function Client(socket) {
        this.socket = socket;
        this.subscribed = false;
        this.service = null;
        this.lastHeartbeatTime = new Date();
        var self = this;
        socket.on("message", function (message_json) { self.onMessage(message_json); });
        socket.on("close", function () { self.onClose(); });  // XXX arguments available
        socket.on("error", function () { self.onError(); });  // XXX arguments available
    }

    function Client_onMessage(message_json) {
        var message;
        try {
            message = JSON.parse(message_json);
        } catch (e) {
            message = { "op": "PARSE FAILED" };
        }
        if (!message.op) {
            message = { "op": "BAD FORMAT" };
        }

        //log("RECEIVED " + message.op);
        if (message.op === "subscribe") {
            this.subscribed = true;
            sendAllEntries(this.socket);
        } else if (message.op === "tether") {
            data.set(message.service, message.endpoint);
            this.service = message.service;
            publishEntry(message.service);
        } else if (message.op === "lookup") {
            sendEntry(this.socket, message.service);
        } else if (message.op === "heartbeat") {
            this.lastHeartbeatTime = new Date();
        } else {
            log("RECEIVED " + message.op + " (svc=" + this.service + ")");
            log(message_json);
        }
    }
    Client.prototype.onMessage = Client_onMessage;

    function Client_onClose() {
        // Remove myself from clients list
        var idx = clients.indexOf(this);
        clients.splice(idx, 1);

        // If tethered, remove my entry
        if (this.service) {
            data.delete(this.service);
        }

        log("Remote connection closed (svc=" + this.service + ").");
    }
    Client.prototype.onClose = Client_onClose;

    function Client_onError() {
        log("Remote connection error detected (svc=" + this.service + ").");
        this.onClose();
    }
    Client.prototype.onError = Client_onError;

    function sendEntry(socket, service) {
        var res = { "op": "entry", "service": service, "endpoints": [data.get(service), "bogus"] };
        socket.send(JSON.stringify(res));
    }

    function sendAllEntries(socket) {
        data.forEach(function (value, key) {
            sendEntry(socket, key);
        });
        socket.send(JSON.stringify({ "op": "initialized" }));
    }

    function publishEntry(service) {
        clients.forEach(function (client) {
            if (client.subscribed) {
                sendEntry(client.socket, service);
            }
        });
    }

    function logClients() {
        var now = new Date();
        clients.forEach(function (client, idx) {
            var out = "Client " + idx + " staleness=" + (now - client.lastHeartbeatTime) +"ms svc=" + client.service;
            if (client.subscribed) {
                out += " subscribed";
            }
            log(out);
        });
    }

    var ws = require("ws");

    var server = new ws.Server({ port: 8910 });

    log("Server created");
    server.on("connection", function (socket) {
        log("Got connection");
        var client = new Client(socket);
        clients.push(client);
    });
    log("Waiting...");

    setInterval(logClients, 5000);

})();
