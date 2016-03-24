package list_md;

public class list_Box_quark_int__get_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public list_Box_quark_int__get_Method() {
        super("quark.int", "get", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        list.Box<Integer> obj = (list.Box<Integer>) (object);
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
