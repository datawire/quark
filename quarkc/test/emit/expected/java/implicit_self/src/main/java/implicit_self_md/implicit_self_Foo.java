package implicit_self_md;

public class implicit_self_Foo extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new implicit_self_Foo();
    public implicit_self_Foo() {
        super("implicit_self.Foo");
        (this).name = "implicit_self.Foo";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new implicit_self_Foo_next_Method(), new implicit_self_Foo_test_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new implicit_self.Foo();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
