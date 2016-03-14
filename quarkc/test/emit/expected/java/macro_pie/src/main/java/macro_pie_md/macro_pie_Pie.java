package macro_pie_md;

public class macro_pie_Pie extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new macro_pie_Pie();
    public macro_pie_Pie() {
        super("macro_pie.Pie");
        (this).name = "macro_pie.Pie";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new macro_pie_Pie_test_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new macro_pie.Pie();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
