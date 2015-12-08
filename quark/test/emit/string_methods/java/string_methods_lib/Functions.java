package string_methods_lib;

public class Functions {


/* BEGIN_BUILTIN */


    public static io.datawire.quark.runtime.JSONObject toJSON(Object obj) {
        io.datawire.quark.runtime.JSONObject result = new io.datawire.quark.runtime.JSONObject();
        if ((obj)==(null) || ((obj) != null && (obj).equals(null))) {
            (result).setNull();
            return result;
        }
        Class cls = new Class(io.datawire.quark.runtime.Builtins._getClass(obj));
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
        java.util.ArrayList<Field> fields = (cls).getFields();
        while ((idx) < ((fields).size())) {
            (result).setObjectItem((((fields).get(idx)).name), (Functions.toJSON(((io.datawire.quark.runtime.QObject) (obj))._getField(((fields).get(idx)).name))));
            idx = (idx) + (1);
        }
        return result;
    }

/* END_BUILTIN */

/* BEGIN_BUILTIN */


    public static Object fromJSON(Class cls, io.datawire.quark.runtime.JSONObject json) {
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
        java.util.ArrayList<Field> fields = (cls).getFields();
        Object result = (cls).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        while ((idx) < ((fields).size())) {
            Field f = (fields).get(idx);
            idx = (idx) + (1);
            if ((((f).type).name)==("String") || ((((f).type).name) != null && (((f).type).name).equals("String"))) {
                String s = ((json).getObjectItem((f).name)).getString();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, s);
                continue;
            }
            if ((((f).type).name)==("float") || ((((f).type).name) != null && (((f).type).name).equals("float"))) {
                Double flt = ((json).getObjectItem((f).name)).getNumber();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, flt);
                continue;
            }
            if ((((f).type).name)==("int") || ((((f).type).name) != null && (((f).type).name).equals("int"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Integer i = ((int) Math.round(((json).getObjectItem((f).name)).getNumber()));
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, i);
                }
                continue;
            }
            if ((((f).type).name)==("bool") || ((((f).type).name) != null && (((f).type).name).equals("bool"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Boolean b = ((json).getObjectItem((f).name)).getBool();
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, b);
                }
                continue;
            }
            ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, Functions.fromJSON((f).type, (json).getObjectItem((f).name)));
        }
        return result;
    }

/* END_BUILTIN */


    public static void main() {
        (new test_size("")).does(0);
        (new test_size("1")).does(1);
        (new test_size("22")).does(2);
        (new test_size("333")).does(3);
        (new test_size("4444")).does(4);
        ((((((((new test_startsWith("abcd")).that("abc")).does(true)).that("bc")).does(false)).that("")).does(true)).that("abcde")).does(false);
        ((((((((new test_endsWith("abcd")).that("bcd")).does(true)).that("bc")).does(false)).that("")).does(true)).that("xabcd")).does(false);
        ((((((((((((((((new test_find("abcd")).that("bcd")).does(1)).that("bc")).does(1)).that("")).does(0)).that("xabcd")).does(-(1))).that("abcd")).does(0)).that("abc")).does(0)).that("a")).does(0)).that("x")).does(-(1));
        ((((((((((((((((new test_substring("abcd")).that(0, 0)).does("")).that(0, 4)).does("abcd")).that(0, 1)).does("a")).that(1, 2)).does("b")).that(2, 4)).does("cd")).that(3, 4)).does("d")).that(1, 1)).does("")).that(2, 2)).does("");
        ((((((((((((((new test_replace("abcd")).that("ab", "AB")).does("ABcd")).that("b", "bb")).does("abbcd")).that("ab", "ab")).does("abcd")).that("", "EE")).does("EEabcd")).that("c", "EE")).does("abEEd")).that("d", "EE")).does("abcEE")).that("x", "EE")).does("abcd");
        ((((((((((((((new test_join("")).that()).does("")).that()).a("a")).does("a")).that()).a("a")).a("b")).does("ab")).that()).a("a")).a("b")).a("c")).does("abc");
        ((((((((((((((new test_join(",")).that()).does("")).that()).a("a")).does("a")).that()).a("a")).a("b")).does("a,b")).that()).a("a")).a("b")).a("c")).does("a,b,c");
        ((((((((((((((((new test_split(",", "|")).that("")).does("")).that("a")).does("a")).that(",")).does("|")).that("a,")).does("a|")).that(",a")).does("|a")).that("a,b")).does("a|b")).that("a,,b")).does("a||b")).that("a,b,c")).does("a|b|c");
        ((((((((((((((((new test_split("foo", "|")).that("")).does("")).that("a")).does("a")).that("foo")).does("|")).that("afoo")).does("a|")).that("fooa")).does("|a")).that("afoob")).does("a|b")).that("afoofoob")).does("a||b")).that("afoobfooc")).does("a|b|c");
    }


    public static Object _construct(String className, java.util.ArrayList<Object> args) {
        if ((className)==("Class") || ((className) != null && (className).equals("Class"))) {
            return new Class((String) ((args).get(0)));
        }
        if ((className)==("Field") || ((className) != null && (className).equals("Field"))) {
            return new Field((Class) ((args).get(0)), (String) ((args).get(1)));
        }
        if ((className)==("List<Object>") || ((className) != null && (className).equals("List<Object>"))) {
            return new java.util.ArrayList<Object>();
        }
        if ((className)==("List<Field>") || ((className) != null && (className).equals("List<Field>"))) {
            return new java.util.ArrayList<Field>();
        }
        if ((className)==("List<Class>") || ((className) != null && (className).equals("List<Class>"))) {
            return new java.util.ArrayList<Class>();
        }
        if ((className)==("List<String>") || ((className) != null && (className).equals("List<String>"))) {
            return new java.util.ArrayList<String>();
        }
        if ((className)==("Map<Object,Object>") || ((className) != null && (className).equals("Map<Object,Object>"))) {
            return new java.util.HashMap<Object,Object>();
        }
        if ((className)==("Map<String,Object>") || ((className) != null && (className).equals("Map<String,Object>"))) {
            return new java.util.HashMap<String,Object>();
        }
        if ((className)==("ResponseHolder") || ((className) != null && (className).equals("ResponseHolder"))) {
            return new ResponseHolder();
        }
        if ((className)==("Client") || ((className) != null && (className).equals("Client"))) {
            return new Client((io.datawire.quark.runtime.Runtime) ((args).get(0)), (String) ((args).get(1)));
        }
        if ((className)==("Server<Object>") || ((className) != null && (className).equals("Server<Object>"))) {
            return new Server<Object>((io.datawire.quark.runtime.Runtime) ((args).get(0)), (args).get(1));
        }
        if ((className)==("string_test") || ((className) != null && (className).equals("string_test"))) {
            return new string_test();
        }
        if ((className)==("test_size") || ((className) != null && (className).equals("test_size"))) {
            return new test_size((String) ((args).get(0)));
        }
        if ((className)==("test_startsWith") || ((className) != null && (className).equals("test_startsWith"))) {
            return new test_startsWith((String) ((args).get(0)));
        }
        if ((className)==("test_endsWith") || ((className) != null && (className).equals("test_endsWith"))) {
            return new test_endsWith((String) ((args).get(0)));
        }
        if ((className)==("test_find") || ((className) != null && (className).equals("test_find"))) {
            return new test_find((String) ((args).get(0)));
        }
        if ((className)==("test_substring") || ((className) != null && (className).equals("test_substring"))) {
            return new test_substring((String) ((args).get(0)));
        }
        if ((className)==("test_replace") || ((className) != null && (className).equals("test_replace"))) {
            return new test_replace((String) ((args).get(0)));
        }
        if ((className)==("test_join") || ((className) != null && (className).equals("test_join"))) {
            return new test_join((String) ((args).get(0)));
        }
        if ((className)==("test_split") || ((className) != null && (className).equals("test_split"))) {
            return new test_split((String) ((args).get(0)), (String) ((args).get(1)));
        }
        return null;
    }


    public static java.util.ArrayList<Field> _fields(String className) {
        if ((className)==("Class") || ((className) != null && (className).equals("Class"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "id"), new Field(new Class("String"), "name"), new Field(new Class("List<Class>"), "parameters")}));
        }
        if ((className)==("Field") || ((className) != null && (className).equals("Field"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Class"), "type"), new Field(new Class("String"), "name")}));
        }
        if ((className)==("List<Object>") || ((className) != null && (className).equals("List<Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("List<Field>") || ((className) != null && (className).equals("List<Field>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("List<Class>") || ((className) != null && (className).equals("List<Class>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("List<String>") || ((className) != null && (className).equals("List<String>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("Map<Object,Object>") || ((className) != null && (className).equals("Map<Object,Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("Map<String,Object>") || ((className) != null && (className).equals("Map<String,Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("ResponseHolder") || ((className) != null && (className).equals("ResponseHolder"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("HTTPResponse"), "response")}));
        }
        if ((className)==("Client") || ((className) != null && (className).equals("Client"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Runtime"), "runtime"), new Field(new Class("String"), "url")}));
        }
        if ((className)==("Server<Object>") || ((className) != null && (className).equals("Server<Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Runtime"), "runtime"), new Field(new Class("Object"), "impl")}));
        }
        if ((className)==("string_test") || ((className) != null && (className).equals("string_test"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("test_size") || ((className) != null && (className).equals("test_size"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "what")}));
        }
        if ((className)==("test_startsWith") || ((className) != null && (className).equals("test_startsWith"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "what"), new Field(new Class("String"), "_that")}));
        }
        if ((className)==("test_endsWith") || ((className) != null && (className).equals("test_endsWith"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "what"), new Field(new Class("String"), "_that")}));
        }
        if ((className)==("test_find") || ((className) != null && (className).equals("test_find"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "what"), new Field(new Class("String"), "_that")}));
        }
        if ((className)==("test_substring") || ((className) != null && (className).equals("test_substring"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "what"), new Field(new Class("int"), "start"), new Field(new Class("int"), "end")}));
        }
        if ((className)==("test_replace") || ((className) != null && (className).equals("test_replace"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "what"), new Field(new Class("String"), "start"), new Field(new Class("String"), "end")}));
        }
        if ((className)==("test_join") || ((className) != null && (className).equals("test_join"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "what"), new Field(new Class("List<String>"), "parts"), new Field(new Class("String"), "strparts"), new Field(new Class("String"), "sep")}));
        }
        if ((className)==("test_split") || ((className) != null && (className).equals("test_split"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "what"), new Field(new Class("String"), "sep"), new Field(new Class("String"), "altsep")}));
        }
        return (java.util.ArrayList<Field>) (null);
    }


    public static void _class(Class cls) {
        if (((cls).id)==("Class") || (((cls).id) != null && ((cls).id).equals("Class"))) {
            (cls).name = "Class";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("Field") || (((cls).id) != null && ((cls).id).equals("Field"))) {
            (cls).name = "Field";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("List<Object>") || (((cls).id) != null && ((cls).id).equals("List<Object>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Object")}));
            return;
        }
        if (((cls).id)==("List<Field>") || (((cls).id) != null && ((cls).id).equals("List<Field>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Field")}));
            return;
        }
        if (((cls).id)==("List<Class>") || (((cls).id) != null && ((cls).id).equals("List<Class>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Class")}));
            return;
        }
        if (((cls).id)==("List<String>") || (((cls).id) != null && ((cls).id).equals("List<String>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("String")}));
            return;
        }
        if (((cls).id)==("Map<Object,Object>") || (((cls).id) != null && ((cls).id).equals("Map<Object,Object>"))) {
            (cls).name = "Map";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Object"), new Class("Object")}));
            return;
        }
        if (((cls).id)==("Map<String,Object>") || (((cls).id) != null && ((cls).id).equals("Map<String,Object>"))) {
            (cls).name = "Map";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("String"), new Class("Object")}));
            return;
        }
        if (((cls).id)==("ResponseHolder") || (((cls).id) != null && ((cls).id).equals("ResponseHolder"))) {
            (cls).name = "ResponseHolder";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("Client") || (((cls).id) != null && ((cls).id).equals("Client"))) {
            (cls).name = "Client";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("Server<Object>") || (((cls).id) != null && ((cls).id).equals("Server<Object>"))) {
            (cls).name = "Server";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Object")}));
            return;
        }
        if (((cls).id)==("string_test") || (((cls).id) != null && ((cls).id).equals("string_test"))) {
            (cls).name = "string_test";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("test_size") || (((cls).id) != null && ((cls).id).equals("test_size"))) {
            (cls).name = "test_size";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("test_startsWith") || (((cls).id) != null && ((cls).id).equals("test_startsWith"))) {
            (cls).name = "test_startsWith";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("test_endsWith") || (((cls).id) != null && ((cls).id).equals("test_endsWith"))) {
            (cls).name = "test_endsWith";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("test_find") || (((cls).id) != null && ((cls).id).equals("test_find"))) {
            (cls).name = "test_find";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("test_substring") || (((cls).id) != null && ((cls).id).equals("test_substring"))) {
            (cls).name = "test_substring";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("test_replace") || (((cls).id) != null && ((cls).id).equals("test_replace"))) {
            (cls).name = "test_replace";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("test_join") || (((cls).id) != null && ((cls).id).equals("test_join"))) {
            (cls).name = "test_join";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("test_split") || (((cls).id) != null && ((cls).id).equals("test_split"))) {
            (cls).name = "test_split";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        (cls).name = (cls).id;
    }
}
