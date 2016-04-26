package overlapping_namespace_md;

public class Root implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class org_example_bar_Bar_md = org_example_bar_Bar.singleton;
    public Root() {}
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
