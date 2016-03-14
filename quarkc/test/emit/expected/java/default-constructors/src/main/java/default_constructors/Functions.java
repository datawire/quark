package default_constructors;

public class Functions {

    static default_constructors_md.Root root = new default_constructors_md.Root();


    public static void main() {
        B b = new B("Bob");
        (b).greet();
        C c = new C("arole");
        (c).greet();
        Y y = new Y("asdf");
        (y).test();
    }
}
