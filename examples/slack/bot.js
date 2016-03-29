// Connect to Slack

"use strict";

var util = require("util");
var fs = require("fs");

var slack = require("slack").slack;

function Handler() {
    this.onHello = function(hello) {
        console.log(hello);
    };
    this.onSlackError = function(error) {
        console.log(error);
    };
    this.onSlackEvent = function(event) {
        console.log(event);
    };
    this.onMessage = function(message) {
        console.log(message);
        if (message.text !== null && message.text.indexOf("quark") > -1) {
            message.channel.send("JavaScript bot says hi!");
        }
    };
}
util.inherits(Handler, slack.SlackHandler);

// you need to go to https://api.slack.com/web and generate an access token
try {
    var token = fs.readFileSync(".slack.token", "ASCII").trim();
} catch (e) {
    console.log("Failed to read Slack token. See examples/README.md for more information.");
    process.exit(1);
}
var client = new slack.SlackClient(token);
client.post("#demo", "JavaScript Slack client is connected");
client.subscribe(new Handler());
