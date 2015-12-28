package static__lib;

public class Foo implements io.datawire.quark.runtime.QObject {
    public static Integer count = 0;
    public Foo() {
        Foo.count = (Foo.count) + (1);
    }
    public static void setCount(Integer n) {
        Foo.count = n;
    }
    public static Integer getCount() {
        return Foo.count;
    }
    public void test1() {
        Foo.count = (Foo.count) + (1);
    }
    public void test2() {
        Foo.count = (Foo.count) + (1);
    }
    public void test3() {
        Foo.count = (Foo.count) + (1);
    }
    public void test4() {
        Foo.setCount((Foo.getCount()) + (1));
    }
    public String _getClass() {
        return "Foo";
    }
    public Object _getField(String name) {
        if ((name)==("count") || ((name) != null && (name).equals("count"))) {
            return Foo.count;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("count") || ((name) != null && (name).equals("count"))) {
            Foo.count = (Integer) (value);
        }
    }
}
