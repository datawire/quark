package inheritance.use_before_def;

public class Foo implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_use_before_def_Foo_ref = quark_ffi_signatures_md.Root.inheritance_use_before_def_Foo_md;
    public String name;
    public Foo() {}
    public String _getClass() {
        return "inheritance.use_before_def.Foo";
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
