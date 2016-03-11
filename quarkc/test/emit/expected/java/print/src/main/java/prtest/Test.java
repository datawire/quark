package prtest;

public class Test implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class prtest_Test_ref = prtest_md.Root.prtest_Test_md;
    public Test() {}
    public void test() {
        do{System.out.println("Hello World!");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "prtest.Test";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
