package statics;

public class Foo implements io.datawire.quark.runtime.QObject {
    public static Integer count;
    public static quark.reflect.Class statics_Foo_ref = quark_ffi_signatures_md.Root.statics_Foo_md;
    public Foo() {}
    public static void setCount(Integer n) {}
    public static Integer getCount() {
        return 0;
    }
    public void test1() {}
    public void test2() {}
    public void test3() {}
    public void test4() {}
    public String _getClass() {
        return "statics.Foo";
    }
    public Object _getField(String name) {
        if ((name)==("count") || ((Object)(name) != null && ((Object) (name)).equals("count"))) {
            return Foo.count;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("count") || ((Object)(name) != null && ((Object) (name)).equals("count"))) {
            Foo.count = (Integer) (value);
        }
    }
}
