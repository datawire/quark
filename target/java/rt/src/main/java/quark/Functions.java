package quark;

import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

public class Functions {
    public static boolean object___ne__(Object left, Object right) { return left == right; }

    public static boolean bool___and__(boolean i, boolean j) { return i && j; }
    public static boolean bool___or__(boolean i, boolean j) { return i || j; }
    public static boolean bool___eq__(boolean i, boolean j) { return i == j; }
    public static boolean bool___not__(boolean i) { return !i; }

    public static void print(String msg) { System.out.println(msg); }

    public static boolean int___eq__ (int i, int j) { return i == j; }
    public static boolean int___ne__ (int i, int j) { return i != j; }
    public static int     int___add__(int i, int j) { return i + j; }
    public static int     int___sub__(int i, int j) { return i - j; }
    public static int     int___neg__(int n) { return -n; }
    public static int     int___mul__(int i, int j) { return i * j; }
    public static boolean int___ge__(int i, int j) { return i >= j; }
    public static boolean int___gt__(int i, int j) { return i > j; }
    public static boolean int___le__(int i, int j) { return i <= j; }
    public static boolean int___lt__(int i, int j) { return i < j; }

    public static String String___add__ (String a, String b) { return a + b; }
    public static boolean String___eq__ (String a, String b) { return a == b || (a != null && a.equals(b)); }
    public static int String_size (String a) { return a.length(); }
    public static String String_substring (String a, int start, int end) {
        int l = a.length();
        return a.substring(start, end < l ? end : l);
    }

    private static String null_check(String value) {
        if (value != null) {
            return value;
        } else {
            return "";
        }
    }
    private static int null_check(Integer value) {
        if (value != null) {
            return value;
        } else {
            return 0;
        }
    }
    private static Object null_check(Object value) {
        if (value != null) {
            return value;
        } else {
            return null;
        }
    }

    public static Map<String,String> Map_String_String___init__() {
        return new HashMap<String,String>();
    }
    public static String Map_String_String___get__(Map<String,String> map, String key) {
        String ret = map.get(key);
        return null_check(ret);
    }
    public static void Map_String_String___set__(Map<String,String> map, String key, String value) {
        map.put(key, value);
    }
    public static int Map_String_String_size(Map<String,String> map) {
        return map.size();
    }
    public static List<String> Map_String_String_keys(Map<String,String> map) {
        return new ArrayList<String>(map.keySet());
    }


    public static Map<String,Integer> Map_String_int___init__() {
        return new HashMap<String,Integer>();
    }
    public static int Map_String_int___get__(Map<String,Integer> map, String key) {
        Integer ret = map.get(key);
        return null_check(ret);
    }
    public static void Map_String_int___set__(Map<String,Integer> map, String key, int value) {
        map.put(key, value);
    }
    public static int Map_String_int_size(Map<String,Integer> map) {
        return map.size();
    }
    public static List<String> Map_String_int_keys(Map<String,Integer> map) {
        return new ArrayList<String>(map.keySet());
    }


    public static List<Integer> List_int___init__() {
        return new ArrayList<Integer>();
    }
    public static int List_int___get__(List<Integer> list, int key) {
        Integer ret = list.get(key);
        return null_check(ret);
    }
    public static void List_int___set__(List<Integer> list, int key, int value) {
        list.set(key,value);
    }
    public static int List_int_size(List<Integer> list) {
        return list.size();
    }
    public static void List_int_append(List<Integer> list, int value) {
        list.add(value);
    }
    public static void List_int_extend(List<Integer> list, List<Integer> another) {
        list.addAll(another);
    }
    public static int List_int_remove(List<Integer> list, int key) {
        return list.remove(key);
    }


    public static List<Object> List_Any___init__() {
        return new ArrayList<Object>();
    }
    public static Object List_Any___get__(List<Object> list, int key) {
        Object ret = list.get(key);
        return null_check(ret);
    }
    public static void List_Any___set__(List<Object> list, int key, Object value) {
        list.set(key,value);
    }
    public static int List_Any_size(List<Object> list) {
        return list.size();
    }
    public static void List_Any_append(List<Object> list, Object value) {
        list.add(value);
    }
    public static void List_Any_extend(List<Object> list, List<Object> another) {
        list.addAll(another);
    }
    public static Object List_Any_remove(List<Object> list, int key) {
        return list.remove(key);
    }


    public static List<String> List_String___init__() {
        return new ArrayList<String>();
    }
    public static String List_String___get__(List<String> list, int key) {
        String ret = list.get(key);
        return null_check(ret);
    }
    public static void List_String___set__(List<String> list, int key, String value) {
        list.set(key,value);
    }
    public static int List_String_size(List<String> list) {
        return list.size();
    }
    public static void List_String_append(List<String> list, String value) {
        list.add(value);
    }
    public static void List_String_extend(List<String> list, List<String> another) {
        list.addAll(another);
    }
    public static String List_String_remove(List<String> list, int key) {
        return list.remove(key);
    }

    public static Object unsafe(Object a) { return a; }

    public static int Any_type(Object a) {
        if (a == null) {
            return 0;
        } else if (a instanceof Boolean) {
            return 1;
        } else if (a instanceof Integer) {
            return 1;
        } else if (a instanceof String) {
            return 1;
        } else if (a instanceof Float || a instanceof Double) {
            return 1;
        } else if (a instanceof List) {
            return 2;
        } else if (a instanceof Map) {
            return 3;
        }
        return -1;
    }

    public static boolean Any_asBool(Object a) {
        if (a == null) {
            return false;
        } else if (a instanceof Boolean) {
            return (Boolean)a;
        } else if (a instanceof Integer) {
            return ((Integer)a) != 0;
        } else if (a instanceof String) {
            return !((String)a).isEmpty();
        } else if (a instanceof Float) {
            return ((Float)a) != 0.0;
        } else if (a instanceof Double) {
            return ((Double)a) != 0.0;
        } else if (a instanceof List) {
            return false;
        } else if (a instanceof Map) {
            return false;
        }
        return false;
    }

    public static int Any_asInt(Object a) {
        if (a == null) {
            return 0;
        } else if (a instanceof Boolean) {
            return (Boolean)a ? 1 : 0;
        } else if (a instanceof Integer) {
            return ((Integer)a);
        } else if (a instanceof String) {
            return 0;
        } else if (a instanceof Float) {
            return ((Float)a).intValue();
        } else if (a instanceof Double) {
            return ((Double)a).intValue();
        } else if (a instanceof List) {
            return 0;
        } else if (a instanceof Map) {
            return 0;
        }
        return 0;
    }

    public static String Any_asString(Object a) {
        if (a == null) {
            return "";
        } else if (a instanceof Boolean) {
            return (Boolean)a ? "true" : "false";
        } else if (a instanceof Integer) {
            return ((Integer)a).toString();
        } else if (a instanceof String) {
            return (String)a;
        } else if (a instanceof Float) {
            return ((Float)a).toString();
        } else if (a instanceof Double) {
            return ((Double)a).toString();
        } else if (a instanceof List) {
            return "";
        } else if (a instanceof Map) {
            return "";
        }
        return "";
    }

    public static double Any_asFloat(Object a) {
        if (a == null) {
            return 0.0;
        } else if (a instanceof Boolean) {
            return (Boolean)a ? 1.0 : 0.0;
        } else if (a instanceof Integer) {
            return ((Integer)a).doubleValue();
        } else if (a instanceof String) {
            return 0.0;
        } else if (a instanceof Float) {
            return ((Float)a);
        } else if (a instanceof Double) {
            return ((Double)a);
        } else if (a instanceof List) {
            return 0.0;
        } else if (a instanceof Map) {
            return 0.0;
        }
        return 0.0;
    }

    public static List<Object> Any_asList(Object a) {
        if (a instanceof List) {
            return (List<Object>)a;
        } else {
            return null;
        }
    }

    public static Map<Object,Object> Any_asMap(Object a) {
        if (a instanceof Map) {
            return (Map<Object,Object>)a;
        } else {
            return null;
        }
    }
}
