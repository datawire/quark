package generics;

public class Box<T> implements io.datawire.quark.runtime.QObject {
    public T contents;
    public Box() {}
    public void set(T contents) {}
    public T get() {
        return (T) (null);
    }
    public String _getClass() {
        return "generics.Box<quark.Object>";
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
