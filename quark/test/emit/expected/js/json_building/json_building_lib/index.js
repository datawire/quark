var _qrt = require("datawire-quark-core");

function test_building() {
    _qrt.print(((((new _qrt.JSONObject()).setObjectItem("sub-object", (((((new _qrt.JSONObject()).setObjectItem("astring", (new _qrt.JSONObject()).setString("string value"))).setObjectItem("aint", (new _qrt.JSONObject()).setNumber(9))).setObjectItem("atrue", (new _qrt.JSONObject()).setBool(true))).setObjectItem("afalse", (new _qrt.JSONObject()).setBool(false))).setObjectItem("anull", (new _qrt.JSONObject()).setNull()))).setObjectItem("sub-list", (((new _qrt.JSONObject()).setListItem(0, (new _qrt.JSONObject()).setString("after this string expect 42 and null"))).setListItem(1, (new _qrt.JSONObject()).setNumber(42))).setListItem(2, (new _qrt.JSONObject()).setNull()))).setObjectItem("sub-string", (new _qrt.JSONObject()).setString("a string"))).toString());
}
exports.test_building = test_building;

function main() {
    test_building();
}
exports.main = main;
