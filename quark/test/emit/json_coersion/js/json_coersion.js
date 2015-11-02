var _qrt = require("quark_runtime.js");

function main() {
    var json = new _qrt.JSONObject();
    (json).setObjectItem(("string"), ((new _qrt.JSONObject()).setString("this is a string")));
    (json).setObjectItem(("number"), ((new _qrt.JSONObject()).setNumber(3.14159)));
    var encoded = (json).toString();
    _qrt.print(encoded);
    var dec = _qrt.json_from_string(encoded);
    var string = ((dec).getObjectItem("string")).getString();
    var number = ((dec).getObjectItem("number")).getNumber();
    _qrt.print(string);
    _qrt.print(number);
}
exports.main = main;

main();
