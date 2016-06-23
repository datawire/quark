package quark_ffi_signatures_md;

public class statics_Foo extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new statics_Foo();
    public statics_Foo() {
        super("statics.Foo");
        (this).name = "statics.Foo";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.int", "count")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new statics_Foo_setCount_Method(), new statics_Foo_getCount_Method(), new statics_Foo_test1_Method(), new statics_Foo_test2_Method(), new statics_Foo_test3_Method(), new statics_Foo_test4_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.OBJECT}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new statics.Foo();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
