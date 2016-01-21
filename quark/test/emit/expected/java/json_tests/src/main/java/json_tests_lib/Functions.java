package json_tests_lib;

public class Functions {
    public static void test_roundtrip() {
        do{System.out.println((io.datawire.quark.runtime.JSONObject.parse(((new io.datawire.quark.runtime.JSONObject()).setObject()).toString())).toString());System.out.flush();}while(false);
        do{System.out.println((io.datawire.quark.runtime.JSONObject.parse(((new io.datawire.quark.runtime.JSONObject()).setList()).toString())).toString());System.out.flush();}while(false);
        do{System.out.println((io.datawire.quark.runtime.JSONObject.parse(((new io.datawire.quark.runtime.JSONObject()).setString("")).toString())).toString());System.out.flush();}while(false);
        do{System.out.println((io.datawire.quark.runtime.JSONObject.parse(((new io.datawire.quark.runtime.JSONObject()).setBool(false)).toString())).toString());System.out.flush();}while(false);
        do{System.out.println((io.datawire.quark.runtime.JSONObject.parse(((new io.datawire.quark.runtime.JSONObject()).setBool(true)).toString())).toString());System.out.flush();}while(false);
        do{System.out.println((io.datawire.quark.runtime.JSONObject.parse(((new io.datawire.quark.runtime.JSONObject()).setNull()).toString())).toString());System.out.flush();}while(false);
    }


    public static void test_iterate_list() {
        io.datawire.quark.runtime.JSONObject l = io.datawire.quark.runtime.JSONObject.parse("[1.2,2.3,3.4,4.5,5.6,6.7,7.8]");
        Integer i = 0;
        io.datawire.quark.runtime.JSONObject item = (l).getListItem(i);
        while (!((item)==((l).undefined()) || ((item) != null && (item).equals((l).undefined())))) {
            do{System.out.println(((("l[") + (Integer.toString(i))) + ("] = ")) + (Double.toString((item).getNumber())));System.out.flush();}while(false);
            i = (i) + (1);
            item = (l).getListItem(i);
            if ((i) > (10)) {
                do{System.out.println("Error!");System.out.flush();}while(false);
                return;
            }
        }
    }


    public static void test_iterate_list_directory() {
        String message = ((new io.datawire.quark.runtime.JSONObject()).setObjectItem("endpoints", (((new io.datawire.quark.runtime.JSONObject()).setListItem(0, (new io.datawire.quark.runtime.JSONObject()).setString("endpoint0"))).setListItem(1, (new io.datawire.quark.runtime.JSONObject()).setString("endpoint1"))).setListItem(2, (new io.datawire.quark.runtime.JSONObject()).setString("endpoint2")))).toString();
        do{System.out.println(message);System.out.flush();}while(false);
        io.datawire.quark.runtime.JSONObject jobj = io.datawire.quark.runtime.JSONObject.parse(message);
        io.datawire.quark.runtime.JSONObject endpoints = (jobj).getObjectItem("endpoints");
        Integer i = 0;
        io.datawire.quark.runtime.JSONObject endpoint = (endpoints).getListItem(i);
        while (!((endpoint)==((endpoints).undefined()) || ((endpoint) != null && (endpoint).equals((endpoints).undefined())))) {
            String ep = (endpoint).getString();
            do{System.out.println(ep);System.out.flush();}while(false);
            i = (i) + (1);
            endpoint = (endpoints).getListItem(i);
        }
    }


    public static void main() {
        Functions.test_roundtrip();
        Functions.test_iterate_list();
        Functions.test_iterate_list_directory();
    }
}
