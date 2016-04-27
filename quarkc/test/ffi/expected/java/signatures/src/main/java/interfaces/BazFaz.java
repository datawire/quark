package interfaces;

public class BazFaz<T> implements Bar<T>, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class interfaces_BazFaz_quark_Object__ref = quark_ffi_signatures_md.Root.interfaces_BazFaz_quark_Object__md;
    public BazFaz() {}
    public void m1() {}
    public void m2(T arg) {}
    public void m3(java.util.ArrayList<T> args) {}
    public String _getClass() {
        return "interfaces.BazFaz<quark.Object>";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
