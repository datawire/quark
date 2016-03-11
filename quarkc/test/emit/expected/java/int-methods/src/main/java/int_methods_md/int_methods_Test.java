package int_methods_md;

public class int_methods_Test extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new int_methods_Test();
    public int_methods_Test() {
        super("int_methods.Test");
        (this).name = "int_methods.Test";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new int_methods_Test_test_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new int_methods.Test();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
