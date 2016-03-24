package quark_md;

public class quark_test_MethodTest_current_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_test_MethodTest_current_Method() {
        super("quark.test.Test", "current", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.test.MethodTest obj = (quark.test.MethodTest) (object);
        return quark.test.Test.current();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
