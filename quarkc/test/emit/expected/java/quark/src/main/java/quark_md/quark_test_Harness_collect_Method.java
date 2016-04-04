package quark_md;

public class quark_test_Harness_collect_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_test_Harness_collect_Method() {
        super("quark.void", "collect", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.List<quark.String>"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.test.Harness obj = (quark.test.Harness) (object);
        (obj).collect((java.util.ArrayList<String>) ((args).get(0)));
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
