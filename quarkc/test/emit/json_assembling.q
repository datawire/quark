quark *;
void test_assembling() {
    JSONObject innerObject = new JSONObject();

    innerObject.setObjectItem("astring", "string value".toJSON());
    innerObject.setObjectItem("aint", 9.toJSON());
    innerObject.setObjectItem("atrue", new JSONObject().setBool(true));
    innerObject.setObjectItem("afalse", new JSONObject().setBool(false));
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

void main(List<String> args) {
    test_assembling();
}
