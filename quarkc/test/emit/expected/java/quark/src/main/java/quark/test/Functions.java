package quark.test;

public class Functions {

    static quark_md.Root root = new quark_md.Root();


    public static String red(String str) {
        return (("\u001b[31;1m") + (str)) + ("\u001b[0m");
    }


    public static String green(String str) {
        return (("\u001b[32;1m") + (str)) + ("\u001b[0m");
    }


    public static String bold(String str) {
        return (("\u001b[1m") + (str)) + ("\u001b[0m");
    }


    public static Boolean check(Boolean value, String message) {
        return (Test.current()).check(value, message);
    }


    public static Boolean checkEqual(Object expected, Object actual) {
        return (Test.current()).check((expected)==(actual) || ((Object)(expected) != null && ((Object) (expected)).equals(actual)), ((("expected ") + ((expected).toString())) + (" got ")) + ((actual).toString()));
    }


    public static void fail(String message) {
        (Test.current()).check(false, message);
    }


    public static void run(String pkg, String filter) {
        Harness h = new Harness(pkg);
        (h).collect(filter);
        (h).run();
    }
}
