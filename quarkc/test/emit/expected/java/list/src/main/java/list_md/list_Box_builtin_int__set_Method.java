package list_md;

public class list_Box_builtin_int__set_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public list_Box_builtin_int__set_Method() {
        super("builtin.void", "set", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        list.Box<Integer> obj = (list.Box<Integer>) (object);
        (obj).set((Integer) ((args).get(0)));
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
