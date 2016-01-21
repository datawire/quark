package constructors_md;

public class test3_Box_builtin_String__get_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public test3_Box_builtin_String__get_Method() {
        super("builtin.String", "get", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        test3.Box<String> obj = (test3.Box<String>) (object);
        return (obj).get();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
