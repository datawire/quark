package map;

public class Functions {

    static map_md.Root root = new map_md.Root();


    public static void test1() {
        java.util.HashMap<String,Integer> map = new java.util.HashMap<String,Integer>();
        (map).put(("pi"), (3));
        do{System.out.println((map).get("pi"));System.out.flush();}while(false);
        do{System.out.println((map).get("not_there"));System.out.flush();}while(false);
        do{System.out.println("^--- should be null");System.out.flush();}while(false);
    }


    public static void test_update() {
        java.util.HashMap<String,String> first = new java.util.HashMap<String,String>();
        java.util.HashMap<String,String> second = new java.util.HashMap<String,String>();
        (first).put(("a"), ("first_a"));
        (first).put(("b"), ("first_b"));
        (second).put(("b"), ("second_b"));
        (second).put(("c"), ("second_c"));
        (first).putAll(second);
        do{System.out.println((first).get("a"));System.out.flush();}while(false);
        do{System.out.println((first).get("b"));System.out.flush();}while(false);
        do{System.out.println((first).get("c"));System.out.flush();}while(false);
    }


    public static void test_literal() {
        java.util.HashMap<String,Object> map = io.datawire.quark.runtime.Builtins.map(new Object[]{});
        map = io.datawire.quark.runtime.Builtins.map(new Object[]{"pi", 3.14159, "e", 2.718});
        do{System.out.println((map).get("pi"));System.out.flush();}while(false);
        do{System.out.println((map).get("e"));System.out.flush();}while(false);
    }


    public static void iterables() {
        java.util.HashMap<String,Integer> numbers = io.datawire.quark.runtime.Builtins.map(new Object[]{"zero", 0, "one", 1, "two", 2, "e", 2, "three", 3, "pi", 3, "fun", 69, "dockingbay", 94});
        java.util.ArrayList<String> keys = new java.util.ArrayList((numbers).keySet());
        java.util.Collections.sort(keys, null);
        do{System.out.println(keys);System.out.flush();}while(false);
    }


    public static void main() {
        Functions.test1();
        Functions.test_update();
        Functions.test_literal();
        Functions.iterables();
    }
}
