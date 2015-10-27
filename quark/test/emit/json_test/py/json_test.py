from quark_runtime import *


def test_roundtrip():
    _println((_JSONObject.parse(((_JSONObject()).setObject()).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setList()).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setString("")).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setBool(0)).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setBool(1)).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setNull()).toString())).toString());


def main():
    test_roundtrip();


if __name__ == "__main__":
    main()
