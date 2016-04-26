package quark_ffi_signatures_md;

public class interfaces_T4 extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new interfaces_T4();
    public interfaces_T4() {
        super("interfaces.T4");
        (this).name = "interfaces.T4";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new interfaces_T4_foo_Method(), new interfaces_T4_bar_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new interfaces.T4();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
