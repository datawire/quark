package super__lib;

public class A implements io.datawire.quark.runtime.QObject {
    public String name;
    public A(String name) {
        (this).name = name;
    }
    public void greet() {
        System.out.println("Hello");
    }
    public String _getClass() {
        return "A";
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
