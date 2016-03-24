package static_md;

public class static_Foo extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new static_Foo();
    public static_Foo() {
        super("static.Foo");
        (this).name = "static.Foo";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.int", "count")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new static_Foo_setCount_Method(), new static_Foo_getCount_Method(), new static_Foo_test1_Method(), new static_Foo_test2_Method(), new static_Foo_test3_Method(), new static_Foo_test4_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new static_.Foo();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
