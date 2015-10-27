from quark_runtime import *


def test_assembling():
    innerObject = _JSONObject();
    (innerObject).setObjectItem("astring", (_JSONObject()).setString("string value"));
    (innerObject).setObjectItem("aint", (_JSONObject()).setNumber(9));
    (innerObject).setObjectItem("atrue", (_JSONObject()).setBool(1));
    (innerObject).setObjectItem("afalse", (_JSONObject()).setBool(0));
    (innerObject).setObjectItem("anull", (_JSONObject()).setNull());
    innerList = _JSONObject();
    (innerList).setListItem(0, (_JSONObject()).setString("after this string expect 42 and null"));
    (innerList).setListItem(1, (_JSONObject()).setNumber(42));
    (innerList).setListItem(2, (_JSONObject()).setNull());
    outer = _JSONObject();
    (outer).setObjectItem("sub-object", innerObject);
    (outer).setObjectItem("sub-list", innerList);
    (outer).setObjectItem("sub-string", (_JSONObject()).setString("a string"));
    _println((outer).toString());


def main():
    test_assembling();


if __name__ == "__main__":
    main()
