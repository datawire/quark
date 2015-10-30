var runtime = require("quark_node_runtime.js");
var slack = require("slack")

function Handler() {}
Handler.prototype.onHello = function(hello) {
    console.log("Hello");
};
Handler.prototype.onSlackError = function(error) {
    console.log(error.code + " " + error.text);
};
Handler.prototype.onMessage = function(message) {
    console.log(message.text);
};

// you need to go to the slack api page and generate an access token
var token = "*replace-me*"
client = new slack.Client(runtime, token, new Handler(0));
client.connect();
