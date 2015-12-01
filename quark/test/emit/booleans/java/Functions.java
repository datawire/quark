public class Functions {
    public static void main() {
        if (true) {
            System.out.println("Hi!");
        }
        Boolean b = (1) > (0);
        if (b) {
            System.out.println("Hey!");
        }
        Boolean c = false;
        if (!(c)) {
            System.out.println("Ho!");
        }
        Integer count = 0;
        while (true) {
            if ((count) > (3)) {
                break;
            }
            count = (count) + (1);
        }
        Boolean troo = (true) && (true);
        System.out.println((troo).toString());
        Boolean fols = (false) || (false);
        System.out.println((fols).toString());
        String foo = "foo";
        String bar = "bar";
        if (((foo)==("foo") || ((foo) != null && (foo).equals("foo"))) && ((bar)==("bar") || ((bar) != null && (bar).equals("bar")))) {
            System.out.println("foobar!!");
        }
    }
    public static void main(String[] args) {
        main();
    }
}
