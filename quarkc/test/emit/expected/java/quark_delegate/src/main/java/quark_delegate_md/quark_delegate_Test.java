package quark_delegate_md;

public class quark_delegate_Test extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_delegate_Test();
    public quark_delegate_Test() {
        super("quark_delegate.Test");
        (this).name = "quark_delegate.Test";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_delegate_Test_bar_Method(), new quark_delegate_Test_foo_Method(), new quark_delegate_Test_rpc_Method(), new quark_delegate_Test_hello_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark_delegate.Test();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
