package inheritence_md;

public class inheritence_B extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritence_B();
    public inheritence_B() {
        super("inheritence.B");
        (this).name = "inheritence.B";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new inheritence_B_foo_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritence.B();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
