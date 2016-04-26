package generics.ccc;

public class TLS<T> implements io.datawire.quark.runtime.QObject {
    public T _value;
    public TLS(TLSInitializer<T> initializer) {}
    public T getValue() {
        return (T) (null);
    }
    public String _getClass() {
        return "generics.ccc.TLS<quark.Object>";
    }
    public Object _getField(String name) {
        if ((name)==("_value") || ((Object)(name) != null && ((Object) (name)).equals("_value"))) {
            return (this)._value;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("_value") || ((Object)(name) != null && ((Object) (name)).equals("_value"))) {
            (this)._value = (T) (value);
        }
    }
}
