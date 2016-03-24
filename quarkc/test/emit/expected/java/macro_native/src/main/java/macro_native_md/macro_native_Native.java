package macro_native_md;

public class macro_native_Native extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new macro_native_Native();
    public macro_native_Native() {
        super("macro_native.Native");
        (this).name = "macro_native.Native";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new macro_native_Native_test_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new macro_native.Native();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
