public class B extends A {
    public B(String name) { super(name); }
    public void greet() {
        System.out.println(("Hello, my name is ") + ((this).name));
    }
}