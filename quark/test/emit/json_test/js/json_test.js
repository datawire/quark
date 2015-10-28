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

function test_iterate_list() {
    var l = _qrt.json_from_string("[1,2,3,4,5,6,7]");
    var i = 0;
    var item = (l).getListItem(i);
    while ((item) !== ((l).undefined())) {
        _qrt.print(((("l[") + (_qrt.toString(i))) + ("] = ")) + (_qrt.toString((item).getNumber())));
        i = (i) + (1);
        item = (l).getListItem(i);
        if ((i) > (10)) {
            _qrt.print("Error!");
            return;
        }
    }
}
exports.test_iterate_list = test_iterate_list;

function main() {
    test_roundtrip();
    test_iterate_list();
}
exports.main = main;

main();
