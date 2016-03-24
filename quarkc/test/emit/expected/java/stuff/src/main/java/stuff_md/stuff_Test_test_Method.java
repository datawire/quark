package stuff_md;

public class stuff_Test_test_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public stuff_Test_test_Method() {
        super("quark.void", "test", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        stuff.Test obj = (stuff.Test) (object);
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
