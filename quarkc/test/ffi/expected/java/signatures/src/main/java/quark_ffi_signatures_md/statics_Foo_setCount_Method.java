package quark_ffi_signatures_md;

public class statics_Foo_setCount_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public statics_Foo_setCount_Method() {
        super("quark.void", "setCount", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        statics.Foo obj = (statics.Foo) (object);
        statics.Foo.setCount((Integer) ((args).get(0)));
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
