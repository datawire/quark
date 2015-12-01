public class Functions {
    public static void foo(String s) {
        System.out.println(s);
    }


    public static void main() {
        Object o = "Hello World!";
        String s = (String) (o);
        String s2;
        s2 = (String) (o);
        Functions.foo((String) (o));
    }
    public static void main(String[] args) {
        main();
    }
}
