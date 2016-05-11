package test.subtest;

public class Test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class test_subtest_Test_ref = package_md.Root.test_subtest_Test_md;
    public Integer size;
    public Test() {}
    public void go() {}
    public String _getClass() {
        return "test.subtest.Test";
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
