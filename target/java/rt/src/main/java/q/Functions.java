package q;

import java.util.Map;
import java.util.HashMap;

public class Functions {
    public static boolean object__ne__(Object left, Object right) { return left == right; }

    public static void print(String msg) { System.out.println(msg); }

    public static boolean int__eq__ (int i, int j) { return i == j; }
    public static int     int__add__(int i, int j) { return i + j; }
    public static int     int__sub__(int i, int j) { return i - j; }

    public static Map<String,String> map_string_string__init__() { return new HashMap<String,String>(); }
    public static String map_string_string__get__(Map<String,String> map, String key) { return map.get(key); }
    public static void map_string_string__set__(Map<String,String> map, String key, String value) { map.put(key, value); }

}
