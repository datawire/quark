from quark_runtime import *


def test_roundtrip():
    _println((_JSONObject.parse(((_JSONObject()).setObject()).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setList()).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setString(u"")).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setBool(False)).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setBool(True)).toString())).toString());
    _println((_JSONObject.parse(((_JSONObject()).setNull()).toString())).toString());


def test_iterate_list():
    l = _JSONObject.parse(u"[1.2,2.3,3.4,4.5,5.6,6.7,7.8]");
    i = 0;
    item = (l).getListItem(i);
    while ((item) != ((l).undefined())):
        _println((((u"l[") + (str(i))) + (u"] = ")) + (repr((item).getNumber())));
        i = (i) + (1)
        item = (l).getListItem(i)
        if ((i) > (10)):
            _println(u"Error!");
            return




def test_iterate_list_directory():
    message = ((_JSONObject()).setObjectItem(u"endpoints", (((_JSONObject()).setListItem(0, (_JSONObject()).setString(u"endpoint0"))).setListItem(1, (_JSONObject()).setString(u"endpoint1"))).setListItem(2, (_JSONObject()).setString(u"endpoint2")))).toString();
    _println(message);
    jobj = _JSONObject.parse(message);
    endpoints = (jobj).getObjectItem(u"endpoints");
    i = 0;
    endpoint = (endpoints).getListItem(i);
    while ((endpoint) != ((endpoints).undefined())):
        ep = (endpoint).getString();
        _println(ep);
        i = (i) + (1)
        endpoint = (endpoints).getListItem(i)



def iterables():
    jobj = (((_JSONObject()).setObjectItem(u"sub-object", (((((_JSONObject()).setObjectItem(u"astring", (_JSONObject()).setString(u"string value"))).setObjectItem(u"aint", (_JSONObject()).setNumber(9))).setObjectItem(u"atrue", (_JSONObject()).setBool(True))).setObjectItem(u"afalse", (_JSONObject()).setBool(False))).setObjectItem(u"anull", (_JSONObject()).setNull()))).setObjectItem(u"sub-list", (((_JSONObject()).setListItem(0, (_JSONObject()).setString(u"after this string expect 42 and null"))).setListItem(1, (_JSONObject()).setNumber(42))).setListItem(2, (_JSONObject()).setNull()))).setObjectItem(u"sub-string", (_JSONObject()).setString(u"a string"));
    keys = (jobj).keys();
    (keys).sort();
    _println(keys);
    keys = ((jobj).getObjectItem(u"sub-object")).keys()
    (keys).sort();
    _println(keys);


def main():
    test_roundtrip();
    test_iterate_list();
    test_iterate_list_directory();
    iterables();
