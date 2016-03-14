package quark.concurrent;

/**
 * internal
 */
public class TLSContextInitializer implements io.datawire.quark.runtime.TLSInitializer<Context>, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_concurrent_TLSContextInitializer_ref = quark_md.Root.quark_concurrent_TLSContextInitializer_md;
    public TLSContextInitializer() {}
    public Context getValue() {
        return new Context(Context.global());
    }
    public String _getClass() {
        return "quark.concurrent.TLSContextInitializer";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
