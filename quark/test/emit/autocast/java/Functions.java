public class Functions {
    public static void test() {
        Object o = (Object) ("Hello World!");
        String s = (String) (o);
        String s2;
        s2 = (String) (o);
    }
}