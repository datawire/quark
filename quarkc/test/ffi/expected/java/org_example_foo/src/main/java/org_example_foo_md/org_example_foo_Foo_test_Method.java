package org_example_foo_md;

public class org_example_foo_Foo_test_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public org_example_foo_Foo_test_Method() {
        super("quark.void", "test", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        org.example.foo.Foo obj = (org.example.foo.Foo) (object);
        (obj).test();
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
