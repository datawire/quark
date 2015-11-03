public class Functions {
    public static String triop(Boolean a, String b, String c) {
        if (a) {
            return b;
        } else {
            return c;
        }
    }
    public static void main() {
        side_effects a = new side_effects();
        System.out.println((Functions.triop(!(((a).R())==("a") || (((a).R()) != null && ((a).R()).equals("a"))), (a).R(), "null")) + (Functions.triop(!(((a).A())==("b") || (((a).A()) != null && ((a).A()).equals("b"))), (a).A(), "null")));
        System.out.println(("trace: ") + ((a).E()));
    }
    public static void main(String[] args) {
        main();
    }
}