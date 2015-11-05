var _qrt = require("quark_runtime.js");
var pkg = require('./pkg');
exports.pkg = pkg;
var slack = require('./slack');
exports.slack = slack;




function main() {
    var cli = new slack.Client(null, "fake-token", new pkg.Handler());
    (cli).onWSMessage(null, "{\"type\": \"hello\"}");
    (cli).onWSMessage(null, "{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}");
}
exports.main = main;

main();
