package no_spurious_cast;

public class Functions {

    static no_spurious_cast_md.Root root = new no_spurious_cast_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        A a = new B();
        X<Integer> x = new Y();
    }
}
