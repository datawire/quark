package overlapping_namespace_md;

public class org_example_bar_Bar_test_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public org_example_bar_Bar_test_Method() {
        super("quark.void", "test", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        org.example.bar.Bar obj = (org.example.bar.Bar) (object);
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
