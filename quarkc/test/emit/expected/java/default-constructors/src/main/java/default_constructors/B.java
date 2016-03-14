package default_constructors;

public class B extends A implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class default_constructors_B_ref = default_constructors_md.Root.default_constructors_B_md;
    public B(String name) {
        super(name);
    }
    public void greet() {
        do{System.out.println(("Hello, my name is ") + ((this).name));System.out.flush();}while(false);
    }
    public String _getClass() {
        return "default_constructors.B";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
