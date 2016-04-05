package extending_primitives;

public class Functions {

    static extending_primitives_md.Root root = new extending_primitives_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        pkg.C c = new pkg.C();
        (c).event1();
        (c).event2();
        (c).run();
    }
}
