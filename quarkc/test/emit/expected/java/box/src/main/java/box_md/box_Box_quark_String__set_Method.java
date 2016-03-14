package box_md;

public class box_Box_quark_String__set_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public box_Box_quark_String__set_Method() {
        super("quark.void", "set", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        box.Box<String> obj = (box.Box<String>) (object);
        (obj).set((String) ((args).get(0)));
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
