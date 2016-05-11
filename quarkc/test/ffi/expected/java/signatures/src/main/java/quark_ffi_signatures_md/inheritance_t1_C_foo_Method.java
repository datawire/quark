package quark_ffi_signatures_md;

public class inheritance_t1_C_foo_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public inheritance_t1_C_foo_Method() {
        super("quark.void", "foo", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        inheritance.t1.C obj = (inheritance.t1.C) (object);
        (obj).foo();
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
