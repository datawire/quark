package default_constructors;

public class Functions {

    static default_constructors_md.Root root = new default_constructors_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        B b = new B("Bob");
        (b).greet();
        C c = new C("arole");
        (c).greet();
        Y y = new Y("asdf");
        (y).test();
    }
}
