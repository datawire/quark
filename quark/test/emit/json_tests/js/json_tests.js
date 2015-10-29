var _qrt = require("quark_runtime.js");

function test_roundtrip() {
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setObject()).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setList()).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setString("")).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setBool(false)).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setBool(true)).toString())).toString());
    _qrt.print((_qrt.json_from_string(((new _qrt.JSONObject()).setNull()).toString())).toString());
}
exports.test_roundtrip = test_roundtrip;

function test_iterate_list() {
    var l = _qrt.json_from_string("[1.2,2.3,3.4,4.5,5.6,6.7,7.8]");
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

function test_iterate_list_directory() {
    var message = ((new _qrt.JSONObject()).setObjectItem("endpoints", (((new _qrt.JSONObject()).setListItem(0, (new _qrt.JSONObject()).setString("endpoint0"))).setListItem(1, (new _qrt.JSONObject()).setString("endpoint1"))).setListItem(2, (new _qrt.JSONObject()).setString("endpoint2")))).toString();
    _qrt.print(message);
    var jobj = _qrt.json_from_string(message);
    var endpoints = (jobj).getObjectItem("endpoints");
    var i = 0;
    var endpoint = (endpoints).getListItem(i);
    while ((endpoint) !== ((endpoints).undefined())) {
        var ep = (endpoint).getString();
        _qrt.print(ep);
        i = (i) + (1);
        endpoint = (endpoints).getListItem(i);
    }
}
exports.test_iterate_list_directory = test_iterate_list_directory;

function main() {
    test_roundtrip();
    test_iterate_list();
    test_iterate_list_directory();
}
exports.main = main;

main();
