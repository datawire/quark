var _qrt = require("quark/quark_runtime.js");


function test_assembling() {
    var innerObject = new _qrt.JSONObject();
    (innerObject).setObjectItem("astring", (new _qrt.JSONObject()).setString("string value"));
    (innerObject).setObjectItem("aint", (new _qrt.JSONObject()).setNumber(9));
    (innerObject).setObjectItem("atrue", (new _qrt.JSONObject()).setBool(true));
    (innerObject).setObjectItem("afalse", (new _qrt.JSONObject()).setBool(false));
    (innerObject).setObjectItem("anull", (new _qrt.JSONObject()).setNull());
    var innerList = new _qrt.JSONObject();
    (innerList).setListItem(0, (new _qrt.JSONObject()).setString("after this string expect 42 and null"));
    (innerList).setListItem(1, (new _qrt.JSONObject()).setNumber(42));
    (innerList).setListItem(2, (new _qrt.JSONObject()).setNull());
    var outer = new _qrt.JSONObject();
    (outer).setObjectItem("sub-object", innerObject);
    (outer).setObjectItem("sub-list", innerList);
    (outer).setObjectItem("sub-string", (new _qrt.JSONObject()).setString("a string"));
    _qrt.print((outer).toString());
}
exports.test_assembling = test_assembling;

function main() {
    test_assembling();
}
exports.main = main;
