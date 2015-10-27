var _qrt = require("quark_runtime.js");

function test_roundtrip() {
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setObject()).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setList()).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setString("")).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setBool(0)).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setBool(1)).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setNull()).toString())).toString());
}
exports.test_roundtrip = test_roundtrip;

function main() {
    test_roundtrip();
}
exports.main = main;

main();
