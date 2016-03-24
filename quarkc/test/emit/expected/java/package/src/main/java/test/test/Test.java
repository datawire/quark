package test.test;

public class Test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class test_test_Test_ref = package_md.Root.test_test_Test_md;
    public Integer size;
    public Test() {}
    public void go() {
        do{System.out.println("TTGO!!");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "test.test.Test";
    }
    public Object _getField(String name) {
        if ((name)==("size") || ((Object)(name) != null && ((Object) (name)).equals("size"))) {
            return (this).size;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("size") || ((Object)(name) != null && ((Object) (name)).equals("size"))) {
            (this).size = (Integer) (value);
        }
    }
}
