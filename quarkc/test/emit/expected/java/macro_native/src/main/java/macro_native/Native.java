package macro_native;

public class Native implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class macro_native_Native_ref = macro_native_md.Root.macro_native_Native_md;
    public Native() {}
    public void test() {
        Native n1 = new Native();
        Native n2 = new Native();
        Native n1n2 = new Native();
        Native n3 = n1n2;
    }
    public String _getClass() {
        return "macro_native.Native";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
