package test3;

public class Box<T> implements io.datawire.quark.runtime.QObject {
    public T contents;
    public Box(T contents) {
        (this).contents = contents;
    }
    public T get() {
        return (this).contents;
    }
    public String _getClass() {
        return "test3.Box<builtin.Object>";
    }
    public Object _getField(String name) {
        if ((name)==("contents") || ((name) != null && (name).equals("contents"))) {
            return (this).contents;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("contents") || ((name) != null && (name).equals("contents"))) {
            (this).contents = (T) (value);
        }
    }
}
