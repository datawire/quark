package test;

public class Test implements io.datawire.quark.runtime.QObject {
    public String name;
    public Test() {}
    public void go() {
        System.out.println("TGO!");
    }
    public String _getClass() {
        return "test.Test";
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
