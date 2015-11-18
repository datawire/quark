public class Functions {
    public static void test1() {
        java.util.HashMap<String,Integer> map = new java.util.HashMap<String,Integer>();
        (map).put(("pi"), (3));
        System.out.println((map).get("pi"));
        System.out.println((map).get("not_there"));
        System.out.println("^--- should be null");
    }
    public static void test_update() {
        java.util.HashMap<String,String> first = new java.util.HashMap<String,String>();
        java.util.HashMap<String,String> second = new java.util.HashMap<String,String>();
        (first).put(("a"), ("first_a"));
        (first).put(("b"), ("first_b"));
        (second).put(("b"), ("second_b"));
        (second).put(("c"), ("second_c"));
        (first).putAll(second);
        System.out.println((first).get("a"));
        System.out.println((first).get("b"));
        System.out.println((first).get("c"));
    }
    public static void test_literal() {
        java.util.HashMap<String,Object> map = io.datawire.quark.runtime.Builtins.map(new Object[]{});
        map = io.datawire.quark.runtime.Builtins.map(new Object[]{"pi", 3.14159, "e", 2.718});
        System.out.println((map).get("pi"));
        System.out.println((map).get("e"));
    }
    public static void main() {
        Functions.test1();
        Functions.test_update();
        Functions.test_literal();
    }
    public static void main(String[] args) {
        main();
    }
}