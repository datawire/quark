package default_constructors_md;

public class default_constructors_B extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new default_constructors_B();
    public default_constructors_B() {
        super("default_constructors.B");
        (this).name = "default_constructors.B";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "name")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new default_constructors_B_greet_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new default_constructors.B((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
