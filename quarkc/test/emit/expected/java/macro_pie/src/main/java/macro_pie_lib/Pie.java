package macro_pie_lib;

public class Pie implements io.datawire.quark.runtime.QObject {
    public Pie() {}
    public void test() {
        Pie p = new Pie();
        Integer x = 3;
    }
    public String _getClass() {
        return "Pie";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
