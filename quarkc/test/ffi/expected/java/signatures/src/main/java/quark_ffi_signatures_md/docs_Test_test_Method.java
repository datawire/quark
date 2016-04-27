package quark_ffi_signatures_md;

public class docs_Test_test_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public docs_Test_test_Method() {
        super("quark.int", "test", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        docs.Test obj = (docs.Test) (object);
        return (obj).test((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
