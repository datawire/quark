quark 0.6.100;
void main(List<String> args) {
    JSONObject json = new JSONObject();
    json["string"] = "this is a string";
    json["number"] = 3.14159;
    json["boolean"] = true;
    String encoded = json.toString();
    print(encoded);
    JSONObject dec = encoded.parseJSON();
    String string = dec["string"];
    float number = dec["number"];
    bool boolean_ = dec["boolean"];
    print(string);
    print(number);
    print(boolean_.toString());
}
