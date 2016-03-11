package macro_stuff_md;

public class macro_stuff_Macro_test_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public macro_stuff_Macro_test_Method() {
        super("builtin.void", "test", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        macro_stuff.Macro obj = (macro_stuff.Macro) (object);
        (obj).test();
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
