package delegate_md;

public class delegate_Test extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new delegate_Test();
    public delegate_Test() {
        super("delegate.Test");
        (this).name = "delegate.Test";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new delegate_Test_bar_Method(), new delegate_Test_foo_Method(), new delegate_Test_rpc_Method(), new delegate_Test_hello_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new delegate.Test();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
