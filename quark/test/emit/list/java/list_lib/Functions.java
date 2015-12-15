package list_lib;

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
        if ((className)==("List<int>") || ((className) != null && (className).equals("List<int>"))) {
            return new java.util.ArrayList<Integer>();
        }
        if ((className)==("List<Box<int>>") || ((className) != null && (className).equals("List<Box<int>>"))) {
            return new java.util.ArrayList<Box<Integer>>();
        }
        if ((className)==("List<List<int>>") || ((className) != null && (className).equals("List<List<int>>"))) {
            return new java.util.ArrayList<java.util.ArrayList<Integer>>();
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
        if ((className)==("Box<int>") || ((className) != null && (className).equals("Box<int>"))) {
            return new Box<Integer>();
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
        if ((className)==("List<int>") || ((className) != null && (className).equals("List<int>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("List<Box<int>>") || ((className) != null && (className).equals("List<Box<int>>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("List<List<int>>") || ((className) != null && (className).equals("List<List<int>>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("Map<Object,Object>") || ((className) != null && (className).equals("Map<Object,Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("Map<String,Object>") || ((className) != null && (className).equals("Map<String,Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("ResponseHolder") || ((className) != null && (className).equals("ResponseHolder"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("HTTPResponse"), "response"), new Field(new Class("String"), "failure")}));
        }
        if ((className)==("Client") || ((className) != null && (className).equals("Client"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Runtime"), "runtime"), new Field(new Class("String"), "url")}));
        }
        if ((className)==("Server<Object>") || ((className) != null && (className).equals("Server<Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Runtime"), "runtime"), new Field(new Class("Object"), "impl")}));
        }
        if ((className)==("Box<int>") || ((className) != null && (className).equals("Box<int>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Object"), "contents")}));
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
        if (((cls).id)==("List<int>") || (((cls).id) != null && ((cls).id).equals("List<int>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("int")}));
            return;
        }
        if (((cls).id)==("List<Box<int>>") || (((cls).id) != null && ((cls).id).equals("List<Box<int>>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Box<int>")}));
            return;
        }
        if (((cls).id)==("List<List<int>>") || (((cls).id) != null && ((cls).id).equals("List<List<int>>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("List<int>")}));
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
        if (((cls).id)==("Service") || (((cls).id) != null && ((cls).id).equals("Service"))) {
            (cls).name = "Service";
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
        if (((cls).id)==("Box<int>") || (((cls).id) != null && ((cls).id).equals("Box<int>"))) {
            (cls).name = "Box";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("int")}));
            return;
        }
        (cls).name = (cls).id;
    }


    public static Object _invoke(String className, Object object, String method, java.util.ArrayList<Object> args) {
        if ((className)==("Class") || ((className) != null && (className).equals("Class"))) {
            if ((method)==("getId") || ((method) != null && (method).equals("getId"))) {
                Class tmp_0 = (Class) (object);
                return (tmp_0).getId();
            }
            if ((method)==("getName") || ((method) != null && (method).equals("getName"))) {
                Class tmp_1 = (Class) (object);
                return (tmp_1).getName();
            }
            if ((method)==("getParameters") || ((method) != null && (method).equals("getParameters"))) {
                Class tmp_2 = (Class) (object);
                return (tmp_2).getParameters();
            }
            if ((method)==("construct") || ((method) != null && (method).equals("construct"))) {
                Class tmp_3 = (Class) (object);
                return (tmp_3).construct((java.util.ArrayList<Object>) ((args).get(0)));
            }
            if ((method)==("getFields") || ((method) != null && (method).equals("getFields"))) {
                Class tmp_4 = (Class) (object);
                return (tmp_4).getFields();
            }
            if ((method)==("getField") || ((method) != null && (method).equals("getField"))) {
                Class tmp_5 = (Class) (object);
                return (tmp_5).getField((String) ((args).get(0)));
            }
            if ((method)==("invoke") || ((method) != null && (method).equals("invoke"))) {
                Class tmp_6 = (Class) (object);
                return (tmp_6).invoke((args).get(0), (String) ((args).get(1)), (java.util.ArrayList<Object>) ((args).get(2)));
            }
        }
        if ((className)==("Field") || ((className) != null && (className).equals("Field"))) {}
        if ((className)==("List<Object>") || ((className) != null && (className).equals("List<Object>"))) {}
        if ((className)==("List<Field>") || ((className) != null && (className).equals("List<Field>"))) {}
        if ((className)==("List<Class>") || ((className) != null && (className).equals("List<Class>"))) {}
        if ((className)==("List<String>") || ((className) != null && (className).equals("List<String>"))) {}
        if ((className)==("List<int>") || ((className) != null && (className).equals("List<int>"))) {}
        if ((className)==("List<Box<int>>") || ((className) != null && (className).equals("List<Box<int>>"))) {}
        if ((className)==("List<List<int>>") || ((className) != null && (className).equals("List<List<int>>"))) {}
        if ((className)==("Map<Object,Object>") || ((className) != null && (className).equals("Map<Object,Object>"))) {}
        if ((className)==("Map<String,Object>") || ((className) != null && (className).equals("Map<String,Object>"))) {}
        if ((className)==("ResponseHolder") || ((className) != null && (className).equals("ResponseHolder"))) {
            if ((method)==("onHTTPResponse") || ((method) != null && (method).equals("onHTTPResponse"))) {
                ResponseHolder tmp_7 = (ResponseHolder) (object);
                (tmp_7).onHTTPResponse((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (io.datawire.quark.runtime.HTTPResponse) ((args).get(1)));
                return null;
            }
            if ((method)==("onHTTPError") || ((method) != null && (method).equals("onHTTPError"))) {
                ResponseHolder tmp_8 = (ResponseHolder) (object);
                (tmp_8).onHTTPError((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (String) ((args).get(1)));
                return null;
            }
        }
        if ((className)==("Service") || ((className) != null && (className).equals("Service"))) {
            if ((method)==("getURL") || ((method) != null && (method).equals("getURL"))) {
                Service tmp_9 = (Service) (object);
                return (tmp_9).getURL();
            }
            if ((method)==("getRuntime") || ((method) != null && (method).equals("getRuntime"))) {
                Service tmp_10 = (Service) (object);
                return (tmp_10).getRuntime();
            }
            if ((method)==("rpc") || ((method) != null && (method).equals("rpc"))) {
                Service tmp_11 = (Service) (object);
                return (tmp_11).rpc((String) ((args).get(0)), (args).get(1));
            }
        }
        if ((className)==("Client") || ((className) != null && (className).equals("Client"))) {
            if ((method)==("getRuntime") || ((method) != null && (method).equals("getRuntime"))) {
                Client tmp_12 = (Client) (object);
                return (tmp_12).getRuntime();
            }
            if ((method)==("getURL") || ((method) != null && (method).equals("getURL"))) {
                Client tmp_13 = (Client) (object);
                return (tmp_13).getURL();
            }
        }
        if ((className)==("Server<Object>") || ((className) != null && (className).equals("Server<Object>"))) {
            if ((method)==("getRuntime") || ((method) != null && (method).equals("getRuntime"))) {
                Server<Object> tmp_14 = (Server<Object>) (object);
                return (tmp_14).getRuntime();
            }
            if ((method)==("onHTTPRequest") || ((method) != null && (method).equals("onHTTPRequest"))) {
                Server<Object> tmp_15 = (Server<Object>) (object);
                (tmp_15).onHTTPRequest((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (io.datawire.quark.runtime.HTTPResponse) ((args).get(1)));
                return null;
            }
            if ((method)==("onServletError") || ((method) != null && (method).equals("onServletError"))) {
                Server<Object> tmp_16 = (Server<Object>) (object);
                (tmp_16).onServletError((String) ((args).get(0)), (String) ((args).get(1)));
                return null;
            }
        }
        if ((className)==("Box<int>") || ((className) != null && (className).equals("Box<int>"))) {
            if ((method)==("get") || ((method) != null && (method).equals("get"))) {
                Box<Integer> tmp_17 = (Box<Integer>) (object);
                return (tmp_17).get();
            }
            if ((method)==("set") || ((method) != null && (method).equals("set"))) {
                Box<Integer> tmp_18 = (Box<Integer>) (object);
                (tmp_18).set((Integer) ((args).get(0)));
                return null;
            }
        }
        return null;
    }
}
