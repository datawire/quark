package pkg;

public class Foo implements io.datawire.quark.runtime.QObject {
    public static reflect.Class pkg_Foo_ref = use_class_before_def_md.Root.pkg_Foo_md;
    public String name;
    public Foo() {}
    public String _getClass() {
        return "pkg.Foo";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
