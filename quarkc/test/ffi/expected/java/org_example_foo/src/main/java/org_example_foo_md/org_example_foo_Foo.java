package org_example_foo_md;

public class org_example_foo_Foo extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new org_example_foo_Foo();
    public org_example_foo_Foo() {
        super("org.example.foo.Foo");
        (this).name = "org.example.foo.Foo";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new org_example_foo_Foo_test_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.OBJECT}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new org.example.foo.Foo();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
