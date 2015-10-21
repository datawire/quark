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
    _qrt.print(("later: ") + (result));
}
Later.prototype.callback = Later_callback;

function Later_errback(failure) {
    _qrt.print(("later failure: ") + (failure));
}
Later.prototype.errback = Later_errback;

// CLASS Requestbin

function Requestbin() {
    Requestbin.super_.call(this);
    (this).done = 0;
}
exports.Requestbin = Requestbin;
_qrt.util.inherits(Requestbin, _qrt.Async);

function Requestbin__init_fields__() {
    _qrt.Async.prototype.__init_fields__.call(this);
    this.done = null;
}
Requestbin.prototype.__init_fields__ = Requestbin__init_fields__;

function Requestbin_callback(result) {
    this.done = (this.done) + (1);
    _qrt.print(("requestbin: ") + (result));
}
Requestbin.prototype.callback = Requestbin_callback;

function Requestbin_errback(failure) {
    this.done = (this.done) + (1);
    _qrt.print(("requestbin failure: ") + (failure));
}
Requestbin.prototype.errback = Requestbin_errback;

function main() {
    var l = new Later();
    (l).callback("expected");
    (l).errback("expected");
    var r = new Requestbin();
    _qrt.url_get_async(("http://127.0.0.1:9999"),(r));
}
exports.main = main;

main();
