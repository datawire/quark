package quark_md;

public class quark_test_Test_check_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_test_Test_check_Method() {
        super("quark.bool", "check", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.bool", "quark.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.test.Test obj = (quark.test.Test) (object);
        return (obj).check((Boolean) ((args).get(0)), (String) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
