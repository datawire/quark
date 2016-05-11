package quark_ffi_signatures_md;

public class inheritance_use_before_def_Bar_go_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public inheritance_use_before_def_Bar_go_Method() {
        super("quark.void", "go", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        inheritance.use_before_def.Bar obj = (inheritance.use_before_def.Bar) (object);
        (obj).go();
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
