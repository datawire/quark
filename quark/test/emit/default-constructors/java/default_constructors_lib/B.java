package default_constructors_lib;

public class B extends A implements io.datawire.quark.runtime.QObject {
    public B(String name) {
        super(name);
    }
    public void greet() {
        System.out.println(("Hello, my name is ") + ((this).name));
    }
    public String _getClass() {
        return "B";
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
