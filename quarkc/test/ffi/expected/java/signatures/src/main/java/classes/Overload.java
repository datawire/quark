package classes;

public class Overload implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class classes_Overload_ref = quark_ffi_signatures_md.Root.classes_Overload_md;
    public String name;
    public Overload(String name) {}
    public Overload __add__(Overload o) {
        return (Overload) (null);
    }
    public Overload __mul__(Overload o) {
        return (Overload) (null);
    }
    public void test() {}
    public String _getClass() {
        return "classes.Overload";
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
