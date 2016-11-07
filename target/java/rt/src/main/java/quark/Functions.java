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
    public static boolean String___eq__ (String a, String b) { return a == b; }
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

    public static Map<String,String> Map_String_String___init__() {
        return new HashMap<String,String>();
    }
    public static String Map_String_String___getitem__(Map<String,String> map, String key) {
        String ret = map.get(key);
        return null_check(ret);
    }
    public static void Map_String_String___setitem__(Map<String,String> map, String key, String value) {
        map.put(key, value);
    }
    public static int Map_String_String_size(Map<String,String> map) {
        return map.size();
    }
    public static List<String> Map_String_String_keys(Map<String,String> map) {
        return new ArrayList(map.keySet());
    }


    public static Map<String,Integer> Map_String_int___init__() {
        return new HashMap<String,Integer>();
    }
    public static int Map_String_int___getitem__(Map<String,Integer> map, String key) {
        Integer ret = map.get(key);
        return null_check(ret);
    }
    public static void Map_String_int___setitem__(Map<String,Integer> map, String key, int value) {
        map.put(key, value);
    }
    public static int Map_String_int_size(Map<String,Integer> map) {
        return map.size();
    }
    public static List<String> Map_String_int_keys(Map<String,Integer> map) {
        return new ArrayList(map.keySet());
    }


    public static List<Integer> List_int___init__() {
        return new ArrayList<Integer>();
    }
    public static int List_int___getitem__(List<Integer> list, int key) {
        Integer ret = list.get(key);
        return null_check(ret);
    }
    public static void List_int___setitem__(List<Integer> list, int key, int value) {
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


    public static List<String> List_String___init__() {
        return new ArrayList<String>();
    }
    public static String List_String___getitem__(List<String> list, int key) {
        String ret = list.get(key);
        return null_check(ret);
    }
    public static void List_String___setitem__(List<String> list, int key, String value) {
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
}
