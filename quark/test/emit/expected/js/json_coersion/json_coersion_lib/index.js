var _qrt = require("datawire-quark-core");

function main() {
    var json = new _qrt.JSONObject();
    (json).setObjectItem(("string"), ((new _qrt.JSONObject()).setString("this is a string")));
    (json).setObjectItem(("number"), ((new _qrt.JSONObject()).setNumber(3.14159)));
    (json).setObjectItem(("boolean"), ((new _qrt.JSONObject()).setBool(true)));
    var encoded = (json).toString();
    _qrt.print(encoded);
    var dec = _qrt.json_from_string(encoded);
    var string = ((dec).getObjectItem("string")).getString();
    var number = ((dec).getObjectItem("number")).getNumber();
    var boolean_ = ((dec).getObjectItem("boolean")).getBool();
    _qrt.print(string);
    _qrt.print(number);
    _qrt.print((boolean_).toString());
}
exports.main = main;
