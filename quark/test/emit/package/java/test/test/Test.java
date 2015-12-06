package test.test;

public class Test implements io.datawire.quark.runtime.QObject {
    public Integer size;
    public Test() {}
    public void go() {
        System.out.println("TTGO!!");
    }
    public String _getClass() {
        return "test.test.Test";
    }
    public Object _getField(String name) {
        if ((name)==("size") || ((name) != null && (name).equals("size"))) {
            return (this).size;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("size") || ((name) != null && (name).equals("size"))) {
            (this).size = (Integer) (value);
        }
    }
}
