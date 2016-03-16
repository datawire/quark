package quark_md;

public class quark_test_TestInitializer_getValue_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_test_TestInitializer_getValue_Method() {
        super("quark.test.Test", "getValue", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.test.TestInitializer obj = (quark.test.TestInitializer) (object);
        return (obj).getValue();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
