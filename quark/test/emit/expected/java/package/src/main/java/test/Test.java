package test;

public class Test implements io.datawire.quark.runtime.QObject {
    public static reflect.Class test_Test_ref = package_md.Root.test_Test_md;
    public String name;
    public Test() {}
    public void go() {
        do{System.out.println("TGO!");System.out.flush();}while(false);
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
