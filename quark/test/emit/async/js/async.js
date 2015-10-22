var _qrt = require("quark_runtime.js");

// CLASS Later
function Later() {
    Later.super_.call(this);
}
exports.Later = Later;
_qrt.util.inherits(Later, _qrt.Async);

function Later__init_fields__() {
    _qrt.Async.prototype.__init_fields__.call(this);
}
Later.prototype.__init_fields__ = Later__init_fields__;

function Later_callback(result) {
    _qrt.print((("result: ") + (result)) + ("\n"));
}
Later.prototype.callback = Later_callback;

function Later_errback(failure) {
    _qrt.print((("failure: ") + (failure)) + ("\n"));
}
Later.prototype.errback = Later_errback;

function main() {
    var l = new Later();
    (l).callback("expected");
    (l).errback("expected");
    _qrt.url_get_async(("http://localhost:49872"),(l));
}
exports.main = main;

main();
