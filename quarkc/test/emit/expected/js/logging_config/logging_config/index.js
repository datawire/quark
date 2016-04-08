var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;


exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    (((_qrt.LoggerConfig.config()).setAppender(_qrt.LoggerConfig.stdout())).setLevel("DEBUG")).configure();
    var l = (quark.concurrent.Context.runtime()).logger("hello");
    (l).trace("Should not see trace log");
    (l).debug("Debug log");
    (l).info("Info log");
    (l).error("Error log");
}
exports.main = main;
