package test;

/**
 * This is a package.
 *
 * It has multiple lines of docs.
 * Hurrah!
 */
public class Test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class test_Test_ref = package_md.Root.test_Test_md;
    public String name;
    public Test() {}
    public void go() {}
    public String _getClass() {
        return "test.Test";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
