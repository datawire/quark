package json_assembling_lib;

public class Functions {
    public static void test_assembling() {
        io.datawire.quark.runtime.JSONObject innerObject = new io.datawire.quark.runtime.JSONObject();
        (innerObject).setObjectItem("astring", (new io.datawire.quark.runtime.JSONObject()).setString("string value"));
        (innerObject).setObjectItem("aint", (new io.datawire.quark.runtime.JSONObject()).setNumber(9));
        (innerObject).setObjectItem("atrue", (new io.datawire.quark.runtime.JSONObject()).setBool(true));
        (innerObject).setObjectItem("afalse", (new io.datawire.quark.runtime.JSONObject()).setBool(false));
        (innerObject).setObjectItem("anull", (new io.datawire.quark.runtime.JSONObject()).setNull());
        io.datawire.quark.runtime.JSONObject innerList = new io.datawire.quark.runtime.JSONObject();
        (innerList).setListItem(0, (new io.datawire.quark.runtime.JSONObject()).setString("after this string expect 42 and null"));
        (innerList).setListItem(1, (new io.datawire.quark.runtime.JSONObject()).setNumber(42));
        (innerList).setListItem(2, (new io.datawire.quark.runtime.JSONObject()).setNull());
        io.datawire.quark.runtime.JSONObject outer = new io.datawire.quark.runtime.JSONObject();
        (outer).setObjectItem("sub-object", innerObject);
        (outer).setObjectItem("sub-list", innerList);
        (outer).setObjectItem("sub-string", (new io.datawire.quark.runtime.JSONObject()).setString("a string"));
        do{System.out.println((outer).toString());System.out.flush();}while(false);
    }


    public static void main() {
        Functions.test_assembling();
    }
}
