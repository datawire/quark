package use_class_before_def_md;

public class Root implements io.datawire.quark.runtime.QObject {
    public static reflect.Class pkg_Bar_md = pkg_Bar.singleton;
    public static reflect.Class pkg_Foo_md = pkg_Foo.singleton;
    public Root() {}
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
