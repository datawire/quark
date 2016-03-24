package quark_md;

public class quark_concurrent_TLSContextInitializer extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_TLSContextInitializer();
    public quark_concurrent_TLSContextInitializer() {
        super("quark.concurrent.TLSContextInitializer");
        (this).name = "quark.concurrent.TLSContextInitializer";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_TLSContextInitializer_getValue_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.TLSContextInitializer();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
