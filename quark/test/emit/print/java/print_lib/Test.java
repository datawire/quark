package print_lib;

public class Test implements io.datawire.quark.runtime.QObject {
    public Test() {}
    public void test() {
        System.out.println("Hello World!");
    }
    public String _getClass() {
        return "Test";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
