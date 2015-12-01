public class C extends A {
    public C(String name) {
        super(("C") + (name));
    }
    public void greet() {
        System.out.println(("Greetings, my name is ") + ((this).name));
    }
}
