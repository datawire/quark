package quark_ffi_signatures_md;

public class inheritance_Pong extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritance_Pong();
    public inheritance_Pong() {
        super("inheritance.Pong");
        (this).name = "inheritance.Pong";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new inheritance_Pong_toString_Method(), new inheritance_Pong_encode_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritance.Pong();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
