package quark_md;

public class quark_test_TestInitializer extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_test_TestInitializer();
    public quark_test_TestInitializer() {
        super("quark.test.TestInitializer");
        (this).name = "quark.test.TestInitializer";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_test_TestInitializer_getValue_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.test.TestInitializer();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
