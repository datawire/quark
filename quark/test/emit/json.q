// xfail:py xfail:java
void test_roundtrip() {
    print(new JSONObject().setObject().toString().parseJSON().toString());
    print(new JSONObject().setList().toString().parseJSON().toString());
    print(new JSONObject().setString("").toString().parseJSON().toString());
    print(new JSONObject().setBool(0).toString().parseJSON().toString());
    print(new JSONObject().setBool(1).toString().parseJSON().toString());
    print(new JSONObject().setNull().toString().parseJSON().toString());
}

void main() {
    test_roundtrip();
}
