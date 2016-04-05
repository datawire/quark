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


    public static void run(java.util.ArrayList<String> args) {
        String pkg = (args).get(0);
        java.util.ArrayList<String> filters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        Boolean list = false;
        Integer idx = 1;
        while ((idx) < ((args).size())) {
            String arg = (args).get(idx);
            if ((arg)==("-l") || ((Object)(arg) != null && ((Object) (arg)).equals("-l"))) {
                list = true;
            } else {
                (filters).add(arg);
            }
            idx = (idx) + (1);
        }
        Harness h = new Harness(pkg);
        (h).collect(filters);
        if (list) {
            (h).list();
        } else {
            do{System.out.println(Functions.bold(("Running: ") + (io.datawire.quark.runtime.Builtins.join((" "), (args)))));System.out.flush();}while(false);
            (h).run();
        }
    }
}
