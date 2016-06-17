package quark_ffi_signatures_md;

public class inheritance_t2_X_quark_int_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritance_t2_X_quark_int_();
    public inheritance_t2_X_quark_int_() {
        super("inheritance.t2.X<quark.int>");
        (this).name = "inheritance.t2.X";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.OBJECT}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritance.t2.X<Integer>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
