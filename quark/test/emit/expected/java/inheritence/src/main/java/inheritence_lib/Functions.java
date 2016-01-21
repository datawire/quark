package inheritence_lib;

public class Functions {
    public static void main() {
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
