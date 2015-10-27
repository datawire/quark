from quark_runtime import *


def test_building():
    _println(((((_JSONObject()).setObjectItem("sub-object", (((((_JSONObject()).setObjectItem("astring", (_JSONObject()).setString("string value"))).setObjectItem("aint", (_JSONObject()).setNumber(9))).setObjectItem("atrue", (_JSONObject()).setBool(1))).setObjectItem("afalse", (_JSONObject()).setBool(0))).setObjectItem("anull", (_JSONObject()).setNull()))).setObjectItem("sub-list", (((_JSONObject()).setListItem(0, (_JSONObject()).setString("after this string expect 42 and null"))).setListItem(1, (_JSONObject()).setNumber(42))).setListItem(2, (_JSONObject()).setNull()))).setObjectItem("sub-string", (_JSONObject()).setString("a string"))).toString());


def main():
    test_building();


if __name__ == "__main__":
    main()
