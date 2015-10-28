from quark_runtime import *


def test_building():
    _println(((((_JSONObject()).setObjectItem(u"sub-object", (((((_JSONObject()).setObjectItem(u"astring", (_JSONObject()).setString(u"string value"))).setObjectItem(u"aint", (_JSONObject()).setNumber(9))).setObjectItem(u"atrue", (_JSONObject()).setBool(1))).setObjectItem(u"afalse", (_JSONObject()).setBool(0))).setObjectItem(u"anull", (_JSONObject()).setNull()))).setObjectItem(u"sub-list", (((_JSONObject()).setListItem(0, (_JSONObject()).setString(u"after this string expect 42 and null"))).setListItem(1, (_JSONObject()).setNumber(42))).setListItem(2, (_JSONObject()).setNull()))).setObjectItem(u"sub-string", (_JSONObject()).setString(u"a string"))).toString());


def main():
    test_building();


if __name__ == "__main__":
    main()
