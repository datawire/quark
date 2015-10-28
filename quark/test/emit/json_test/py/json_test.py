from quark_runtime import *


def test_roundtrip():
    _println((_JSONObject.parse(((_JSONObject()).setObject()).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setList()).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setString("")).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setBool(0)).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setBool(1)).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setNull()).toString())).toString());


def test_iterate_list():
    l = _JSONObject.parse("[1,2,3,4,5,6,7]");
    i = 0;
    item = (l).getListItem(i);
    while ((item) != ((l).undefined())) :
        _println(((("l[") + (str(i))) + ("] = ")) + (str((item).getNumber())));
        i = (i) + (1)
        item = (l).getListItem(i)
        if ((i) > (10)):
            _println("Error!");
            return

    


def test_iterate_list_directory():
    message = ((_JSONObject()).setObjectItem("endpoints", (((_JSONObject()).setListItem(0, (_JSONObject()).setString("endpoint0"))).setListItem(1, (_JSONObject()).setString("endpoint1"))).setListItem(2, (_JSONObject()).setString("endpoint2")))).toString();
    _println(message);
    jobj = _JSONObject.parse(message);
    endpoints = (jobj).getObjectItem("endpoints");
    i = 0;
    endpoint = (endpoints).getListItem(i);
    while ((endpoint) != ((endpoints).undefined())) :
        ep = (endpoint).getString();
        _println(ep);
        i = (i) + (1)
        endpoint = (endpoints).getListItem(i)



def main():
    test_roundtrip();
    test_iterate_list();
    test_iterate_list_directory();


if __name__ == "__main__":
    main()
