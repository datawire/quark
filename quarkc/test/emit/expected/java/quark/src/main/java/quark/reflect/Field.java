package quark.reflect;

public class Field implements io.datawire.quark.runtime.QObject {
    public String type;
    public String name;
    public Field(String type, String name) {
        (this).type = type;
        (this).name = name;
    }
    public Class getType() {
        return Class.get(this.type);
    }
    public String getName() {
        return this.name;
    }
    public String _getClass() {
        return "quark.reflect.Field";
    }
    public Object _getField(String name) {
        if ((name)==("type") || ((Object)(name) != null && ((Object) (name)).equals("type"))) {
            return (this).type;
        }
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("type") || ((Object)(name) != null && ((Object) (name)).equals("type"))) {
            (this).type = (String) (value);
        }
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
