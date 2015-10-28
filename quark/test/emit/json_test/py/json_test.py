from quark_runtime import *


def test_roundtrip():
    _println((_JSONObject.parse(((_JSONObject()).setObject()).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setList()).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setString(u"")).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setBool(0)).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setBool(1)).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setNull()).toString())).toString());


def test_iterate_list():
    l = _JSONObject.parse(u"[1,2,3,4,5,6,7]");
    i = 0;
    item = (l).getListItem(i);
    while ((item) != ((l).undefined())) :
        _println((((u"l[") + (str(i))) + (u"] = ")) + (str((item).getNumber())));
        i = (i) + (1)
        item = (l).getListItem(i)
        if ((i) > (10)):
            _println(u"Error!");
            return

    


def main():
    test_roundtrip();
    test_iterate_list();


if __name__ == "__main__":
    main()
