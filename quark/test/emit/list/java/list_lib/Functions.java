package list_lib;

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


    public static void test1() {
        java.util.ArrayList<Integer> list = new java.util.ArrayList<Integer>();
        (list).add(1);
        (list).add(2);
        (list).add(3);
        do{System.out.println((list).get(0));System.out.flush();}while(false);
        do{System.out.println((list).get(1));System.out.flush();}while(false);
        do{System.out.println((list).get(2));System.out.flush();}while(false);
    }


    public static void test2() {
        java.util.ArrayList<String> list = new java.util.ArrayList<String>();
        (list).add("one");
        (list).add("two");
        (list).add("three");
        do{System.out.println((list).get(0));System.out.flush();}while(false);
        do{System.out.println((list).get(1));System.out.flush();}while(false);
        do{System.out.println((list).get(2));System.out.flush();}while(false);
    }


    public static void test3() {
        java.util.ArrayList<Integer> list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        do{System.out.println(list);System.out.flush();}while(false);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{1}));
        do{System.out.println(list);System.out.flush();}while(false);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{1, 2, 3}));
        do{System.out.println(list);System.out.flush();}while(false);
    }


    public static void test4() {
        java.util.ArrayList<String> list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        do{System.out.println(list);System.out.flush();}while(false);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"one"}));
        do{System.out.println(list);System.out.flush();}while(false);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"one", "two", "three"}));
        do{System.out.println(list);System.out.flush();}while(false);
    }


    public static void test5() {
        java.util.ArrayList<Box<Integer>> boxes = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (boxes).add(new Box<Integer>());
        ((boxes).get(0)).set(3);
        do{System.out.println(((boxes).get(0)).get());System.out.flush();}while(false);
        boxes = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Box<Integer>()}));
        do{System.out.println(((boxes).get(0)).get());System.out.flush();}while(false);
    }


    public static void test6() {
        java.util.ArrayList<java.util.ArrayList<Integer>> matrix = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new java.util.ArrayList(java.util.Arrays.asList(new Object[]{1, 2, 3})), new java.util.ArrayList(java.util.Arrays.asList(new Object[]{4, 5, 6})), new java.util.ArrayList(java.util.Arrays.asList(new Object[]{7, 8, 9}))}));
        do{System.out.println(matrix);System.out.flush();}while(false);
    }


    public static void main() {
        Functions.test1();
        Functions.test2();
        Functions.test3();
        Functions.test4();
        Functions.test5();
        Functions.test6();
    }
}
