var runtime = require("quark_node_runtime.js")
var slack = require("slack")
var util = require("util")

function Handler() {
    this.onHello = function(hello) {
        console.log(hello)
    }
    this.onSlackError = function(error) {
        console.log(error)
    }
    this.onSlackEvent = function(event) {
        console.log(event)
    }
    this.onMessage = function(message) {
        console.log(message)
        if (message.text != null && message.text.indexOf("quark") > -1) {
            message.channel.send("quarkbot: " + message.text)
        }
    }
}

util.inherits(Handler, slack.SlackHandler)

// you need to go to https://api.slack.com/web and generate an access token
var token = "xoxp-3910618990-4153681316-13601165377-914ddc6f19"
client = new slack.Client(runtime, token, new Handler());
client.connect();
