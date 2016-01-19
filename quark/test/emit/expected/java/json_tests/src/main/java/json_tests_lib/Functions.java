package json_tests_lib;

public class Functions {/* BEGIN_BUILTIN */


    public static io.datawire.quark.runtime.JSONObject toJSON(Object obj) {
        io.datawire.quark.runtime.JSONObject result = new io.datawire.quark.runtime.JSONObject();
        if ((obj)==(null) || ((obj) != null && (obj).equals(null))) {
            (result).setNull();
            return result;
        }
        reflect.Class cls = reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(obj));
        Integer idx = 0;
        if (((cls).name)==("String") || (((cls).name) != null && ((cls).name).equals("String"))) {
            (result).setString((String) (obj));
            return result;
        }
        if (((((((cls).name)==("byte") || (((cls).name) != null && ((cls).name).equals("byte"))) || (((cls).name)==("short") || (((cls).name) != null && ((cls).name).equals("short")))) || (((cls).name)==("int") || (((cls).name) != null && ((cls).name).equals("int")))) || (((cls).name)==("long") || (((cls).name) != null && ((cls).name).equals("long")))) || (((cls).name)==("float") || (((cls).name) != null && ((cls).name).equals("float")))) {
            (result).setNumber(obj);
            return result;
        }
        if (((cls).name)==("List") || (((cls).name) != null && ((cls).name).equals("List"))) {
            (result).setList();
            java.util.ArrayList<Object> list = (java.util.ArrayList<Object>) (obj);
            while ((idx) < ((list).size())) {
                (result).setListItem(idx, Functions.toJSON((list).get(idx)));
                idx = (idx) + (1);
            }
            return result;
        }
        if (((cls).name)==("Map") || (((cls).name) != null && ((cls).name).equals("Map"))) {
            (result).setObject();
            java.util.HashMap<String,Object> map = (java.util.HashMap<String,Object>) (obj);
            return result;
        }
        (result).setObjectItem(("$class"), ((new io.datawire.quark.runtime.JSONObject()).setString((cls).id)));
        java.util.ArrayList<reflect.Field> fields = (cls).getFields();
        while ((idx) < ((fields).size())) {
            (result).setObjectItem((((fields).get(idx)).name), (Functions.toJSON(((io.datawire.quark.runtime.QObject) (obj))._getField(((fields).get(idx)).name))));
            idx = (idx) + (1);
        }
        return result;
    }

/* END_BUILTIN */

/* BEGIN_BUILTIN */


    public static Object fromJSON(reflect.Class cls, io.datawire.quark.runtime.JSONObject json) {
        if (((json)==(null) || ((json) != null && (json).equals(null))) || ((json).isNull())) {
            return null;
        }
        Integer idx = 0;
        if (((cls).name)==("List") || (((cls).name) != null && ((cls).name).equals("List"))) {
            java.util.ArrayList<Object> list = (java.util.ArrayList<Object>) ((cls).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}))));
            while ((idx) < ((json).size())) {
                (list).add(Functions.fromJSON(((cls).parameters).get(0), (json).getListItem(idx)));
                idx = (idx) + (1);
            }
            return list;
        }
        java.util.ArrayList<reflect.Field> fields = (cls).getFields();
        Object result = (cls).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        while ((idx) < ((fields).size())) {
            reflect.Field f = (fields).get(idx);
            idx = (idx) + (1);
            if ((((f).getType()).name)==("String") || ((((f).getType()).name) != null && (((f).getType()).name).equals("String"))) {
                String s = ((json).getObjectItem((f).name)).getString();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, s);
                continue;
            }
            if ((((f).getType()).name)==("float") || ((((f).getType()).name) != null && (((f).getType()).name).equals("float"))) {
                Double flt = ((json).getObjectItem((f).name)).getNumber();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, flt);
                continue;
            }
            if ((((f).getType()).name)==("int") || ((((f).getType()).name) != null && (((f).getType()).name).equals("int"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Integer i = ((int) Math.round(((json).getObjectItem((f).name)).getNumber()));
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, i);
                }
                continue;
            }
            if ((((f).getType()).name)==("bool") || ((((f).getType()).name) != null && (((f).getType()).name).equals("bool"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Boolean b = ((json).getObjectItem((f).name)).getBool();
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, b);
                }
                continue;
            }
            ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, Functions.fromJSON((f).getType(), (json).getObjectItem((f).name)));
        }
        return result;
    }

/* END_BUILTIN */


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
