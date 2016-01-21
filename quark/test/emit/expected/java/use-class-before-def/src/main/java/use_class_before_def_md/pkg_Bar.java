package use_class_before_def_md;

public class pkg_Bar extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new pkg_Bar();
    public pkg_Bar() {
        super("pkg.Bar");
        (this).name = "Bar";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pkg_Bar_go_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pkg.Bar();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
