// xfail:java
void test_roundtrip() {
    print(new JSONObject().setObject().toString().parseJSON().toString());
    print(new JSONObject().setList().toString().parseJSON().toString());
    print(new JSONObject().setString("").toString().parseJSON().toString());
    print(new JSONObject().setBool(0).toString().parseJSON().toString());
    print(new JSONObject().setBool(1).toString().parseJSON().toString());
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
void main() {
    test_roundtrip();
    test_iterate_list();
}
