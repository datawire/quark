package inheritence;

public class Functions {

    static inheritence_md.Root root = new inheritence_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        A a = new A();
        (a).foo();
        B b = new B();
        (b).foo();
        C c = new C();
        (c).foo();
        do{System.out.println("--");System.out.flush();}while(false);
        a = b;
        (a).foo();
        a = c;
        (a).foo();
    }
}
