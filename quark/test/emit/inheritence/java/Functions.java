public class Functions {
    public static void main() {
        A a = new A();
        (a).foo();
        B b = new B();
        (b).foo();
        C c = new C();
        (c).foo();
        System.out.println("--");
        a = b;
        (a).foo();
        a = c;
        (a).foo();
    }
    public static void main(String[] args) {
        main();
    }
}
