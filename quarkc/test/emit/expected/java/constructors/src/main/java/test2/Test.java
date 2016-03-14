package test2;

public class Test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class test2_Test_ref = constructors_md.Root.test2_Test_md;
    public String name;
    public Test(String name) {
        (this).name = name;
    }
    public String _getClass() {
        return "test2.Test";
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
