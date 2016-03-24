package default_constructors_md;

public class default_constructors_C extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new default_constructors_C();
    public default_constructors_C() {
        super("default_constructors.C");
        (this).name = "default_constructors.C";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "name")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new default_constructors_C_greet_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new default_constructors.C((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
