package no_spurious_cast;

public class Functions {

    static no_spurious_cast_md.Root root = new no_spurious_cast_md.Root();


    public static void main() {
        A a = new B();
        X<Integer> x = new Y();
    }
}
