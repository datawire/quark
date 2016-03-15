package box;

public class Crate<T> implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class box_Box_quark_Object__ref = box_md.Root.box_Box_quark_Object__md;
    public static quark.reflect.Class box_Box_quark_int__ref = box_md.Root.box_Box_quark_int__md;
    public Box<T> box = new Box<T>();
    public Box<Integer> ibox = new Box<Integer>();
    public Crate() {}
    public void set(T stuff) {
        ((this).box).set(stuff);
    }
    public T get() {
        return ((this).box).get();
    }
    public String _getClass() {
        return "box.Crate<quark.Object>";
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
