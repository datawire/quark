package static__lib;

/* BEGIN_BUILTIN */

public class Class implements io.datawire.quark.runtime.QObject {
    public String id;
    public String name;
    public java.util.ArrayList<Class> parameters;
    public Class(String id) {
        (this).id = id;
        Functions._class(this);
    }
    public String getId() {
        return this.id;
    }
    public String getName() {
        return this.name;
    }
    public java.util.ArrayList<Class> getParameters() {
        return this.parameters;
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return Functions._construct(this.getId(), args);
    }
    public java.util.ArrayList<Field> getFields() {
        return Functions._fields((this).id);
    }
    public Field getField(String name) {
        java.util.ArrayList<Field> fields = this.getFields();
        Integer idx = 0;
        while ((idx) < ((fields).size())) {
            if ((((fields).get(idx)).name)==(name) || ((((fields).get(idx)).name) != null && (((fields).get(idx)).name).equals(name))) {
                return (fields).get(idx);
            }
            idx = (idx) + (1);
        }
        return (Field) (null);
    }
    public Object invoke(Object object, String method, java.util.ArrayList<Object> args) {
        return Functions._invoke((this).id, object, method, args);
    }
    public String _getClass() {
        return "Class";
    }
    public Object _getField(String name) {
        if ((name)==("id") || ((name) != null && (name).equals("id"))) {
            return (this).id;
        }
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            return (this).name;
        }
        if ((name)==("parameters") || ((name) != null && (name).equals("parameters"))) {
            return (this).parameters;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("id") || ((name) != null && (name).equals("id"))) {
            (this).id = (String) (value);
        }
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            (this).name = (String) (value);
        }
        if ((name)==("parameters") || ((name) != null && (name).equals("parameters"))) {
            (this).parameters = (java.util.ArrayList<Class>) (value);
        }
    }
}
/* END_BUILTIN */
