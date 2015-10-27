// xfail
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
    test_building();
}
