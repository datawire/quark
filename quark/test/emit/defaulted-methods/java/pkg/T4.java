package pkg;

public class T4 implements A, C {
    public void bar() {
        System.out.println("A bar");
        (this).foo();
    }
    public void foo() {
        System.out.println("C mixin for foo");
    }
}