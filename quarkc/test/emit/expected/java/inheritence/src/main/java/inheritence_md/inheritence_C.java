package inheritence_md;

public class inheritence_C extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new inheritence_C();
    public inheritence_C() {
        super("inheritence.C");
        (this).name = "inheritence.C";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new inheritence_C_foo_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritence.C();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
