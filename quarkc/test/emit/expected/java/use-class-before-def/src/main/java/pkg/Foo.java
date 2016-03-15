package pkg;

public class Foo implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class pkg_Foo_ref = use_class_before_def_md.Root.pkg_Foo_md;
    public String name;
    public Foo() {}
    public String _getClass() {
        return "pkg.Foo";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
