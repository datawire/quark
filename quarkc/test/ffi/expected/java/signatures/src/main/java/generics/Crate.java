package generics;

public class Crate<T> implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class generics_Box_quark_Object__ref = quark_ffi_signatures_md.Root.generics_Box_quark_Object__md;
    public static quark.reflect.Class generics_Box_quark_int__ref = quark_ffi_signatures_md.Root.generics_Box_quark_int__md;
    public static quark.reflect.Class generics_Crate_quark_Object__ref = quark_ffi_signatures_md.Root.generics_Crate_quark_Object__md;
    public Box<T> box;
    public Box<Integer> ibox;
    public Crate() {}
    public void set(T stuff) {}
    public T get() {
        return (T) (null);
    }
    public String _getClass() {
        return "generics.Crate<quark.Object>";
    }
    public Object _getField(String name) {
        if ((name)==("box") || ((Object)(name) != null && ((Object) (name)).equals("box"))) {
            return (this).box;
        }
        if ((name)==("ibox") || ((Object)(name) != null && ((Object) (name)).equals("ibox"))) {
            return (this).ibox;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("box") || ((Object)(name) != null && ((Object) (name)).equals("box"))) {
            (this).box = (Box<T>) (value);
        }
        if ((name)==("ibox") || ((Object)(name) != null && ((Object) (name)).equals("ibox"))) {
            (this).ibox = (Box<Integer>) (value);
        }
    }
}
