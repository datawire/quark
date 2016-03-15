package quark.reflect;

public class Class implements io.datawire.quark.runtime.QObject {
    public static java.util.HashMap<String,Class> classes = io.datawire.quark.runtime.Builtins.map(new Object[]{});
    public static Class VOID = new Class("quark.void");
    public static Class BOOL = new Class("quark.bool");
    public static Class INT = new Class("quark.int");
    public static Class LONG = new Class("quark.long");
    public static Class FLOAT = new Class("quark.float");
    public static Class STRING = new Class("quark.String");
    public String id;
    public String name;
    public java.util.ArrayList<String> parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    public java.util.ArrayList<Field> fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    public java.util.ArrayList<Method> methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    public Class(String id) {
        (this).id = id;
        (Class.classes).put((id), (this));
        (this).name = id;
    }
    public static Class get(String id) {
        return (Class.classes).get(id);
    }
    public String getId() {
        return this.id;
    }
    public String getName() {
        return this.name;
    }
    public java.util.ArrayList<Class> getParameters() {
        java.util.ArrayList<Class> result = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        Integer idx = 0;
        while ((idx) < ((this.parameters).size())) {
            (result).add(Class.get((this.parameters).get(idx)));
            idx = (idx) + (1);
        }
        return result;
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return null;
    }
    public java.util.ArrayList<Field> getFields() {
        return this.fields;
    }
    public Field getField(String name) {
        Integer idx = 0;
        while ((idx) < ((this.fields).size())) {
            if ((((this.fields).get(idx)).name)==(name) || ((Object)(((this.fields).get(idx)).name) != null && ((Object) (((this.fields).get(idx)).name)).equals(name))) {
                return (this.fields).get(idx);
            }
            idx = (idx) + (1);
        }
        return (Field) (null);
    }
    public java.util.ArrayList<Method> getMethods() {
        return this.methods;
    }
    public Method getMethod(String name) {
        Integer idx = 0;
        while ((idx) < ((this.methods).size())) {
            if ((((this.methods).get(idx)).name)==(name) || ((Object)(((this.methods).get(idx)).name) != null && ((Object) (((this.methods).get(idx)).name)).equals(name))) {
                return (this.methods).get(idx);
            }
            idx = (idx) + (1);
        }
        return (Method) (null);
    }
    public String _getClass() {
        return "quark.reflect.Class";
    }
    public Object _getField(String name) {
        if ((name)==("classes") || ((Object)(name) != null && ((Object) (name)).equals("classes"))) {
            return Class.classes;
        }
        if ((name)==("VOID") || ((Object)(name) != null && ((Object) (name)).equals("VOID"))) {
            return Class.VOID;
        }
        if ((name)==("BOOL") || ((Object)(name) != null && ((Object) (name)).equals("BOOL"))) {
            return Class.BOOL;
        }
        if ((name)==("INT") || ((Object)(name) != null && ((Object) (name)).equals("INT"))) {
            return Class.INT;
        }
        if ((name)==("LONG") || ((Object)(name) != null && ((Object) (name)).equals("LONG"))) {
            return Class.LONG;
        }
        if ((name)==("FLOAT") || ((Object)(name) != null && ((Object) (name)).equals("FLOAT"))) {
            return Class.FLOAT;
        }
        if ((name)==("STRING") || ((Object)(name) != null && ((Object) (name)).equals("STRING"))) {
            return Class.STRING;
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            return (this).id;
        }
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        if ((name)==("parameters") || ((Object)(name) != null && ((Object) (name)).equals("parameters"))) {
            return (this).parameters;
        }
        if ((name)==("fields") || ((Object)(name) != null && ((Object) (name)).equals("fields"))) {
            return (this).fields;
        }
        if ((name)==("methods") || ((Object)(name) != null && ((Object) (name)).equals("methods"))) {
            return (this).methods;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("classes") || ((Object)(name) != null && ((Object) (name)).equals("classes"))) {
            Class.classes = (java.util.HashMap<String,Class>) (value);
        }
        if ((name)==("VOID") || ((Object)(name) != null && ((Object) (name)).equals("VOID"))) {
            Class.VOID = (Class) (value);
        }
        if ((name)==("BOOL") || ((Object)(name) != null && ((Object) (name)).equals("BOOL"))) {
            Class.BOOL = (Class) (value);
        }
        if ((name)==("INT") || ((Object)(name) != null && ((Object) (name)).equals("INT"))) {
            Class.INT = (Class) (value);
        }
        if ((name)==("LONG") || ((Object)(name) != null && ((Object) (name)).equals("LONG"))) {
            Class.LONG = (Class) (value);
        }
        if ((name)==("FLOAT") || ((Object)(name) != null && ((Object) (name)).equals("FLOAT"))) {
            Class.FLOAT = (Class) (value);
        }
        if ((name)==("STRING") || ((Object)(name) != null && ((Object) (name)).equals("STRING"))) {
            Class.STRING = (Class) (value);
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            (this).id = (String) (value);
        }
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
        if ((name)==("parameters") || ((Object)(name) != null && ((Object) (name)).equals("parameters"))) {
            (this).parameters = (java.util.ArrayList<String>) (value);
        }
        if ((name)==("fields") || ((Object)(name) != null && ((Object) (name)).equals("fields"))) {
            (this).fields = (java.util.ArrayList<Field>) (value);
        }
        if ((name)==("methods") || ((Object)(name) != null && ((Object) (name)).equals("methods"))) {
            (this).methods = (java.util.ArrayList<Method>) (value);
        }
    }
}
