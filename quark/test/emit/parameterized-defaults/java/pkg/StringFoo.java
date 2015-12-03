package pkg;

public class StringFoo implements Foo<String> {
    public StringFoo() {}
    public String get() {
        return "fdsa";
    }
    public String foo() {
        return this.get();
    }
}
