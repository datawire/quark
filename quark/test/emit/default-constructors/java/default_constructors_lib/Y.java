package default_constructors_lib;

public class Y extends X implements io.datawire.quark.runtime.QObject {
    public String name;
    public Y(String name) {
        super();
        (this).name = name;
    }
    public void test() {
        System.out.println((this).name);
    }
    public String _getClass() {
        return "Y";
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
