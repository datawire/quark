package quark_ffi_signatures_md;

public class classes_stuff_Test_test_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public classes_stuff_Test_test_Method() {
        super("quark.void", "test", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        classes.stuff.Test obj = (classes.stuff.Test) (object);
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
