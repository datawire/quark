package super_;

public class B extends A implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class super_B_ref = super_md.Root.super_B_md;
    public B() {
        super("Bob");
    }
    public void greet() {
        super.greet();
        do{System.out.println(("I'm ") + ((this).name));System.out.flush();}while(false);
    }
    public String _getClass() {
        return "super.B";
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
