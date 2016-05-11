package generics.constructors;

public class Box<T> implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class generics_constructors_Box_quark_Object__ref = quark_ffi_signatures_md.Root.generics_constructors_Box_quark_Object__md;
    public T contents;
    public Box(T contents) {}
    public T get() {
        return (T) (null);
    }
    public String _getClass() {
        return "generics.constructors.Box<quark.Object>";
    }
    public Object _getField(String name) {
        if ((name)==("contents") || ((Object)(name) != null && ((Object) (name)).equals("contents"))) {
            return (this).contents;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("contents") || ((Object)(name) != null && ((Object) (name)).equals("contents"))) {
            (this).contents = (T) (value);
        }
    }
}
