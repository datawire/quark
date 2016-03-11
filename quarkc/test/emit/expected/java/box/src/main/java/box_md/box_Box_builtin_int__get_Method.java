package box_md;

public class box_Box_builtin_int__get_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public box_Box_builtin_int__get_Method() {
        super("builtin.int", "get", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        box.Box<Integer> obj = (box.Box<Integer>) (object);
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
