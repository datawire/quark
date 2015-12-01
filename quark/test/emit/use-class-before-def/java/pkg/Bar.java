package pkg;

public class Bar {
    public Bar() {}
    public void go() {
        Foo foo = new Foo();
        (foo).name = "bob";
        System.out.println((foo).name);
    }
}
