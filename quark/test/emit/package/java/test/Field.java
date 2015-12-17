package test;

/* BEGIN_BUILTIN */

public class Field implements io.datawire.quark.runtime.QObject {
    public Class type;
    public String name;
    public Field(Class type, String name) {
        (this).type = type;
        (this).name = name;
    }
    public String _getClass() {
        return "Field";
    }
    public Object _getField(String name) {
        if ((name)==("type") || ((name) != null && (name).equals("type"))) {
            return (this).type;
        }
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("type") || ((name) != null && (name).equals("type"))) {
            (this).type = (Class) (value);
        }
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
/* END_BUILTIN */
