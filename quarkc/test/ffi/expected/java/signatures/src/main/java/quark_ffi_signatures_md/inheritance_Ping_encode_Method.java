package quark_ffi_signatures_md;

public class inheritance_Ping_encode_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public inheritance_Ping_encode_Method() {
        super("quark.String", "encode", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        inheritance.Ping obj = (inheritance.Ping) (object);
        return (obj).encode();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
