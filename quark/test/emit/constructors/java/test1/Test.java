package test1;

public class Test implements io.datawire.quark.runtime.QObject {
    public String name;
    public Test() {
        (this).name = "Hello World!";
    }
    public String _getClass() {
        return "test1.Test";
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
