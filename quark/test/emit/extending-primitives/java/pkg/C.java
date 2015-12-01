package pkg;

public class C implements java.lang.Runnable, java.lang.Cloneable {
    public C() {}
    public void event1() {
        System.out.println("event1");
    }
    public void run() {
        System.out.println("running");
    }
    public void event2() {
        System.out.println("default event2");
    }
}
