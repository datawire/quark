import quark.test;

void main(List<String> args) {
    test.run(args);
}

class MapTest {

    Map<String, int> theMap;

    void setup() {
        theMap = new Map<String, int>();
        theMap["one"] = 1;
        theMap["two"] = 2;
    }

    void teardown() {
        // Nothing interesting to do here
        theMap = null;
    }

    void test_constructor() {
        Map<Object, Object> dict = new Map<Object, Object>();
        checkEqual(0, dict.keys().size());
    }

    void test_contains() {
        check(theMap.contains("one"), "expected map contains one");
        check(theMap.contains("two"), "expected map contains two");
        check(!theMap.contains("three"), "expected map doesn't contain three");
    }

    void test_keys() {
        List<String> expected = ["one", "two"];
        List<String> actual = theMap.keys();
        actual.sort();

        checkEqual(expected.size(), actual.size());
        int idx = 0;
        int max = expected.size();
        if (actual.size() < max) {
            max = actual.size();
        }
        while (idx < max) {
            checkEqual(expected[idx], actual[idx]);
            idx = idx + 1;
        }
    }

    void test_size() {
        // Oops, Map doesn't have a .size() method...
        checkEqual(2, theMap.keys().size());
    }

    void test_get() {
        checkEqual(1, theMap["one"]);
        checkEqual(2, theMap["two"]);
        checkEqual(null, theMap["three"]);
    }

    void test_update() {
        Map<String, int> target = new Map<String, int>();
        checkEqual(0, target.keys().size());
        checkEqual(null, target["one"]);
        checkEqual(null, target["two"]);
        checkEqual(null, target["three"]);
        checkEqual(null, target["four"]);

        target.update(theMap);
        checkEqual(2, target.keys().size());
        checkEqual(1, target["one"]);
        checkEqual(2, target["two"]);
        checkEqual(null, target["three"]);
        checkEqual(null, target["four"]);

        Map<String, int> more = new Map<String, int>();
        more["three"] = 3;
        target.update(more);
        checkEqual(3, target.keys().size());
        checkEqual(1, target["one"]);
        checkEqual(2, target["two"]);
        checkEqual(3, target["three"]);
        checkEqual(null, target["four"]);
    }

    void test_urlencode() {
        String actual = theMap.urlencode();
        checkOneOf(["one=1&two=2", "two=2&one=1"], actual);
    }

    void not_test_toJSON() {
        JSONObject json = theMap.toJSON();
        String actual = json.toString();
        checkEqual("{\"one\":1,\"two\":2}", actual);
    }
}
