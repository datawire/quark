package quark_md;

public class quark_test_MethodTest_match_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_test_MethodTest_match_Method() {
        super("quark.bool", "match", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.List<quark.String>"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.test.MethodTest obj = (quark.test.MethodTest) (object);
        return (obj).match((java.util.ArrayList<String>) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
