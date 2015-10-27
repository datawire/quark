void test_roundtrip() {
    print(new JSONObject().setObject().toString().parseJSON().toString());
    print(new JSONObject().setList().toString().parseJSON().toString());
    print(new JSONObject().setString("").toString().parseJSON().toString());
    print(new JSONObject().setBool(0).toString().parseJSON().toString());
    print(new JSONObject().setBool(1).toString().parseJSON().toString());
    print(new JSONObject().setNull().toString().parseJSON().toString());
}

void test_assembling() {
    JSONObject innerObject = new JSONObject();

    innerObject.setObjectItem("astring", "string value".toJSON());
    innerObject.setObjectItem("aint", 9.toJSON());
    innerObject.setObjectItem("atrue", new JSONObject().setBool(1));
    innerObject.setObjectItem("afalse", new JSONObject().setBool(0));
    innerObject.setObjectItem("anull", new JSONObject().setNull());

    JSONObject innerList = new JSONObject();
    innerList.setListItem(0, "after this string expect 42 and null".toJSON());
    innerList.setListItem(1, 42.toJSON());
    innerList.setListItem(2, new JSONObject().setNull());

    JSONObject outer = new JSONObject();
    outer.setObjectItem("sub-object", innerObject);
    outer.setObjectItem("sub-list", innerList);
    outer.setObjectItem("sub-string", new JSONObject().setString("a string"));

    print(outer.toString());
}

void test_building() {
    print(new JSONObject()
          .setObjectItem("sub-object", new JSONObject()
                         .setObjectItem("astring", "string value".toJSON())
                         .setObjectItem("aint", 9.toJSON())
                         .setObjectItem("atrue", new JSONObject().setBool(1))
                         .setObjectItem("afalse", new JSONObject().setBool(0))
                         .setObjectItem("anull", new JSONObject().setNull()))
          .setObjectItem("sub-list", new JSONObject()
                         .setListItem(0, "after this string expect 42 and null".toJSON())
                         .setListItem(1, 42.toJSON())
                         .setListItem(2, new JSONObject().setNull()))
          .setObjectItem("sub-string", new JSONObject().setString("a string"))
          .toString());
}

void main() {
    test_roundtrip();
    test_assembling();
    test_building();
}
