package int_methods_lib;

public class Test implements io.datawire.quark.runtime.QObject {
    public Test() {}
    public void test() {
        Integer x = 1;
        Integer y = 2;
        Integer z = (((x) + (y)) - (3)) * (4);
        System.out.println(z);
        Integer four = (2) + (2);
        System.out.println(four);
    }
    public String _getClass() {
        return "Test";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
