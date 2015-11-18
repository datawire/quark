var _qrt = require("quark_runtime.js");

// CLASS Message
function Message() {
    this.__init_fields__();
}
exports.Message = Message;

function Message__init_fields__() {}
Message.prototype.__init_fields__ = Message__init_fields__;

function Message_encode() {
    return "ENCODED";
}
Message.prototype.encode = Message_encode;

// CLASS Ping
function Ping() {
    Ping.super_.call(this);
}
exports.Ping = Ping;
_qrt.util.inherits(Ping, Message);

function Ping__init_fields__() {
    Message.prototype.__init_fields__.call(this);
}
Ping.prototype.__init_fields__ = Ping__init_fields__;


// CLASS Pong
function Pong() {
    Pong.super_.call(this);
}
exports.Pong = Pong;
_qrt.util.inherits(Pong, Message);

function Pong__init_fields__() {
    Message.prototype.__init_fields__.call(this);
}
Pong.prototype.__init_fields__ = Pong__init_fields__;

function Pong_toString() {
    return "PONG";
}
Pong.prototype.toString = Pong_toString;

// CLASS Test
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {}
Test.prototype.__init_fields__ = Test__init_fields__;

function Test_bar(name, args) {
    _qrt.print(args);
    return null;
}
Test.prototype.bar = Test_bar;

function Test_foo(foo, bar, baz) {
    (this).bar("foo", [foo, bar, baz]);
}
Test.prototype.foo = Test_foo;

function Test_rpc(name, msg) {
    _qrt.print((msg).encode());
    if ((name) === ("hello")) {
        return new Pong();
    } else {
        return null;
    }
}
Test.prototype.rpc = Test_rpc;

function Test_hello(ping) {
    return (this).rpc("hello", ping);
}
Test.prototype.hello = Test_hello;

function main() {
    var t = new Test();
    (t).foo("one", "two", 3);
    _qrt.print(((t).hello(new Ping())).toString());
}
exports.main = main;

main();
