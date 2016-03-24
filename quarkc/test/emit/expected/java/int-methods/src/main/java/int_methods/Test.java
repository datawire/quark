package int_methods;

public class Test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class int_methods_Test_ref = int_methods_md.Root.int_methods_Test_md;
    public Test() {}
    public void test() {
        Integer x = 1;
        Integer y = 2;
        Integer z = (((x) + (y)) - (3)) * (4);
        do{System.out.println(z);System.out.flush();}while(false);
        Integer four = (2) + (2);
        do{System.out.println(four);System.out.flush();}while(false);
    }
    public String _getClass() {
        return "int_methods.Test";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
