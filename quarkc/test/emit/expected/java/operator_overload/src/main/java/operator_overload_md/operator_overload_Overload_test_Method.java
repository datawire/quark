package operator_overload_md;

public class operator_overload_Overload_test_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public operator_overload_Overload_test_Method() {
        super("quark.void", "test", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        operator_overload.Overload obj = (operator_overload.Overload) (object);
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
