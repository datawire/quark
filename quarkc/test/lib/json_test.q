import quark.test;

void main(List<String> args) {
    test.run(args);
}

class ToJsonTest {

    void testMapStringInt() {
        Map<String, int> theMap = new Map<String, int>();
        theMap["one"] = 1;
        JSONObject json = theMap.toJSON();
        String actual = json.toString();
        checkEqual("{\"one\":1}", actual);
    }
}

class FromJsonTest {

    void testMapStringInt() {
        Map<String, int> theMap = new Map<String, int>();
        JSONObject json = "{\"one\":11}".parseJSON();
        fromJSON(null, theMap, json);
        List<String> k = theMap.keys();
        checkEqual(1, k.size());
        checkEqual("one", k[0]);
        checkEqual(11, theMap["one"]);
    }
}
