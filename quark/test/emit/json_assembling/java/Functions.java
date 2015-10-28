public class Functions {
    public static void test_assembling() {
        io.datawire.quark_runtime.JSONObject innerObject = new io.datawire.quark_runtime.JSONObject();
        (innerObject).setObjectItem("astring", (new io.datawire.quark_runtime.JSONObject()).setString("string value"));
        (innerObject).setObjectItem("aint", (new io.datawire.quark_runtime.JSONObject()).setNumber(9));
        (innerObject).setObjectItem("atrue", (new io.datawire.quark_runtime.JSONObject()).setBool(1));
        (innerObject).setObjectItem("afalse", (new io.datawire.quark_runtime.JSONObject()).setBool(0));
        (innerObject).setObjectItem("anull", (new io.datawire.quark_runtime.JSONObject()).setNull());
        io.datawire.quark_runtime.JSONObject innerList = new io.datawire.quark_runtime.JSONObject();
        (innerList).setListItem(0, (new io.datawire.quark_runtime.JSONObject()).setString("after this string expect 42 and null"));
        (innerList).setListItem(1, (new io.datawire.quark_runtime.JSONObject()).setNumber(42));
        (innerList).setListItem(2, (new io.datawire.quark_runtime.JSONObject()).setNull());
        io.datawire.quark_runtime.JSONObject outer = new io.datawire.quark_runtime.JSONObject();
        (outer).setObjectItem("sub-object", innerObject);
        (outer).setObjectItem("sub-list", innerList);
        (outer).setObjectItem("sub-string", (new io.datawire.quark_runtime.JSONObject()).setString("a string"));
        System.out.println((outer).toString());
    }
    public static void main() {
        Functions.test_assembling();
    }
    public static void main(String[] args) {
        main();
    }
}