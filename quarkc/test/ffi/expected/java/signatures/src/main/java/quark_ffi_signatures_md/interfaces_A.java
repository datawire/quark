package quark_ffi_signatures_md;

public class interfaces_A extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new interfaces_A();
    public interfaces_A() {
        super("interfaces.A");
        (this).name = "interfaces.A";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new interfaces_A_foo_Method(), new interfaces_A_bar_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return null;
    }
    public Boolean isAbstract() {
        return true;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
