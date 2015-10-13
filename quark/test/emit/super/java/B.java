public class B extends A {
    public B() {
        super("Bob");
    }
    public void greet() {
        super.greet();
        System.out.println(("I'm ") + ((this).name));
    }
}