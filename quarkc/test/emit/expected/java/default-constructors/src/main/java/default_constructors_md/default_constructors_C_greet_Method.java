package default_constructors_md;

public class default_constructors_C_greet_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public default_constructors_C_greet_Method() {
        super("builtin.void", "greet", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        default_constructors.C obj = (default_constructors.C) (object);
        (obj).greet();
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
