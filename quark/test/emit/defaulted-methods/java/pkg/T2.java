package pkg;

public class T2 implements A, B {
    public T2() {}
    public void foo() {
        System.out.println("T2 foo");
    }
    public void bar() {
        System.out.println("A bar");
        (this).foo();
    }
}
