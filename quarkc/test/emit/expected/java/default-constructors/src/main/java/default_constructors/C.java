package default_constructors;

public class C extends A implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class default_constructors_C_ref = default_constructors_md.Root.default_constructors_C_md;
    public C(String name) {
        super(("C") + (name));
    }
    public void greet() {
        do{System.out.println(("Greetings, my name is ") + ((this).name));System.out.flush();}while(false);
    }
    public String _getClass() {
        return "default_constructors.C";
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
