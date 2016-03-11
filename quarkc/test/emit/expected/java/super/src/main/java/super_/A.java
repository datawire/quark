package super_;

public class A implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class super_A_ref = super_md.Root.super_A_md;
    public String name;
    public A(String name) {
        (this).name = name;
    }
    public void greet() {
        do{System.out.println("Hello");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "super.A";
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
