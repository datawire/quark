package interfaces;

public class BazBar implements Bar<String>, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class interfaces_BazBar_ref = quark_ffi_signatures_md.Root.interfaces_BazBar_md;
    public BazBar() {}
    public void m1() {}
    public void m2(String arg) {}
    public void m3(java.util.ArrayList<String> args) {}
    public String _getClass() {
        return "interfaces.BazBar";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
