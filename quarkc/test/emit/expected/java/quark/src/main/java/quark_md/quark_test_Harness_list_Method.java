package quark_md;

public class quark_test_Harness_list_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_test_Harness_list_Method() {
        super("quark.void", "list", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.test.Harness obj = (quark.test.Harness) (object);
        (obj).list();
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
