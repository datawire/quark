from quark_runtime import *


def main():
    json = _JSONObject();
    (json).setObjectItem((u"string"), ((_JSONObject()).setString(u"this is a string")));
    (json).setObjectItem((u"number"), ((_JSONObject()).setNumber(3.14159)));
    encoded = (json).toString();
    _println(encoded);
    dec = _JSONObject.parse(encoded);
    string = ((dec).getObjectItem(u"string")).getString();
    number = ((dec).getObjectItem(u"number")).getNumber();
    _println(string);
    _println(number);


if __name__ == "__main__":
    main()
