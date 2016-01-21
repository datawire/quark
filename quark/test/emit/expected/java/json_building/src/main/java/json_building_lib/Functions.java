package json_building_lib;

public class Functions {
    public static void test_building() {
        do{System.out.println(((((new io.datawire.quark.runtime.JSONObject()).setObjectItem("sub-object", (((((new io.datawire.quark.runtime.JSONObject()).setObjectItem("astring", (new io.datawire.quark.runtime.JSONObject()).setString("string value"))).setObjectItem("aint", (new io.datawire.quark.runtime.JSONObject()).setNumber(9))).setObjectItem("atrue", (new io.datawire.quark.runtime.JSONObject()).setBool(true))).setObjectItem("afalse", (new io.datawire.quark.runtime.JSONObject()).setBool(false))).setObjectItem("anull", (new io.datawire.quark.runtime.JSONObject()).setNull()))).setObjectItem("sub-list", (((new io.datawire.quark.runtime.JSONObject()).setListItem(0, (new io.datawire.quark.runtime.JSONObject()).setString("after this string expect 42 and null"))).setListItem(1, (new io.datawire.quark.runtime.JSONObject()).setNumber(42))).setListItem(2, (new io.datawire.quark.runtime.JSONObject()).setNull()))).setObjectItem("sub-string", (new io.datawire.quark.runtime.JSONObject()).setString("a string"))).toString());System.out.flush();}while(false);
    }


    public static void main() {
        Functions.test_building();
    }
}
