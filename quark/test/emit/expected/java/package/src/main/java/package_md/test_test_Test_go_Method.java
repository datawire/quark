package package_md;

public class test_test_Test_go_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public test_test_Test_go_Method() {
        super("builtin.void", "go", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        test.test.Test obj = (test.test.Test) (object);
        (obj).go();
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
