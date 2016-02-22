
void test_roundtrip() {
    print(new JSONObject().setObject().toString().parseJSON().toString());
    print(new JSONObject().setList().toString().parseJSON().toString());
    print(new JSONObject().setString("").toString().parseJSON().toString());
    print(new JSONObject().setBool(false).toString().parseJSON().toString());
    print(new JSONObject().setBool(true).toString().parseJSON().toString());
    print(new JSONObject().setNull().toString().parseJSON().toString());
}

void test_iterate_list() {
    JSONObject l = "[1.2,2.3,3.4,4.5,5.6,6.7,7.8]".parseJSON();
    int i = 0;
    JSONObject item = l.getListItem(i);
    while (item != l.undefined()) {
        print("l[" + i.toString() + "] = " + item.getNumber().toString());
        i = i + 1;
        item = l.getListItem(i);
        if ( i > 10 ) {
            print("Error!");
            return;
        }
    }
}

void test_iterate_list_directory() {
    String message = new JSONObject()
        .setObjectItem("endpoints",
                       new JSONObject()
                       .setListItem(0, "endpoint0".toJSON())
                       .setListItem(1, "endpoint1".toJSON())
                       .setListItem(2, "endpoint2".toJSON())
                       )
        .toString();
    print(message);
    JSONObject jobj = message.parseJSON();
    JSONObject endpoints = jobj["endpoints"];
    int i = 0;
    JSONObject endpoint = endpoints.getListItem(i);
    while (endpoint != endpoints.undefined()) {
        String ep = endpoint.getString();
        print(ep);
        i = i + 1;
        endpoint = endpoints.getListItem(i);
    }
}

void iterables() {
    JSONObject jobj = new JSONObject()
        .setObjectItem("sub-object", new JSONObject()
                       .setObjectItem("astring", "string value".toJSON())
                       .setObjectItem("aint", 9.toJSON())
                       .setObjectItem("atrue", new JSONObject().setBool(true))
                       .setObjectItem("afalse", new JSONObject().setBool(false))
                       .setObjectItem("anull", new JSONObject().setNull()))
        .setObjectItem("sub-list", new JSONObject()
                       .setListItem(0, "after this string expect 42 and null".toJSON())
                       .setListItem(1, 42.toJSON())
                       .setListItem(2, new JSONObject().setNull()))
        .setObjectItem("sub-string", new JSONObject().setString("a string"));
    List<String> keys = jobj.keys();
    keys.sort();
    print(keys);
    keys = jobj["sub-object"].keys();
    keys.sort();
    print(keys);
}

void main() {
    test_roundtrip();
    test_iterate_list();
    test_iterate_list_directory();
    iterables();
}
