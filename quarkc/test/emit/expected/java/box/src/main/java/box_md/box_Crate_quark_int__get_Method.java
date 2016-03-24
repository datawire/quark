package box_md;

public class box_Crate_quark_int__get_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public box_Crate_quark_int__get_Method() {
        super("quark.int", "get", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        box.Crate<Integer> obj = (box.Crate<Integer>) (object);
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
