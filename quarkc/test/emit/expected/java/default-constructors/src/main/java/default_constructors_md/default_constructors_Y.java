package default_constructors_md;

public class default_constructors_Y extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new default_constructors_Y();
    public default_constructors_Y() {
        super("default_constructors.Y");
        (this).name = "default_constructors.Y";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "name")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new default_constructors_Y_test_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new default_constructors.Y((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
