package quark_ffi_signatures_md;

public class interfaces_BazBar extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new interfaces_BazBar();
    public interfaces_BazBar() {
        super("interfaces.BazBar");
        (this).name = "interfaces.BazBar";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new interfaces_BazBar_m1_Method(), new interfaces_BazBar_m2_Method(), new interfaces_BazBar_m3_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new interfaces.BazBar();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
