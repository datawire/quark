package box_lib;

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
        Box<Integer> ibox = new Box<Integer>();
        (ibox).set(3);
        Integer three = (ibox).get();
        do{System.out.println(three);System.out.flush();}while(false);
        (ibox).contents = 4;
        do{System.out.println((ibox).contents);System.out.flush();}while(false);
    }


    public static void test2() {
        Box<String> sbox = new Box<String>();
        (sbox).set("hello");
        String hello = (sbox).get();
        do{System.out.println(hello);System.out.flush();}while(false);
        (sbox).contents = "world";
        do{System.out.println((sbox).contents);System.out.flush();}while(false);
    }


    public static void test3() {
        Crate<Integer> icrate = new Crate<Integer>();
        (icrate).set(3);
        do{System.out.println((icrate).get());System.out.flush();}while(false);
        (icrate).set(4);
        do{System.out.println(((icrate).box).contents);System.out.flush();}while(false);
    }


    public static void test4() {
        Sack s = new Sack();
        do{System.out.println(((s).ints).get());System.out.flush();}while(false);
        do{System.out.println(((s).ints).contents);System.out.flush();}while(false);
        ((s).ints).set(3);
        do{System.out.println(((s).ints).get());System.out.flush();}while(false);
        do{System.out.println(((s).ints).contents);System.out.flush();}while(false);
        ((s).ints).contents = 4;
        do{System.out.println(((s).ints).get());System.out.flush();}while(false);
        do{System.out.println(((s).ints).contents);System.out.flush();}while(false);
    }


    public static void test5() {
        Crate<String> scrate = new Crate<String>();
        do{System.out.println((scrate).get());System.out.flush();}while(false);
        do{System.out.println(((scrate).box).contents);System.out.flush();}while(false);
        (scrate).set("hello");
        do{System.out.println((scrate).get());System.out.flush();}while(false);
        do{System.out.println(((scrate).box).contents);System.out.flush();}while(false);
        ((scrate).ibox).contents = 3;
        do{System.out.println(((scrate).ibox).contents);System.out.flush();}while(false);
    }


    public static void test6() {
        Box<Box<Integer>> box = new Box<Box<Integer>>();
        (box).set(new Box<Integer>());
        ((box).get()).set(3);
        do{System.out.println(((box).get()).get());System.out.flush();}while(false);
        do{System.out.println(((box).contents).contents);System.out.flush();}while(false);
    }


    public static void main() {
        do{System.out.println("test1:\n--");System.out.flush();}while(false);
        Functions.test1();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test2:\n--");System.out.flush();}while(false);
        Functions.test2();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test3:\n--");System.out.flush();}while(false);
        Functions.test3();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test4:\n--");System.out.flush();}while(false);
        Functions.test4();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test5:\n--");System.out.flush();}while(false);
        Functions.test5();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test6:\n--");System.out.flush();}while(false);
        Functions.test6();
    }
}
