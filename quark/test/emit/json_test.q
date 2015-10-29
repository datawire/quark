
void test_roundtrip() {
    print(new JSONObject().setObject().toString().parseJSON().toString());
    print(new JSONObject().setList().toString().parseJSON().toString());
    print(new JSONObject().setString("").toString().parseJSON().toString());
    print(new JSONObject().setBool(false).toString().parseJSON().toString());
    print(new JSONObject().setBool(true).toString().parseJSON().toString());
    print(new JSONObject().setNull().toString().parseJSON().toString());
}

void test_iterate_list() {
    JSONObject l = "[1,2,3,4,5,6,7]".parseJSON();
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

void main() {
    test_roundtrip();
    test_iterate_list();
    test_iterate_list_directory();
}
