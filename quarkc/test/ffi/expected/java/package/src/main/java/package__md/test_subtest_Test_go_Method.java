package package__md;

public class test_subtest_Test_go_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public test_subtest_Test_go_Method() {
        super("quark.void", "go", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        test.subtest.Test obj = (test.subtest.Test) (object);
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
