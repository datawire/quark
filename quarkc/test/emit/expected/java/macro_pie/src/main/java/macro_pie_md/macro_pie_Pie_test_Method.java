package macro_pie_md;

public class macro_pie_Pie_test_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public macro_pie_Pie_test_Method() {
        super("quark.void", "test", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        macro_pie.Pie obj = (macro_pie.Pie) (object);
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
